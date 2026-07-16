<template>
  <div class="transaction-detail-content">
    <!-- Transaction Card -->
    <q-card flat class="detail-card q-mb-xl">
      <q-card-section class="detail-card-header">
        <div class="ref-row">
          <div>
            <div class="ref-id">
              <q-icon name="tag" size="18px" class="q-mr-xs" />
              {{ transaction.reference_id }}
            </div>
            <div class="ref-date">
              <q-icon name="calendar_today" size="13px" class="q-mr-xs" />
              {{ transaction.created_at }}
            </div>
          </div>
          <q-badge v-if="transaction.status" :color="getStatusColor(transaction.status.label)"
            :label="transaction.status.label" class="status-badge-large" />
        </div>
      </q-card-section>

      <div class="card-divider"></div>

      <q-card-section class="detail-grid-section">
        <div class="row q-col-gutter-lg">
          <!-- Left: Transaction Info -->
          <div class="col-12 col-md-6">
            <div class="info-group">
              <div class="group-badge">
                <q-icon name="info" size="14px" />
                <span>Transaction Information</span>
              </div>
              <div class="info-rows">
                <div class="info-row">
                  <div class="info-icon-wrap"><q-icon name="payment" size="18px" /></div>
                  <div>
                    <div class="info-label">Payment Method</div>
                    <div class="info-value">{{ transaction.payment_method?.name || 'N/A' }}</div>
                  </div>
                </div>
                <div class="info-row">
                  <div class="info-icon-wrap"><q-icon name="local_shipping" size="18px" /></div>
                  <div>
                    <div class="info-label">Receive Method</div>
                    <div class="info-value">{{ transaction.receive_method?.name || 'N/A' }}</div>
                  </div>
                </div>
                <div class="info-row">
                  <div class="info-icon-wrap"><q-icon name="phone" size="18px" /></div>
                  <div>
                    <div class="info-label">Receiver's Mobile</div>
                    <div class="info-value">{{ transaction.receivers_mobile || transaction.contact_number || 'N/A' }}
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Right: Pricing -->
          <div class="col-12 col-md-6">
            <div class="info-group">
              <div class="group-badge">
                <q-icon name="payments" size="14px" />
                <span>Pricing Summary</span>
              </div>
              <div class="price-rows">
                <div class="price-row">
                  <span class="price-label">Subtotal</span>
                  <span class="price-value">₱{{ formatCurrency(transaction.total) }}</span>
                </div>
                <div class="price-row">
                  <span class="price-label">Delivery Charge</span>
                  <span class="price-value">₱{{ transaction.delivery_charge || '0.00' }}</span>
                </div>
                <div class="price-divider"></div>
                <div class="price-row grand-total-row">
                  <span class="grand-label">Grand Total</span>
                  <span class="grand-value">₱{{ formatCurrency(transaction.grand_total) }}</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </q-card-section>
    </q-card>

    <!-- Location Map Section (Conditional) -->
    <q-card flat class="detail-card q-mb-xl" v-if="showMap && transaction.lat && transaction.lng">
      <q-card-section class="detail-card-header">
        <div class="ref-row">
          <div>
            <div class="ref-id">
              <q-icon name="location_on" size="18px" class="q-mr-xs" />
              Delivery Location
            </div>
            <div class="ref-date">
              <q-icon name="calendar_today" size="13px" class="q-mr-xs" />
              {{ transaction.lat }}, {{ transaction.lng }}
            </div>
          </div>
        </div>
      </q-card-section>

      <div class="card-divider"></div>

      <q-card-section class="detail-grid-section">
        <div class="map-full-container">
          <GoogleMap :api-key="googleMapApiKey" :map-id="googleMapId" class="detail-map-full"
            :center="{ lat: Number(transaction.lat), lng: Number(transaction.lng) }" :zoom="15" :draggable="false"
            :clickable-icons="false">
            <AdvancedMarker :options="{ position: { lat: Number(transaction.lat), lng: Number(transaction.lng) } }" />
          </GoogleMap>
        </div>
      </q-card-section>
    </q-card>

    <!-- Orders Section -->
    <q-card flat class="orders-card" v-if="transaction.orders && transaction.orders.length > 0">
      <q-card-section class="orders-header-section">
        <div class="orders-title-row">
          <div class="orders-icon-wrap">
            <q-icon name="shopping_bag" size="20px" color="white" />
          </div>
          <div>
            <div class="orders-title">Order Items <span class="orders-count">({{ transaction.orders.length }})</span>
            </div>
            <div class="orders-sub">Items included in this transaction</div>
          </div>
        </div>
      </q-card-section>

      <div class="card-divider"></div>

      <q-card-section class="orders-body">
        <div class="orders-list">
          <div v-for="(order, index) in transaction.orders" :key="order.id || index" class="order-item">
            <div class="order-item-header">
              <div class="order-item-number">
                <div class="order-num-badge">{{ index + 1 }}</div>
                <span class="order-num-label">Item {{ index + 1 }}</span>
              </div>
              <a v-if="order.store" :href="`/public_stores/${order.store.optimus_id}`" target="_blank"
                class="store-chip-link">
                <div class="store-chip">
                  <q-icon name="store" size="13px" class="q-mr-xs" />
                  {{ order.store.name }}
                </div>
              </a>
            </div>

            <div class="order-item-body">
              <router-link v-if="order.store"
                :to="`/public_stores/${order.store.optimus_id}/item/${order.optimus_item}`" target="_blank"
                class="order-item-link">
                <div class="order-item-name">
                  <q-icon name="label" size="16px" class="q-mr-xs" />
                  <span>{{ order.item_name }}</span>
                  <q-icon name="open_in_new" size="13px" class="q-ml-xs" />
                </div>
              </router-link>

              <div class="order-item-details">
                <div class="order-detail-row">
                  <span class="order-detail-label">
                    <q-icon name="shopping_cart" size="13px" class="q-mr-xs" />Quantity
                  </span>
                  <span class="order-detail-value">{{ order.qty }}</span>
                </div>
                <div class="order-detail-row">
                  <span class="order-detail-label">
                    <q-icon name="attach_money" size="13px" class="q-mr-xs" />Unit Price
                  </span>
                  <span class="order-detail-value">₱{{ formatCurrency(order.online_price) }}</span>
                </div>
                <div class="order-detail-row order-subtotal-row">
                  <span class="order-detail-label order-subtotal-label">
                    <q-icon name="receipt" size="13px" class="q-mr-xs" />Subtotal
                  </span>
                  <span class="order-subtotal-value">₱{{ formatCurrency(order.subtotal) }}</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </q-card-section>
    </q-card>
  </div>
</template>

<script setup lang="ts">
import { GoogleMap, AdvancedMarker } from 'vue3-google-map';

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
  receivers_mobile?: string;
  contact_number?: string;
  delivery_charge: string;
  total: number;
  grand_total: number;
  created_at: string;
  payment_method?: { name: string };
  receive_method?: { name: string };
  status?: { label: string; name: string };
  orders?: OrderItem[];
}

defineProps<{
  transaction: TransactionDetail;
  showMap?: boolean;
  googleMapApiKey?: string;
  googleMapId?: string;
  formatCurrency: (amount: number | string) => string;
  getStatusColor: (status: string | undefined) => string;
}>();
</script>

<style scoped lang="scss">
// ── Dark theme tokens ──────────────────────────────────────────────────────
$dark-base: #0f172a;
$dark-card: #1e293b;
$dark-elevated: #273549;
$border: rgba(255, 255, 255, 0.08);
$accent: #6366f1;
$accent-2: #7c3aed;
$white: #ffffff;
$muted: rgba(255, 255, 255, 0.5);

// ── Card styling ────────────────────────────────────────────────────────────
.detail-card {
  background: $dark-card;
  border-radius: 20px;
  border: 1px solid $border;
  box-shadow: 0 8px 40px rgba(0, 0, 0, 0.3);
}

.detail-card-header {
  padding: 24px 32px;
}

.card-divider {
  height: 1px;
  background: $border;
  margin: 0;
}

.detail-grid-section {
  padding: 32px;
}

// ── Reference row ─────────────────────────────────────────────────────────────
.ref-row {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  gap: 16px;
}

.ref-id {
  font-size: 18px;
  font-weight: 600;
  color: $white;
  display: flex;
  align-items: center;
  margin-bottom: 6px;
}

.ref-date {
  font-size: 13px;
  color: $muted;
  display: flex;
  align-items: center;
}

.status-badge-large {
  font-size: 14px;
  font-weight: 500;
  padding: 8px 16px;
  border-radius: 12px;
}

// ── Info groups ────────────────────────────────────────────────────────────────
.info-group {
  background: rgba(255, 255, 255, 0.03);
  border-radius: 16px;
  padding: 24px;
  border: 1px solid $border;
}

.group-badge {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  background: linear-gradient(135deg, rgba(99, 102, 241, 0.2) 0%, rgba(124, 58, 237, 0.15) 100%);
  padding: 6px 14px;
  border-radius: 10px;
  font-size: 13px;
  font-weight: 500;
  color: $white;
  margin-bottom: 20px;
}

.info-rows {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.info-row {
  display: flex;
  align-items: flex-start;
  gap: 16px;
}

.info-icon-wrap {
  width: 40px;
  height: 40px;
  background: rgba(255, 255, 255, 0.05);
  border-radius: 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  color: $accent;
  flex-shrink: 0;
}

.info-label {
  font-size: 12px;
  color: $muted;
  margin-bottom: 4px;
}

.info-value {
  font-size: 14px;
  font-weight: 500;
  color: $white;
}

// ── Price rows ────────────────────────────────────────────────────────────────
.price-rows {
  display: flex;
  flex-direction: column;
  gap: 16px;
}

.price-row {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.price-label {
  font-size: 14px;
  color: $muted;
}

.price-value {
  font-size: 16px;
  font-weight: 500;
  color: $white;
}

.price-divider {
  height: 1px;
  background: $border;
  margin: 8px 0;
}

.grand-total-row {
  margin-top: 8px;
}

.grand-label {
  font-size: 16px;
  font-weight: 600;
  color: $white;
}

.grand-value {
  font-size: 18px;
  font-weight: 700;
  color: $accent;
}

// ── Map container ─────────────────────────────────────────────────────────────
.map-full-container {
  width: 100%;
  height: 400px;
  border-radius: 16px;
  overflow: hidden;
}

.detail-map-full {
  width: 100%;
  height: 100%;
}

// ── Orders card ───────────────────────────────────────────────────────────────
.orders-card {
  background: $dark-card;
  border-radius: 20px;
  border: 1px solid $border;
  box-shadow: 0 8px 40px rgba(0, 0, 0, 0.3);
}

.orders-header-section {
  padding: 24px 32px;
}

.orders-title-row {
  display: flex;
  align-items: center;
  gap: 16px;
}

.orders-icon-wrap {
  width: 48px;
  height: 48px;
  background: linear-gradient(135deg, $accent 0%, $accent-2 100%);
  border-radius: 14px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.orders-title {
  font-size: 18px;
  font-weight: 600;
  color: $white;
  margin-bottom: 4px;
}

.orders-count {
  color: $muted;
  font-weight: 400;
  font-size: 16px;
}

.orders-sub {
  font-size: 13px;
  color: $muted;
}

.orders-body {
  padding: 32px;
}

.orders-list {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.order-item {
  background: rgba(255, 255, 255, 0.03);
  border-radius: 16px;
  padding: 24px;
  border: 1px solid $border;
}

.order-item-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 20px;
}

.order-item-number {
  display: flex;
  align-items: center;
  gap: 12px;
}

.order-num-badge {
  width: 32px;
  height: 32px;
  background: linear-gradient(135deg, $accent 0%, $accent-2 100%);
  border-radius: 10px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 14px;
  font-weight: 600;
  color: $white;
}

.order-num-label {
  font-size: 14px;
  font-weight: 500;
  color: $white;
}

.store-chip-link {
  text-decoration: none;
}

.store-chip {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  background: rgba(255, 255, 255, 0.08);
  padding: 6px 12px;
  border-radius: 10px;
  font-size: 13px;
  color: $muted;
  transition: all 0.2s ease;
}

.store-chip:hover {
  background: rgba(255, 255, 255, 0.12);
  color: $white;
}

.order-item-link {
  text-decoration: none;
  display: block;
  margin-bottom: 16px;
}

.order-item-name {
  display: flex;
  align-items: center;
  gap: 8px;
  font-size: 16px;
  font-weight: 500;
  color: $white;
  transition: color 0.2s ease;
}

.order-item-link:hover .order-item-name {
  color: $accent;
}

.order-item-details {
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.order-detail-row {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.order-detail-label {
  font-size: 13px;
  color: $muted;
  display: flex;
  align-items: center;
}

.order-detail-value {
  font-size: 14px;
  font-weight: 500;
  color: $white;
}

.order-subtotal-row {
  padding-top: 12px;
  border-top: 1px solid $border;
  margin-top: 4px;
}

.order-subtotal-label {
  font-weight: 500;
  color: $white;
}

.order-subtotal-value {
  font-size: 16px;
  font-weight: 600;
  color: $accent;
}
</style>
