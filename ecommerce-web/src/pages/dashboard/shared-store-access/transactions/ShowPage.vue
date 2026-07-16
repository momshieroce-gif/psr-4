<template>
  <div class="txn-show-page">

    <!-- Hero Header -->
    <div class="page-hero">
      <div class="hero-bg">
        <div class="hero-orb hero-orb--1"></div>
        <div class="hero-orb hero-orb--2"></div>
        <div class="hero-grid-pattern"></div>
      </div>
      <div class="hero-content">
        <div class="hero-top">
          <q-btn flat round dense icon="arrow_back" class="hero-back-btn" @click="$router.back()">
            <q-tooltip>Back to Store Access</q-tooltip>
          </q-btn>
          <div class="hero-icon-wrap">
            <q-icon name="receipt_long" size="26px" color="white" />
          </div>
          <div class="hero-text">
            <h1 class="hero-title">Transaction Details</h1>
            <p class="hero-subtitle">Reference #{{ localResult.reference_id }}</p>
          </div>
        </div>
        <div class="hero-status-wrap">
          <q-select v-model="selectedStatusId" :options="localStatuses" option-value="id"
            :option-label="statusOptionLabel" emit-value map-options outlined dense label="Update Status"
            :loading="statusUpdateLoading" :disable="localStatuses.length === 0" class="hero-status-select"
            @update:model-value="onStatusChange">
            <template v-slot:prepend>
              <q-icon name="flag" size="18px" />
            </template>
          </q-select>
        </div>
      </div>
    </div>

    <!-- Main Content -->
    <div class="txn-body">
      <!-- Transaction Detail -->
      <TransactionDetail :transaction="localResult" :show-map="true" :google-map-api-key="GOOGLE_MAP_API_KEY"
        :google-map-id="GOOGLE_MAP_ID" :format-currency="formatCurrency" :get-status-color="getStatusColor" />
    </div>
  </div>
</template>

<script setup lang="ts">
import { show, get, update } from 'src/boot/axios-call';
import { onMounted, ref } from 'vue';
import { useRoute } from 'vue-router';
import type { AxiosResponse } from 'axios';
import TransactionDetail from 'src/components/TransactionDetail.vue';
import { GOOGLE_MAP_API_KEY, GOOGLE_MAP_ID } from 'src/boot/constant';

interface OrderItem {
  id: number;
  transaction_id: number;
  store_id: number;
  item_id: number;
  optimus_item?: number;
  item_name: string;
  item_description?: string;
  unit_id: number;
  base_price: number;
  store_price: number;
  online_price: number;
  qty: number;
  subtotal: number;
  format_subtotal?: string;
  format_price?: string;
  store?: {
    id: number;
    name: string;
    optimus_id: number;
  };
}

interface TransactionDetail {
  id: number;
  user_id: number;
  reference_id: string;
  status_id: number;
  payment_method_id: number;
  receive_method_id: number;
  lat: number | null;
  lng: number | null;
  contact_number: string;
  delivery_charge: string;
  total: number;
  grand_total: number;
  created_at: string;
  payment_method?: { name: string };
  receive_method?: { name: string };
  status?: { label: string; name: string };
  orders?: OrderItem[];
}

/** Matches API `statuses` list (Status model: id, name, label, value). */
interface Status {
  id: number;
  name?: string;
  label?: string;
  value?: number;
  optimus_id?: number;
}

const route = useRoute();

const localResult = ref<TransactionDetail>({
  id: 0,
  user_id: 0,
  reference_id: '',
  status_id: 0,
  payment_method_id: 0,
  receive_method_id: 0,
  lat: null,
  lng: null,
  contact_number: '',
  delivery_charge: '0.00',
  total: 0,
  grand_total: 0,
  created_at: '',
  orders: []
});

const localStatuses = ref<Status[]>([]);
const selectedStatusId = ref<number | null>(null);
const statusUpdateLoading = ref(false);

function statusOptionLabel(opt: Status): string {
  return opt.label || opt.name || '';
}

onMounted(async () => {
  const result = await show<TransactionDetail>({
    message: 'Getting transaction...',
    entity: 'my-store-transactions',
    optimus_id: Number(route.params.transactionId),
    query: {
      with: 'paymentMethod,receiveMethod,status,orders.store',
    },
  });
  if (result) {
    localResult.value = result;
    selectedStatusId.value = result.status_id;
  }
  const statusesRes = (await get(
    { entity: 'statuses', query: { limit: 500 } },
    false
  )) as AxiosResponse<{ data: Status[] }> | undefined;
  if (statusesRes?.data?.data) {
    localStatuses.value = statusesRes.data.data;
  }
});

async function onStatusChange(newStatusId: number | null) {
  if (newStatusId == null || newStatusId === localResult.value.status_id) return;
  const previousId = localResult.value.status_id;
  const previousStatus = localResult.value.status;
  statusUpdateLoading.value = true;
  try {
    const updated = await update(
      {
        entity: 'my-store-transactions',
        optimus_id: Number(route.params.transactionId),
        data: { status_id: newStatusId },
      },
      true,
      true
    );
    if (updated) {
      localResult.value.status_id = newStatusId;
      const s = localStatuses.value.find((x) => x.id === newStatusId);
      if (s) {
        localResult.value.status = {
          label: s.label || s.name || '',
          name: s.name || '',
        };
      }
    } else {
      selectedStatusId.value = previousId;
      localResult.value.status = previousStatus;
    }
  } finally {
    statusUpdateLoading.value = false;
  }
}

const formatCurrency = (amount: number | string): string => {
  if (typeof amount === 'string') {
    return parseFloat(amount).toFixed(2);
  }
  return amount.toFixed(2);
};

const getStatusColor = (status: string | undefined): string => {
  if (!status) return 'grey';
  const statusLower = status.toLowerCase();
  if (statusLower.includes('completed') || statusLower.includes('delivered')) return 'positive';
  if (statusLower.includes('preparing') || statusLower.includes('processing')) return 'warning';
  if (statusLower.includes('cancelled') || statusLower.includes('rejected')) return 'negative';
  return 'primary';
};
</script>

<style scoped lang="scss">
$dark-base: #0f172a;
$dark-card: #1e293b;
$dark-surface: #334155;
$accent: #6366f1;
$accent-light: #818cf8;
$accent-green: #10b981;
$text-primary: #f1f5f9;
$text-secondary: #94a3b8;
$text-muted: #64748b;
$border-color: rgba(255, 255, 255, 0.08);

.txn-show-page {
  min-height: 100vh;
  background: $dark-base;
}

// ── Hero ──────────────────────────────────────────────────────────────────────
.page-hero {
  position: relative;
  padding: 32px 32px 28px;
  margin-bottom: 20px;
  overflow: hidden;
}

.hero-bg {
  position: absolute;
  inset: 0;
  background: linear-gradient(135deg, $dark-card 0%, darken($dark-base, 3%) 100%);
  z-index: 0;
}

.hero-orb {
  position: absolute;
  border-radius: 50%;
  filter: blur(60px);
  opacity: 0.4;

  &--1 {
    width: 240px;
    height: 240px;
    top: -60px;
    right: -40px;
    background: $accent;
  }

  &--2 {
    width: 180px;
    height: 180px;
    bottom: -50px;
    left: 10%;
    background: #7c3aed;
  }
}

.hero-grid-pattern {
  position: absolute;
  inset: 0;
  background-image: radial-gradient(rgba(255, 255, 255, 0.03) 1px, transparent 1px);
  background-size: 24px 24px;
}

.hero-content {
  position: relative;
  z-index: 1;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 24px;
  flex-wrap: wrap;
}

.hero-top {
  display: flex;
  align-items: center;
  gap: 14px;
}

.hero-back-btn {
  color: $text-secondary;
  background: rgba(255, 255, 255, 0.06);
  border: 1px solid $border-color;
  transition: all 0.2s;

  &:hover {
    color: white;
    background: rgba($accent, 0.15);
    border-color: rgba($accent, 0.3);
  }
}

.hero-icon-wrap {
  width: 48px;
  height: 48px;
  border-radius: 14px;
  background: linear-gradient(135deg, $accent, #7c3aed);
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.hero-text {
  display: flex;
  flex-direction: column;
}

.hero-title {
  font-size: 22px;
  font-weight: 800;
  color: $text-primary;
  margin: 0;
  letter-spacing: -0.3px;
}

.hero-subtitle {
  font-size: 13px;
  color: $text-secondary;
  margin: 2px 0 0;
}

.hero-status-wrap {
  min-width: 200px;
  max-width: 260px;
}

.hero-status-select {
  :deep(.q-field__control) {
    background: rgba(255, 255, 255, 0.06);
    border-color: $border-color;
    border-radius: 10px;
    color: $text-primary;
  }

  :deep(.q-field__label) {
    color: $text-muted;
  }

  :deep(.q-field__native),
  :deep(.q-field__prefix) {
    color: $text-primary;
  }

  :deep(.q-icon) {
    color: $accent-light;
  }
}

// ── Body ──────────────────────────────────────────────────────────────────────
.txn-body {
  padding: 0 32px 40px;
}

// ── Info Grid ─────────────────────────────────────────────────────────────────
.info-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 24px;
  margin-bottom: 32px;
}

.info-card {
  position: relative;
  background: $dark-card;
  border-radius: 16px;
  border: 1px solid $border-color;
  overflow: hidden;
  transition: transform 0.2s, box-shadow 0.2s;

  &:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
  }
}

.info-card-accent {
  height: 4px;
  background: linear-gradient(90deg, $accent, #7c3aed);

  &--green {
    background: linear-gradient(90deg, $accent-green, #059669);
  }
}

.info-card-header {
  display: flex;
  align-items: center;
  gap: 12px;
  padding: 20px 24px 0;
}

.info-card-icon {
  width: 36px;
  height: 36px;
  border-radius: 10px;
  background: linear-gradient(135deg, $accent, #7c3aed);
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;

  &--green {
    background: linear-gradient(135deg, $accent-green, #059669);
  }
}

.info-card-title {
  font-size: 15px;
  font-weight: 700;
  color: $text-primary;
  letter-spacing: -0.2px;
}

.info-card-body {
  padding: 16px 24px 24px;
}

.info-row {
  display: flex;
  align-items: center;
  gap: 12px;
  padding: 10px 0;
  border-bottom: 1px solid $border-color;

  &:last-child {
    border-bottom: none;
  }
}

.info-row-icon {
  width: 32px;
  height: 32px;
  border-radius: 8px;
  background: rgba($accent, 0.1);
  display: flex;
  align-items: center;
  justify-content: center;
  color: $accent-light;
  flex-shrink: 0;
}

.info-row-content {
  display: flex;
  flex-direction: column;
  min-width: 0;
}

.info-row-label {
  font-size: 11px;
  font-weight: 600;
  color: $text-muted;
  text-transform: uppercase;
  letter-spacing: 0.5px;
}

.info-row-value {
  font-size: 14px;
  font-weight: 600;
  color: $text-primary;
  margin-top: 1px;
}

// ── Pricing ───────────────────────────────────────────────────────────────────
.price-row {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px 0;

  &--total {
    padding: 14px 16px;
    background: rgba($accent-green, 0.08);
    border: 1px solid rgba($accent-green, 0.2);
    border-radius: 10px;
    margin-top: 4px;

    .price-label {
      font-size: 15px;
      font-weight: 800;
      color: $text-primary;
    }

    .price-value {
      font-size: 18px;
      font-weight: 900;
      color: $accent-green;
    }
  }
}

.price-label {
  font-size: 13px;
  color: $text-secondary;
  font-weight: 500;
}

.price-value {
  font-size: 14px;
  font-weight: 700;
  color: $text-primary;
}

.price-divider {
  height: 1px;
  background: $border-color;
  margin: 8px 0;
}

// ── Orders ────────────────────────────────────────────────────────────────────
.orders-section {
  background: $dark-card;
  border-radius: 16px;
  border: 1px solid $border-color;
  overflow: hidden;
}

.orders-header {
  display: flex;
  align-items: center;
  gap: 14px;
  padding: 20px 24px;
  border-bottom: 1px solid $border-color;
}

.orders-header-icon {
  width: 40px;
  height: 40px;
  border-radius: 12px;
  background: linear-gradient(135deg, $accent, #7c3aed);
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.orders-title {
  font-size: 17px;
  font-weight: 800;
  color: $text-primary;
  margin: 0;
}

.orders-subtitle {
  font-size: 12px;
  color: $text-muted;
  margin: 2px 0 0;
}

.orders-list {
  padding: 20px 24px;
  display: flex;
  flex-direction: column;
  gap: 14px;
}

.order-card {
  background: $dark-surface;
  border-radius: 12px;
  border: 1px solid $border-color;
  overflow: hidden;
  transition: transform 0.2s, box-shadow 0.2s;

  &:hover {
    transform: translateY(-1px);
    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.25);
  }
}

.order-card-top {
  display: flex;
  align-items: center;
  gap: 12px;
  padding: 16px 20px;
  border-bottom: 1px solid $border-color;
}

.order-badge {
  width: 28px;
  height: 28px;
  border-radius: 8px;
  background: linear-gradient(135deg, $accent, #7c3aed);
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 12px;
  font-weight: 800;
  color: white;
  flex-shrink: 0;
}

.order-name-wrap {
  flex: 1;
  min-width: 0;
  display: flex;
  flex-direction: column;
}

.order-item-link {
  font-size: 14px;
  font-weight: 700;
  color: $accent-light;
  text-decoration: none;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  transition: color 0.2s;

  &:hover {
    color: white;
  }
}

.order-item-name {
  font-size: 14px;
  font-weight: 700;
  color: $text-primary;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

.order-item-desc {
  font-size: 12px;
  color: $text-muted;
  margin-top: 2px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

.order-store-chip {
  display: inline-flex;
  align-items: center;
  gap: 4px;
  padding: 4px 10px;
  border-radius: 6px;
  background: rgba($accent, 0.1);
  border: 1px solid rgba($accent, 0.2);
  color: $accent-light;
  font-size: 11px;
  font-weight: 600;
  text-decoration: none;
  white-space: nowrap;
  transition: all 0.2s;

  &:hover {
    background: rgba($accent, 0.2);
    color: white;
  }
}

.order-card-bottom {
  display: flex;
  align-items: center;
  gap: 0;
  padding: 0;
}

.order-metric {
  flex: 1;
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 12px 16px;
  border-right: 1px solid $border-color;

  &:last-child {
    border-right: none;
  }

  &--highlight {
    background: rgba($accent-green, 0.06);

    .order-metric-value {
      color: $accent-green;
    }
  }
}

.order-metric-label {
  font-size: 10px;
  font-weight: 600;
  color: $text-muted;
  text-transform: uppercase;
  letter-spacing: 0.5px;
  margin-bottom: 2px;
}

.order-metric-value {
  font-size: 14px;
  font-weight: 800;
  color: $text-primary;
}

// ── Responsive ────────────────────────────────────────────────────────────────
@media (max-width: 768px) {
  .page-hero {
    padding: 20px 16px;
  }

  .hero-content {
    flex-direction: column;
    align-items: flex-start;
  }

  .hero-status-wrap {
    width: 100%;
    max-width: 100%;
  }

  .txn-body {
    padding: 0 16px 32px;
  }

  .info-grid {
    grid-template-columns: 1fr;
    gap: 16px;
  }

  .info-card-header {
    padding: 16px 16px 0;
  }

  .info-card-body {
    padding: 12px 16px 20px;
  }

  .orders-header {
    padding: 16px;
  }

  .orders-list {
    padding: 16px;
  }

  .order-card-top {
    flex-wrap: wrap;
    padding: 12px 14px;
  }

  .order-store-chip {
    margin-left: auto;
  }

  .order-card-bottom {
    flex-wrap: wrap;
  }

  .order-metric {
    min-width: 33%;
    padding: 10px 12px;
  }
}
</style>
