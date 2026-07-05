import { getAuth, RecaptchaVerifier, signInWithPhoneNumber, type Auth, type ConfirmationResult } from 'firebase/auth';
import { getFirebaseApp } from './firebaseCore';

let recaptchaVerifier: RecaptchaVerifier | null = null;
let confirmationResult: ConfirmationResult | null = null;

export function getRecaptchaVerifier(auth: Auth, containerId: string): RecaptchaVerifier {
  if (!recaptchaVerifier) {
    recaptchaVerifier = new RecaptchaVerifier(auth, containerId, {
      size: 'invisible',
    });
  }
  return recaptchaVerifier;
}

export async function sendOTP(phoneNumber: string, containerId = 'recaptcha-container'): Promise<boolean> {
  const app = getFirebaseApp();
  if (!app) {
    console.error('Firebase not configured');
    return false;
  }

  const auth = getAuth(app);

  try {
    const verifier = getRecaptchaVerifier(auth, containerId);
    confirmationResult = await signInWithPhoneNumber(auth, phoneNumber, verifier);
    return true;
  } catch (error: unknown) {
    console.error('Error sending OTP:', error);
    // Reset verifier on error
    if (recaptchaVerifier) {
      recaptchaVerifier.clear();
      recaptchaVerifier = null;
    }
    return false;
  }
}

export async function verifyOTP(otp: string): Promise<boolean> {
  if (!confirmationResult) {
    console.error('No confirmation result available');
    return false;
  }

  try {
    const result = await confirmationResult.confirm(otp);
    const user = result.user;
    if (user) {
      // Clean up after successful verification
      if (recaptchaVerifier) {
        recaptchaVerifier.clear();
        recaptchaVerifier = null;
      }
      confirmationResult = null;
      return true;
    }
    return false;
  } catch (error: unknown) {
    console.error('Error verifying OTP:', error);
    return false;
  }
}

export function clearRecaptcha(): void {
  if (recaptchaVerifier) {
    recaptchaVerifier.clear();
    recaptchaVerifier = null;
  }
  confirmationResult = null;
}
