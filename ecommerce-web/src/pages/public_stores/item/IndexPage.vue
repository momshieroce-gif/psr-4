<template>
  <div class="store-page-container">
    <!-- Store Header -->
    <div class="store-header q-mb-lg">
          <BreadCrumbsWrapper :bread-crumbs="[
            {
              name: store.name,
              path: `/public_stores/${route.params.id}`,
            },
            {
              name: item.name || '',
              path: '',
            },
          ]" />
        </div>

    <div class="row q-col-gutter-md" v-if="item">
      <div class="col-lg-5 col-md-5 col-xs-12">
        <q-card class="product-image-card q-mt-sm" flat bordered>
          <q-carousel v-model="slide" vertical transition-prev="slide-down" transition-next="slide-up" swipeable
            animated control-color="primary" navigation-icon="radio_button_unchecked" navigation padding height="400px"
            class="rounded-borders">
          <q-carousel-slide :name="index" class="column no-wrap flex-center" v-for="(image, index) in item.images"
            :key="image.id">
              <div class="q-pa-md text-center full-width full-height flex flex-center">
                <img
                  :src="image.path_url"
                  class="product-image"
                  :alt="item.name"
                  @click="openZoomModal(image.path_url)"
                />
            </div>
          </q-carousel-slide>
        </q-carousel>
        </q-card>
      </div>
      <q-dialog v-model="isZoomModalOpen" maximized>
        <q-card class="zoom-modal-card">
          <q-card-section class="zoom-modal-header">
            <q-space />
            <q-btn icon="close" flat round dense @click="closeZoomModal" />
          </q-card-section>
          <q-separator />
          <q-card-section class="zoom-modal-content">
            <div
              class="zoom-modal-container"
              :class="{ 'is-zoomed': isZoomed, 'is-dragging': isDragging }"
              @click="toggleZoom"
              @mousedown.prevent="onDragStart"
              @mousemove.prevent="onDragMove"
              @mouseup="onDragEnd"
              @mouseleave="onDragEnd"
              @touchstart.passive="onTouchStart"
              @touchmove.passive="onTouchMove"
              @touchend="onDragEnd"
            >
              <img
                v-if="zoomImageUrl"
                :src="zoomImageUrl"
                class="zoom-modal-image"
                :class="{ 'is-zoomed': isZoomed }"
                :style="zoomStyle"
                :alt="item.name"
                draggable="false"
              />
            </div>
          </q-card-section>
        </q-card>
      </q-dialog>

      <!-- Live call: Firebase (anonymous auth) + WebRTC — no third-party login -->
      <q-dialog
        v-model="agentCallDialogOpen"
        maximized
        transition-show="slide-up"
        transition-hide="slide-down"
        @show="onAgentCallDialogShow"
        @hide="onAgentCallDialogHide"
      >
        <q-card class="agent-call-dialog-card">
          <q-inner-loading :showing="agentCallWebRtcBusy" color="primary" label="Connecting camera and call room…" />
          <q-bar class="bg-primary text-white">
            <q-icon name="support_agent" class="q-mr-sm" />
            <div>Talk to Agent — Live call</div>
            <q-space />
            <q-btn flat dense round icon="close" v-close-popup />
          </q-bar>
          <q-card-section class="q-pa-md">
            <p class="text-body2 text-grey-8 q-mb-md">
              Allow camera and microphone. Your agent can join using the link below (no login required for you).
            </p>
            <div class="row q-col-gutter-sm q-mb-md">
              <div class="col-12 col-md-6">
                <div class="text-caption text-grey-7 q-mb-xs">You</div>
                <video ref="agentLocalVideoRef" class="agent-call-video" autoplay playsinline muted />
              </div>
              <div class="col-12 col-md-6">
                <div class="text-caption text-grey-7 q-mb-xs">Agent</div>
                <video ref="agentRemoteVideoRef" class="agent-call-video" autoplay playsinline />
              </div>
            </div>
            <div v-if="agentJoinUrl" class="text-caption q-mb-sm">
              <strong>Agent link:</strong> {{ agentJoinUrl }}
            </div>
          </q-card-section>
          <q-card-actions align="right" class="q-pa-md">
            <q-btn
              v-if="agentJoinUrl"
              flat
              color="primary"
              label="Copy agent link"
              icon="content_copy"
              @click="copyAgentJoinLink"
            />
          </q-card-actions>
        </q-card>
      </q-dialog>

      <div class="col-lg-7 col-md-7 col-xs-12">
        <q-card class="product-info-card q-mt-sm" flat bordered>
          <q-card-section>
            <div class="product-title text-h4 text-weight-bold q-mb-md">
            {{ item.name }}
          </div>

            <div class="product-description text-body1 text-grey-8 q-mb-lg">
              {{ item.description }}
            </div>

            <q-separator class="q-mb-lg" />

            <div class="q-mb-lg" v-if="units.length > 0">
              <div class="text-subtitle2 text-weight-medium q-mb-sm">Select Unit:</div>
              <div class="row q-col-gutter-sm">
                <div class="col-auto" v-for="unit in units" :key="unit.id">
                  <q-radio v-model="selectedUnit" :val="unit.id" :label="unit.name" color="primary" size="md"
                    class="unit-radio" />
                </div>
              </div>
          </div>

            <div class="price-section q-mb-lg">
              <div class="text-subtitle2 text-weight-medium q-mb-sm">Price:</div>
              <div class="price-display text-h5 text-weight-bold text-primary">
                {{ getPriceRange(filteredItemPrice) }}
        </div>
      </div>

            <q-separator class="q-mb-lg" />

            <div class="purchase-section">
              <div class="row q-col-gutter-md items-center">
                <div class="col-auto">
                  <div class="text-subtitle2 text-weight-medium q-mb-xs">Quantity:</div>
                  <q-input type="number" v-model="qty" outlined dense style="width: 120px" label="Qty" min="1"
                    :rules="[val => val >= 1 || 'Quantity must be at least 1']" class="quantity-input">
                    <template v-slot:prepend>
                      <q-btn icon="remove" size="sm" flat dense @click="qty > 1 ? qty-- : null" />
                    </template>
                    <template v-slot:append>
                      <q-btn icon="add" size="sm" flat dense @click="qty++" />
                    </template>
                  </q-input>
                </div>
                <div class="col">
                  <q-btn color="primary" @click="userAddCart" size="lg" unelevated class="full-width add-to-cart-btn"
                    icon="shopping_cart" label="Add to Cart" />
                </div>
                <div class="col">
                  <q-btn
                    color="primary"
                    @click="needToAssist"
                    size="lg"
                    unelevated
                    class="full-width add-to-cart-btn"
                    icon="support_agent"
                    label="Talk to Agent"
                    :loading="agentCallLoading"
                  />
                </div>
              </div>
            </div>
          </q-card-section>
        </q-card>
      </div>
    </div>
  </div>
</template>
<script setup lang="ts">
import { useRoute } from 'vue-router';
import { onMounted, ref, watch, computed, nextTick, type Ref } from 'vue';
import { show } from 'src/boot/axios-call';
import { getPriceRange } from 'src/boot/utilities';
import { useUserCartStore } from 'src/stores/userCart';
import { useQuasar } from 'quasar';
import BreadCrumbsWrapper from 'src/components/BreadCrumbsWrapper.vue';
import { startAgentCallSession } from 'src/helpers/agentCall';
import { isFirebaseConfigured } from 'src/helpers/firebaseCore';
import { startCallerSession } from 'src/helpers/webrtcFirebaseCall';

interface ItemPrice {
  id: number;
  unit_id: number;
  price: number;
  unit: {
    id: number;
    name: string;
  };
  online_price: number;
  selling_price: number;
}

interface Item {
  id?: number;
  optimus_id?: number;
  name?: string;
  description?: string;
  images?: Array<{ id: number; path_url: string }>;
  item_price?: ItemPrice[];
  store?: { optimus_id: number };
}

const $q = useQuasar();
const useUserCart = useUserCartStore();
const filteredItemPrice: Ref<Array<{ unit_id: number; price: number }>> = ref(
  []
);

const slide = ref(0);
const selectedUnit = ref<number | null>(null);
const qty = ref(1);
const isZoomModalOpen = ref(false);
const zoomImageUrl = ref('');
const isZoomed = ref(false);
const isDragging = ref(false);
const dragMoved = ref(false);
const zoomScale = ref(2);
const pan = ref({ x: 0, y: 0 });
const dragStart = ref({ x: 0, y: 0 });
const panStart = ref({ x: 0, y: 0 });
const store = ref({
  name: '',
  logo: { path_url: '' },
  default_address: {
    complete_address: '',
  },
});

const route = useRoute();

const agentCallLoading = ref(false);
const agentCallWebRtcBusy = ref(false);
const agentCallDialogOpen = ref(false);
const agentRoomId = ref('');
const agentJoinUrl = ref('');
const agentLocalVideoRef = ref<HTMLVideoElement | null>(null);
const agentRemoteVideoRef = ref<HTMLVideoElement | null>(null);
let agentCallHangUp: (() => void) | null = null;

const copyAgentJoinLink = async () => {
  if (!agentJoinUrl.value) return;
  try {
    await navigator.clipboard.writeText(agentJoinUrl.value);
    $q.notify({ message: 'Agent link copied.', type: 'positive' });
  } catch {
    $q.notify({ message: agentJoinUrl.value, type: 'info', timeout: 8000 });
  }
};

/** QDialog mounts dialog content on @show — refs are often null on first nextTick() only. */
const onAgentCallDialogShow = async () => {
  agentCallWebRtcBusy.value = true;
  try {
    await nextTick();
    let local = agentLocalVideoRef.value;
    let remote = agentRemoteVideoRef.value;
    if (!local || !remote) {
      await new Promise((r) => setTimeout(r, 100));
      local = agentLocalVideoRef.value;
      remote = agentRemoteVideoRef.value;
    }
    if (!agentRoomId.value || !local || !remote) {
      $q.notify({
        message: 'Video not ready. Close and try “Talk to Agent” again.',
        type: 'negative',
      });
      return;
    }
    agentCallHangUp?.();
    agentCallHangUp = null;
    try {
      const handles = await startCallerSession(agentRoomId.value, local, remote, (msg) => {
        $q.notify({ message: msg, type: 'negative', timeout: 8000 });
      });
      agentCallHangUp = handles.hangUp;
    } catch (e: unknown) {
      const msg =
        e instanceof Error
          ? e.message
          : 'Could not start the call. Check camera/microphone permissions and try again.';
      $q.notify({ message: msg, type: 'negative', timeout: 8000 });
    }
  } finally {
    agentCallWebRtcBusy.value = false;
  }
};

const onAgentCallDialogHide = () => {
  agentCallWebRtcBusy.value = false;
  agentCallHangUp?.();
  agentCallHangUp = null;
  agentRoomId.value = '';
  agentJoinUrl.value = '';
};

const needToAssist = async () => {
  if (!isFirebaseConfigured()) {
    $q.notify({
      message: 'Live call requires Firebase. Add VITE_FIREBASE_* keys in .env and enable Anonymous sign-in.',
      type: 'negative',
      timeout: 6000,
    });
    return;
  }
  agentCallLoading.value = true;
  try {
    const { roomId, joinUrl } = startAgentCallSession({
      storeOptimusId: route.params.id as string,
      itemOptimusId: route.params.item_id as string,
      storeName: store.value.name,
      itemName: item.value.name,
    });
    agentRoomId.value = roomId;
    agentJoinUrl.value = joinUrl;
    agentCallDialogOpen.value = true;
    $q.notify({
      message:
        'Live call opened. Allow camera/microphone when prompted. Copy the agent link for your team to join.',
      type: 'positive',
      timeout: 5000,
    });
  } catch {
    $q.notify({
      message: 'Could not start the call. Please try again.',
      type: 'negative',
    });
  } finally {
    agentCallLoading.value = false;
  }
};

const showStore = async () => {
  store.value = await show({
    message: 'Getting item...',
    entity: 'public_stores',
    optimus_id: Number(route.params.id),
    query: {
      columns: 'id,name',
    },
  });
};

const item = ref<Item>({});
const getItem = async () => {
  item.value = await show<Item>({
    message: 'Getting item...',
    entity: 'public_store_items',
    optimus_id: Number(route.params.item_id),
    query: {
      with: 'itemPrice.unit,store',
      columns: 'id,name',
    },
  });
  getUnits();
  filteredItemPrice.value = item.value.item_price || [];
};

onMounted(() => {
  showStore();
  getItem();

});

const units = ref<Array<{ id: number; name: string }>>([]);
const getUnits = () => {
  const itemPrice = item.value?.item_price;

  if (!itemPrice) {
    units.value = [];
    return;
  }

  units.value = itemPrice.map((v) => v.unit);

  if (units.value.length === 1) {
    selectedUnit.value = units.value[0].id;
  }

};

watch(selectedUnit, (newValue) => {
  if (newValue !== null && item.value.item_price) {
    const result = item.value.item_price.find(
      (v) => v.unit_id === newValue
    );
    filteredItemPrice.value = result ? [result] : [];
  }
});

watch(slide, () => {
  resetZoom();
});

watch(qty, (newValue) => {
  if (newValue < 1) {
    qty.value = 1;
  }
});

const userAddCart = () => {
  if (!item.value.optimus_id || !item.value.name || !selectedUnit.value) {
    $q.notify({
      message: 'Please select a unit before adding to cart.',
      type: 'negative',
    });
    return;
  }
  // Transform item_price to match CartItem structure
  const transformedItemPrice = (item.value.item_price || []).map((price) => ({
    unit_id: price.unit_id,
    online_price: price.online_price,
    price: price.selling_price,
    unit: price.unit,
  }));

  const cartItem = {
    id: item.value.id || 0,
    optimus_id: item.value.optimus_id,
    name: item.value.name,
      count: qty.value,
    store_id: item.value.store?.optimus_id || Number(route.params.id),
    item_price: transformedItemPrice,
      variations: [
        {
          count: qty.value,
          unit: selectedUnit.value,
        },
      ],
    primary_img: {
      path_url: item.value.images && item.value.images.length > 0
        ? item.value.images[0].path_url
        : '',
    },
    store: {
      optimus_id: item.value.store?.optimus_id || Number(route.params.id),
    },
  };
  useUserCart.addQty(cartItem);

  $q.notify({
    message: 'You have successfully added the item to the cart.',
    type: 'positive',
  });
};

const resetZoom = () => {
  isZoomed.value = false;
  isDragging.value = false;
  dragMoved.value = false;
  pan.value = { x: 0, y: 0 };
};

const openZoomModal = (url: string) => {
  zoomImageUrl.value = url;
  isZoomModalOpen.value = true;
  isZoomed.value = true;
  pan.value = { x: 0, y: 0 };
};

const closeZoomModal = () => {
  isZoomModalOpen.value = false;
  zoomImageUrl.value = '';
  resetZoom();
};

const toggleZoom = () => {
  if (isDragging.value || dragMoved.value) {
    return;
  }
  if (isZoomed.value) {
    resetZoom();
  } else {
    isZoomed.value = true;
    pan.value = { x: 0, y: 0 };
  }
};

const getPointer = (event: MouseEvent | TouchEvent) => {
  if ('touches' in event && event.touches.length > 0) {
    return { x: event.touches[0].clientX, y: event.touches[0].clientY };
  }
  const mouseEvent = event as MouseEvent;
  return { x: mouseEvent.clientX, y: mouseEvent.clientY };
};

const clampPan = (container: HTMLElement, image: HTMLImageElement, nextX: number, nextY: number) => {
  const containerWidth = container.clientWidth;
  const containerHeight = container.clientHeight;
  const naturalWidth = image.naturalWidth || image.clientWidth;
  const naturalHeight = image.naturalHeight || image.clientHeight;
  const imageRatio = naturalWidth / naturalHeight;
  const containerRatio = containerWidth / containerHeight;
  let baseWidth = containerWidth;
  let baseHeight = containerHeight;

  if (imageRatio > containerRatio) {
    baseHeight = containerWidth / imageRatio;
  } else {
    baseWidth = containerHeight * imageRatio;
  }

  const scaledWidth = baseWidth * zoomScale.value;
  const scaledHeight = baseHeight * zoomScale.value;
  const maxX = Math.max(0, (scaledWidth - containerWidth) / 2);
  const maxY = Math.max(0, (scaledHeight - containerHeight) / 2);

  return {
    x: Math.min(maxX, Math.max(-maxX, nextX)),
    y: Math.min(maxY, Math.max(-maxY, nextY)),
  };
};

const onDragStart = (event: MouseEvent) => {
  if (!isZoomed.value) {
    return;
  }
  const pointer = getPointer(event);
  isDragging.value = true;
  dragMoved.value = false;
  dragStart.value = { x: pointer.x, y: pointer.y };
  panStart.value = { x: pan.value.x, y: pan.value.y };
};

const onDragMove = (event: MouseEvent) => {
  if (!isZoomed.value || !isDragging.value) {
    return;
  }
  const container = event.currentTarget as HTMLElement;
  const image = container.querySelector('img');
  if (!image) {
    return;
  }
  const pointer = getPointer(event);
  const nextX = panStart.value.x + (pointer.x - dragStart.value.x);
  const nextY = panStart.value.y + (pointer.y - dragStart.value.y);
  if (Math.abs(pointer.x - dragStart.value.x) > 4 || Math.abs(pointer.y - dragStart.value.y) > 4) {
    dragMoved.value = true;
  }
  pan.value = clampPan(container, image, nextX, nextY);
};

const onTouchStart = (event: TouchEvent) => {
  if (!isZoomed.value) {
    return;
  }
  const pointer = getPointer(event);
  isDragging.value = true;
  dragMoved.value = false;
  dragStart.value = { x: pointer.x, y: pointer.y };
  panStart.value = { x: pan.value.x, y: pan.value.y };
};

const onTouchMove = (event: TouchEvent) => {
  if (!isZoomed.value || !isDragging.value) {
    return;
  }
  const container = event.currentTarget as HTMLElement;
  const image = container.querySelector('img');
  if (!image) {
    return;
  }
  const pointer = getPointer(event);
  const nextX = panStart.value.x + (pointer.x - dragStart.value.x);
  const nextY = panStart.value.y + (pointer.y - dragStart.value.y);
  if (Math.abs(pointer.x - dragStart.value.x) > 4 || Math.abs(pointer.y - dragStart.value.y) > 4) {
    dragMoved.value = true;
  }
  pan.value = clampPan(container, image, nextX, nextY);
};

const onDragEnd = () => {
  isDragging.value = false;
  if (dragMoved.value) {
    setTimeout(() => {
      dragMoved.value = false;
    }, 0);
  }
};

const zoomStyle = computed(() => {
  if (!isZoomed.value) {
    return {};
  }
  return {
    transform: `translate(${pan.value.x}px, ${pan.value.y}px) scale(${zoomScale.value})`,
    transformOrigin: 'center center',
  };
});

</script>

<style scoped lang="scss">
.store-page-container {
  max-width: 1400px;
  margin: 0 auto;
  padding: 16px;
}

.store-header {
  padding: 16px 0;
}

.product-image-card {
  border-radius: 12px;
  overflow: hidden;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);

  .q-carousel {
    background: #fafafa;
  }
}

.product-image {
  width: 100%;
  max-width: 100%;
  height: auto;
  max-height: 380px;
  object-fit: contain;
  border-radius: 8px;
  cursor: zoom-in;
}

.zoom-modal-card {
  height: 100%;
  border-radius: 0;
}

.zoom-modal-header {
  display: flex;
  align-items: center;
  justify-content: flex-end;
  padding: 12px 16px;
}

.zoom-modal-content {
  height: calc(100% - 56px);
  padding: 0;
}

.zoom-modal-container {
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
  cursor: zoom-in;
  user-select: none;
  background: #000;
}

.zoom-modal-container.is-zoomed {
  cursor: grab;
}

.zoom-modal-container.is-dragging {
  cursor: grabbing;
}

.zoom-modal-image {
  max-width: 100%;
  max-height: 100%;
  object-fit: contain;
  transition: transform 0.2s ease;
}

.zoom-modal-image.is-zoomed {
  transition: none;
}

.product-info-card {
  border-radius: 12px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  min-height: 400px;
}

.product-title {
  line-height: 1.3;
  color: #1a1a1a;
}

.product-description {
  line-height: 1.6;
  white-space: pre-wrap;
}

.unit-radio {
  padding: 8px 16px;
  border-radius: 8px;
  background: #f5f5f5;
  transition: all 0.3s ease;

  &:hover {
    background: #eeeeee;
  }
}

.price-section {
  padding: 16px;
  background: #f8f9fa;
  border-radius: 8px;
  border-left: 4px solid var(--q-primary);
}

.price-display {
  letter-spacing: 0.5px;
}

.quantity-input {
  .q-field__control {
    border-radius: 8px;
  }
}

.add-to-cart-btn {
  height: 48px;
  font-weight: 600;
  letter-spacing: 0.5px;
  border-radius: 8px;
  transition: all 0.3s ease;

  &:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
  }
}

.purchase-section {
  padding-top: 8px;
}

.agent-call-dialog-card {
  width: 100%;
  max-width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
}

.agent-call-video {
  width: 100%;
  max-height: 42vh;
  min-height: 200px;
  background: #1a1a1a;
  border-radius: 8px;
  object-fit: cover;
}

@media (max-width: 600px) {
  .product-image-card .q-carousel {
    height: 300px !important;
  }

  .product-title {
    font-size: 1.5rem;
  }

  .price-display {
    font-size: 1.25rem;
  }

  .add-to-cart-btn {
    margin-top: 16px;
  }
}
</style>
