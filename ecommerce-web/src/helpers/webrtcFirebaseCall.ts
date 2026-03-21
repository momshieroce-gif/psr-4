/**
 * WebRTC over Firebase (anonymous auth + Firestore signaling). No Jitsi / third-party login.
 * Uses native RTCPeerConnection (no simple-peer) so media works reliably in Vite/browser.
 */
import { getAuth, signInAnonymously, type AuthError } from 'firebase/auth';
import { getFirestore, doc, setDoc, onSnapshot, type Unsubscribe } from 'firebase/firestore';
import { getFirebaseApp } from './firebaseCore';

/**
 * STUN alone is not enough on many networks (symmetric NAT, firewalls).
 * These defaults include Metered "Open Relay" TURN (free tier for testing).
 * For production, set VITE_WEBRTC_ICE_SERVERS to your own TURN (Twilio, Metered, Cloudflare, etc.).
 * @see https://www.metered.ca/tools/openrelay/
 */
const DEFAULT_ICE_SERVERS: RTCIceServer[] = [
  { urls: 'stun:stun.l.google.com:19302' },
  { urls: 'stun:stun1.l.google.com:19302' },
  { urls: 'stun:global.stun.twilio.com:3478' },
  {
    urls: 'turn:openrelay.metered.ca:80',
    username: 'openrelayproject',
    credential: 'openrelayproject',
  },
  {
    urls: 'turn:openrelay.metered.ca:443',
    username: 'openrelayproject',
    credential: 'openrelayproject',
  },
  {
    urls: 'turn:openrelay.metered.ca:443?transport=tcp',
    username: 'openrelayproject',
    credential: 'openrelayproject',
  },
  {
    urls: 'turns:openrelay.metered.ca:443?transport=tcp',
    username: 'openrelayproject',
    credential: 'openrelayproject',
  },
];

function getRtcConfiguration(): RTCConfiguration {
  const raw = import.meta.env.VITE_WEBRTC_ICE_SERVERS as string | undefined;
  if (raw && raw.trim()) {
    try {
      const parsed = JSON.parse(raw) as unknown;
      if (Array.isArray(parsed) && parsed.length > 0) {
        return {
          iceServers: parsed as RTCIceServer[],
          iceCandidatePoolSize: 10,
        };
      }
    } catch {
      /* use defaults */
    }
  }
  return {
    iceServers: DEFAULT_ICE_SERVERS,
    iceCandidatePoolSize: 10,
  };
}

export async function ensureFirebaseAnonymousAuth(): Promise<void> {
  const app = getFirebaseApp();
  if (!app) {
    throw new Error('Firebase is not configured');
  }
  const auth = getAuth(app);
  if (!auth.currentUser) {
    try {
      await signInAnonymously(auth);
    } catch (e: unknown) {
      const err = e as AuthError;
      const code = err?.code;
      if (code === 'auth/operation-not-allowed') {
        throw new Error(
          'Anonymous sign-in is turned off. In Firebase Console: Authentication → Sign-in method → enable Anonymous.'
        );
      }
      if (code === 'auth/admin-restricted-operation') {
        throw new Error(
          'This Firebase project blocks Anonymous sign-in. Enable Anonymous under Authentication → Sign-in method.'
        );
      }
      if (code === 'auth/configuration-not-found') {
        throw new Error(
          'Firebase Authentication is not enabled for this project. In Firebase Console open Authentication and click Get started, then enable Anonymous under Sign-in method. If it still fails, in Google Cloud Console enable the Identity Toolkit API for this project.'
        );
      }
      throw new Error(err?.message || 'Firebase anonymous sign-in failed.');
    }
  }
}

export type WebRtcCallHandles = {
  hangUp: () => void;
};

/** Maps DOMException from getUserMedia to a clear message for users. */
function userFriendlyMediaError(e: unknown): string {
  const dom = e as DOMException;
  const name = dom?.name;
  const byName: Record<string, string> = {
    NotAllowedError:
      'Camera/microphone was blocked. Use the lock or site settings in the address bar to allow access, then try again.',
    PermissionDeniedError:
      'Camera/microphone permission was denied. Allow access for this site and try again.',
    NotFoundError: 'No camera or microphone was found. Connect a device or try another browser.',
    DevicesNotFoundError: 'No camera or microphone was found.',
    NotReadableError:
      'Camera or microphone is busy or unavailable (another app may be using it). Close other apps and retry.',
    TrackStartError: 'Could not start the camera or microphone hardware.',
    OverconstrainedError: 'Your camera does not support the required settings.',
    SecurityError: 'Camera/microphone needs a secure page (HTTPS) or localhost — not plain HTTP on a network IP.',
    AbortError: 'Access was cancelled.',
  };
  if (name && byName[name]) {
    return byName[name];
  }
  return dom?.message || 'Could not access camera or microphone.';
}

/**
 * Tries full AV first, then audio-only, then video-only so calls can work without a camera or without a mic.
 */
async function acquireLocalMediaStream(): Promise<MediaStream> {
  if (typeof navigator === 'undefined' || !navigator.mediaDevices?.getUserMedia) {
    throw new Error('This browser does not support camera/microphone (getUserMedia).');
  }
  try {
    return await navigator.mediaDevices.getUserMedia({ video: true, audio: true });
  } catch (e) {
    const name = (e as DOMException)?.name;
    if (name === 'NotAllowedError' || name === 'PermissionDeniedError' || name === 'SecurityError') {
      throw new Error(userFriendlyMediaError(e));
    }
    try {
      return await navigator.mediaDevices.getUserMedia({ video: false, audio: true });
    } catch {
      try {
        return await navigator.mediaDevices.getUserMedia({ video: true, audio: false });
      } catch (e2) {
        throw new Error(userFriendlyMediaError(e2 instanceof Error && (e2 as DOMException).name ? e2 : e));
      }
    }
  }
}

/** Attach MediaStream and start playback (needed in some browsers / incognito for remote video). */
function attachVideoStream(el: HTMLVideoElement, stream: MediaStream | null) {
  el.srcObject = stream;
  if (stream) {
    void el.play().catch(() => undefined);
  }
}

function waitIceGatheringComplete(pc: RTCPeerConnection, timeoutMs: number): Promise<void> {
  if (pc.iceGatheringState === 'complete') {
    return Promise.resolve();
  }
  return new Promise((resolve) => {
    const done = () => {
      clearTimeout(timer);
      pc.removeEventListener('icegatheringstatechange', onState);
      resolve();
    };
    const timer = setTimeout(done, timeoutMs);
    const onState = () => {
      if (pc.iceGatheringState === 'complete') {
        done();
      }
    };
    pc.addEventListener('icegatheringstatechange', onState);
  });
}

function descToJson(d: RTCSessionDescription | null): string {
  if (!d?.type || !d.sdp) {
    throw new Error('Missing local SDP');
  }
  return JSON.stringify({ type: d.type, sdp: d.sdp });
}

/**
 * Caller (customer): creates offer, waits for answer written by agent on /join-call page.
 */
export async function startCallerSession(
  roomId: string,
  localVideoEl: HTMLVideoElement,
  remoteVideoEl: HTMLVideoElement,
  onError: (msg: string) => void
): Promise<WebRtcCallHandles> {
  await ensureFirebaseAnonymousAuth();
  const app = getFirebaseApp();
  if (!app) {
    throw new Error('Firebase is not configured');
  }
  const db = getFirestore(app);
  const roomRef = doc(db, 'webrtc_calls', roomId);

  let stream: MediaStream | null = null;
  let pc: RTCPeerConnection | null = null;
  let unsubAnswer: Unsubscribe | null = null;
  let answerHandled = false;

  try {
    stream = await acquireLocalMediaStream();
    attachVideoStream(localVideoEl, stream);

    pc = new RTCPeerConnection(getRtcConfiguration());
    pc.ontrack = (ev) => {
      const rs = ev.streams[0];
      if (rs) {
        attachVideoStream(remoteVideoEl, rs);
      }
    };
    pc.oniceconnectionstatechange = () => {
      if (pc?.iceConnectionState === 'failed') {
        onError(
          'WebRTC connection failed. If this keeps happening, try another network or add a TURN server.'
        );
      }
    };

    for (const t of stream.getTracks()) {
      pc.addTrack(t, stream);
    }

    const offer = await pc.createOffer();
    await pc.setLocalDescription(offer);
    await waitIceGatheringComplete(pc, 15000);
    await setDoc(
      roomRef,
      {
        offer: descToJson(pc.localDescription),
        status: 'ringing',
        updatedAt: new Date().toISOString(),
      },
      { merge: true }
    );

    unsubAnswer = onSnapshot(roomRef, (snap) => {
      const d = snap.data();
      if (!d?.answer || answerHandled || !pc) {
        return;
      }
      answerHandled = true;
      void (async () => {
        try {
          const init = JSON.parse(d.answer as string) as RTCSessionDescriptionInit;
          if (!init?.sdp) {
            throw new Error('Invalid answer');
          }
          await pc!.setRemoteDescription(init);
        } catch {
          onError('Invalid answer from peer');
        }
      })();
    });
  } catch (e) {
    const msg = e instanceof Error ? e.message : userFriendlyMediaError(e);
    onError(msg);
    throw e instanceof Error ? e : new Error(msg);
  }

  const hangUp = () => {
    unsubAnswer?.();
    unsubAnswer = null;
    pc?.close();
    pc = null;
    stream?.getTracks().forEach((t) => t.stop());
    stream = null;
    localVideoEl.srcObject = null;
    remoteVideoEl.srcObject = null;
  };

  return { hangUp };
}

/**
 * Callee (agent): reads offer from Firestore, posts answer.
 */
export async function startCalleeSession(
  roomId: string,
  localVideoEl: HTMLVideoElement,
  remoteVideoEl: HTMLVideoElement,
  onError: (msg: string) => void
): Promise<WebRtcCallHandles> {
  await ensureFirebaseAnonymousAuth();
  const app = getFirebaseApp();
  if (!app) {
    throw new Error('Firebase is not configured');
  }
  const db = getFirestore(app);
  const roomRef = doc(db, 'webrtc_calls', roomId);

  let stream: MediaStream | null = null;
  let pc: RTCPeerConnection | null = null;
  let unsubRoom: Unsubscribe | null = null;
  let offerHandled = false;

  try {
    stream = await acquireLocalMediaStream();
    attachVideoStream(localVideoEl, stream);

    unsubRoom = onSnapshot(roomRef, (snap) => {
      const d = snap.data();
      if (!d?.offer || offerHandled) {
        return;
      }
      offerHandled = true;
      void (async () => {
        try {
          const offerInit = JSON.parse(d.offer as string) as RTCSessionDescriptionInit;
          if (!offerInit?.sdp) {
            throw new Error('Invalid offer');
          }

          pc = new RTCPeerConnection(getRtcConfiguration());
          pc.ontrack = (ev) => {
            const rs = ev.streams[0];
            if (rs) {
              attachVideoStream(remoteVideoEl, rs);
            }
          };
          pc.oniceconnectionstatechange = () => {
            if (pc?.iceConnectionState === 'failed') {
              onError(
                'WebRTC connection failed. If this keeps happening, try another network or add a TURN server.'
              );
            }
          };

          for (const t of stream!.getTracks()) {
            pc.addTrack(t, stream!);
          }

          await pc.setRemoteDescription(offerInit);
          const answer = await pc.createAnswer();
          await pc.setLocalDescription(answer);
          await waitIceGatheringComplete(pc, 15000);

          await setDoc(
            roomRef,
            {
              answer: descToJson(pc.localDescription),
              status: 'connected',
              updatedAt: new Date().toISOString(),
            },
            { merge: true }
          );
        } catch (e) {
          onError(e instanceof Error ? e.message : 'Could not answer the call');
        }
      })();
    });
  } catch (e) {
    const msg = e instanceof Error ? e.message : userFriendlyMediaError(e);
    onError(msg);
    throw e instanceof Error ? e : new Error(msg);
  }

  const hangUp = () => {
    unsubRoom?.();
    unsubRoom = null;
    pc?.close();
    pc = null;
    stream?.getTracks().forEach((t) => t.stop());
    stream = null;
    localVideoEl.srcObject = null;
    remoteVideoEl.srcObject = null;
  };

  return { hangUp };
}
