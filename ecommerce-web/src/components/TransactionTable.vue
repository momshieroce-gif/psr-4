<template>
  <div class="transaction-table">
    <!-- Desktop Table View -->
    <div class="desktop-only">
      <div v-if="transactions.length === 0" class="empty-state">
        <div class="empty-icon-wrap">
          <q-icon name="receipt_long" size="48px" color="white" />
        </div>
        <div class="empty-title">No transactions found</div>
        <div class="empty-subtitle">{{ emptySubtitle }}</div>
      </div>

      <div v-else class="table-card">
        <table class="dark-table">
          <thead>
            <tr>
              <th>Reference</th>
              <th>Status</th>
              <th>Summary</th>
              <th class="th-center">Actions</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="tx in transactions" :key="tx.optimus_id">
              <td>
                <router-link :to="`${routePath}/${tx.optimus_id}`" class="tx-ref-link">
                  <div class="tx-ref-id">#{{ tx.reference_id }}</div>
                  <div class="tx-date">
                    <q-icon name="calendar_today" size="12px" />
                    {{ formatDate(tx.created_at) }}
                  </div>
                </router-link>
              </td>
              <td>
                <span class="status-pill" :class="`status-${getStatusColor(tx.status?.label || '')}`">
                  {{ tx.status?.label || 'Pending' }}
                </span>
              </td>
              <td>
                <div class="tx-summary">
                  <div class="tx-total">{{ formatMoney(tx.grand_total) }}</div>
                  <div class="tx-meta">
                    <span><q-icon name="payment" size="12px" /> {{ tx.payment_method?.name || 'N/A' }}</span>
                    <span><q-icon name="local_shipping" size="12px" /> {{ tx.receive_method?.name || 'N/A' }}</span>
                  </div>
                </div>
              </td>
              <td class="td-center">
                <div class="action-btns">
                  <button
                    v-if="showReceivedButton && tx.status?.name !== TRANSACTION_STATUS.COMPLETED && onMarkAsReceived"
                    class="action-pill action-received" @click="onMarkAsReceived(tx.optimus_id)">
                    <q-icon name="inventory_2" size="16px" />
                    Received
                  </button>
                  <router-link :to="`${routePath}/${tx.optimus_id}`" class="action-pill action-view">
                    <q-icon name="info" size="16px" />
                    View
                  </router-link>
                </div>
              </td>
            </tr>
          </tbody>
        </table>

        <div class="table-pagination">
          <div class="pagination-info">
            Showing {{ pagination.from }}&ndash;{{ pagination.to }} of {{ pagination.rowsNumber }} transactions
          </div>
          <div class="pagination-controls">
            <button v-if="pagination.lastPage > 2" class="pg-btn" :disabled="pagination.page === 1"
              @click="onGoToFirstPage">
              <q-icon name="first_page" size="18px" />
            </button>
            <button class="pg-btn" :disabled="pagination.page === 1" @click="onGoToPreviousPage">
              <q-icon name="chevron_left" size="18px" />
            </button>
            <span class="pg-current">{{ pagination.page }} / {{ pagination.lastPage }}</span>
            <button class="pg-btn" :disabled="pagination.page === pagination.lastPage" @click="onGoToNextPage">
              <q-icon name="chevron_right" size="18px" />
            </button>
            <button v-if="pagination.lastPage > 2" class="pg-btn" :disabled="pagination.page === pagination.lastPage"
              @click="onGoToLastPage">
              <q-icon name="last_page" size="18px" />
            </button>
          </div>
        </div>
      </div>
    </div>

    <!-- Mobile Card View -->
    <div class="mobile-only">
      <div v-if="transactions.length === 0" class="empty-state">
        <div class="empty-icon-wrap">
          <q-icon name="receipt_long" size="48px" color="white" />
        </div>
        <div class="empty-title">No transactions found</div>
        <div class="empty-subtitle">{{ emptySubtitle }}</div>
      </div>

      <div v-else class="mobile-cards">
        <div v-for="tx in transactions" :key="tx.optimus_id" class="m-card">
          <div class="m-card-top">
            <div class="m-card-avatar">
              <q-icon name="receipt_long" size="20px" color="white" />
            </div>
            <div class="m-card-info">
              <div class="m-card-name">#{{ tx.reference_id }}</div>
              <span class="status-pill" :class="`status-${getStatusColor(tx.status?.label || '')}`"
                style="margin-top:6px;display:inline-flex;">
                {{ tx.status?.label || 'Pending' }}
              </span>
            </div>
          </div>

          <div class="m-card-detail">
            <div class="detail-icon"><q-icon name="calendar_today" size="16px" /></div>
            <span class="detail-text">{{ formatDate(tx.created_at) }}</span>
          </div>
          <div class="m-card-detail">
            <div class="detail-icon"><q-icon name="payments" size="16px" /></div>
            <span class="detail-text">{{ formatMoney(tx.grand_total) }}</span>
          </div>
          <div class="m-card-detail">
            <div class="detail-icon"><q-icon name="payment" size="16px" /></div>
            <span class="detail-text">{{ tx.payment_method?.name || 'N/A' }}</span>
          </div>
          <div class="m-card-detail">
            <div class="detail-icon"><q-icon name="local_shipping" size="16px" /></div>
            <span class="detail-text">{{ tx.receive_method?.name || 'N/A' }}</span>
          </div>

          <div class="m-card-actions">
            <button v-if="showReceivedButton && tx.status?.name !== TRANSACTION_STATUS.COMPLETED && onMarkAsReceived"
              class="m-action m-action-received" @click="onMarkAsReceived(tx.optimus_id)">
              <q-icon name="inventory_2" size="16px" class="q-mr-xs" />
              Received
            </button>
            <router-link :to="`${routePath}/${tx.optimus_id}`" class="m-action m-action-view">
              <q-icon name="info" size="16px" class="q-mr-xs" />
              View
            </router-link>
          </div>
        </div>
      </div>

      <div v-if="transactions.length > 0" class="m-pagination">
        <div class="pagination-controls">
          <button v-if="pagination.lastPage > 2" class="pg-btn" :disabled="pagination.page === 1"
            @click="onGoToFirstPage">
            <q-icon name="first_page" size="18px" />
          </button>
          <button class="pg-btn" :disabled="pagination.page === 1" @click="onGoToPreviousPage">
            <q-icon name="chevron_left" size="18px" />
          </button>
          <span class="pg-current">{{ pagination.page }} / {{ pagination.lastPage }}</span>
          <button class="pg-btn" :disabled="pagination.page === pagination.lastPage" @click="onGoToNextPage">
            <q-icon name="chevron_right" size="18px" />
          </button>
          <button v-if="pagination.lastPage > 2" class="pg-btn" :disabled="pagination.page === pagination.lastPage"
            @click="onGoToLastPage">
            <q-icon name="last_page" size="18px" />
          </button>
        </div>
        <div class="pagination-info">
          Showing {{ pagination.from }}&ndash;{{ pagination.to }} of {{ pagination.rowsNumber }} transactions
        </div>
      </div>
    </div>

    <!-- Stats Row -->
    <div class="stats-row q-mt-lg">
      <div class="stat-card">
        <div class="stat-icon-wrap stat-icon-indigo">
          <q-icon name="receipt_long" size="20px" color="white" />
        </div>
        <div>
          <div class="stat-value">{{ transactions.length }}</div>
          <div class="stat-label">On this page</div>
        </div>
      </div>
      <div class="stat-card">
        <div class="stat-icon-wrap stat-icon-blue">
          <q-icon name="data_usage" size="20px" color="white" />
        </div>
        <div>
          <div class="stat-value">{{ pagination.rowsNumber }}</div>
          <div class="stat-label">Total records</div>
        </div>
      </div>
      <div class="stat-card">
        <div class="stat-icon-wrap stat-icon-green">
          <q-icon name="menu_book" size="20px" color="white" />
        </div>
        <div>
          <div class="stat-value">{{ pagination.page }} / {{ pagination.lastPage }}</div>
          <div class="stat-label">Current page</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { TRANSACTION_STATUS } from 'src/boot/constant';

interface Transaction {
  optimus_id: number;
  reference_id: number | string;
  created_at: string;
  grand_total: number;
  status?: { name: string; label: string };
  payment_method?: { name: string };
  receive_method?: { name: string };
}

interface Pagination {
  from: number;
  to: number;
  rowsNumber: number;
  page: number;
  lastPage: number;
}

defineProps<{
  transactions: Transaction[];
  pagination: Pagination;
  routePath: string;
  emptySubtitle?: string;
  showReceivedButton?: boolean;
  formatDate: (date: string) => string;
  formatMoney: (amount: number) => string;
  getStatusColor: (status: string) => string;
  onMarkAsReceived?: (id: number) => void;
  onGoToFirstPage: () => void;
  onGoToPreviousPage: () => void;
  onGoToNextPage: () => void;
  onGoToLastPage: () => void;
}>();
</script>

<style scoped lang="scss">
// ── Dark theme tokens ──────────────────────────────────────────────────────
$dark-base: #0f172a;
$dark-card: #1e293b;
$dark-elevated: #273549;
$border: rgba(255, 255, 255, 0.08);
$border-strong: rgba(255, 255, 255, 0.15);
$accent: #6366f1;
$accent-2: #7c3aed;
$white: #ffffff;
$muted: rgba(255, 255, 255, 0.5);
$muted-2: rgba(255, 255, 255, 0.35);
$green: #10b981;

// ── Container ──────────────────────────────────────────────────────────────
.transaction-table {
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
  color: $white;
}

// ── Empty State ─────────────────────────────────────────────────────────────
.empty-state {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: 80px 40px;
  background: $dark-card;
  border: 1px solid $border;
  border-radius: 20px;
  text-align: center;
}

.empty-icon-wrap {
  width: 80px;
  height: 80px;
  border-radius: 20px;
  background: linear-gradient(135deg, rgba($accent, 0.15) 0%, rgba($accent-2, 0.08) 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 24px;
}

.empty-title {
  font-size: 20px;
  font-weight: 700;
  color: $white;
  margin-bottom: 8px;
}

.empty-subtitle {
  font-size: 14px;
  color: $muted;
}

// ── Table Card ─────────────────────────────────────────────────────────────
.table-card {
  background: $dark-card;
  border: 1px solid $border;
  border-radius: 20px;
  overflow: hidden;
  box-shadow: 0 8px 40px rgba(0, 0, 0, 0.25);
}

.dark-table {
  width: 100%;
  border-collapse: collapse;

  thead {
    background: $dark-elevated;

    th {
      padding: 18px 24px;
      text-align: left;
      font-size: 13px;
      font-weight: 700;
      color: $muted;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      border-bottom: 1px solid $border;

      &.th-center {
        text-align: center;
      }
    }
  }

  tbody {
    tr {
      border-bottom: 1px solid $border;
      transition: background 0.2s;

      &:hover {
        background: rgba(255, 255, 255, 0.03);
      }

      &:last-child {
        border-bottom: none;
      }

      td {
        padding: 20px 24px;
        vertical-align: middle;
      }
    }
  }
}

.tx-ref-link {
  text-decoration: none;
  display: block;
  transition: opacity 0.2s;

  &:hover {
    opacity: 0.8;
  }
}

.tx-ref-id {
  font-size: 15px;
  font-weight: 700;
  color: $white;
  margin-bottom: 4px;
}

.tx-date {
  font-size: 12px;
  color: $muted;
  display: flex;
  align-items: center;
  gap: 4px;
}

.status-pill {
  display: inline-flex;
  align-items: center;
  padding: 6px 14px;
  border-radius: 20px;
  font-size: 12px;
  font-weight: 700;
  letter-spacing: 0.3px;

  &.status-positive,
  &.status-completed,
  &.status-delivered {
    background: rgba($green, 0.12);
    color: #6ee7b7;
    border: 1px solid rgba($green, 0.2);
  }

  &.status-warning,
  &.status-preparing,
  &.status-processing {
    background: rgba(251, 191, 36, 0.12);
    color: #fcd34d;
    border: 1px solid rgba(251, 191, 36, 0.2);
  }

  &.status-negative,
  &.status-cancelled,
  &.status-rejected {
    background: rgba(239, 68, 68, 0.12);
    color: #fca5a5;
    border: 1px solid rgba(239, 68, 68, 0.2);
  }

  &.status-primary {
    background: rgba($accent, 0.12);
    color: #a5b4fc;
    border: 1px solid rgba($accent, 0.2);
  }

  &.status-grey {
    background: rgba(148, 163, 184, 0.12);
    color: #cbd5e1;
    border: 1px solid rgba(148, 163, 184, 0.2);
  }
}

.tx-summary {
  display: flex;
  flex-direction: column;
  gap: 6px;
}

.tx-total {
  font-size: 16px;
  font-weight: 700;
  color: $white;
}

.tx-meta {
  display: flex;
  gap: 16px;
  font-size: 12px;
  color: $muted;

  span {
    display: flex;
    align-items: center;
    gap: 4px;
  }
}

.td-center {
  text-align: center;
}

.action-btns {
  display: flex;
  gap: 8px;
  justify-content: center;
}

.action-pill {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  padding: 8px 16px;
  border-radius: 10px;
  font-size: 13px;
  font-weight: 700;
  border: none;
  cursor: pointer;
  text-decoration: none;
  transition: all 0.2s ease;

  &.action-received {
    background: rgba($green, 0.12);
    color: #6ee7b7;
    border: 1px solid rgba($green, 0.2);

    &:hover {
      background: rgba($green, 0.2);
      border-color: rgba($green, 0.35);
    }
  }

  &.action-view {
    background: linear-gradient(135deg, $accent 0%, $accent-2 100%);
    color: $white;
    box-shadow: 0 4px 16px rgba($accent, 0.3);

    &:hover {
      box-shadow: 0 6px 20px rgba($accent, 0.45);
      transform: translateY(-1px);
    }
  }
}

// ── Pagination ───────────────────────────────────────────────────────────────
.table-pagination {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 20px 24px;
  background: $dark-elevated;
  border-top: 1px solid $border;
}

.pagination-info {
  font-size: 13px;
  color: $muted;
}

.pagination-controls {
  display: flex;
  align-items: center;
  gap: 8px;
}

.pg-btn {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 36px;
  height: 36px;
  border-radius: 8px;
  border: 1px solid $border;
  background: transparent;
  color: $white;
  cursor: pointer;
  transition: all 0.2s;

  &:hover:not(:disabled) {
    background: rgba(255, 255, 255, 0.08);
    border-color: rgba(255, 255, 255, 0.2);
  }

  &:disabled {
    opacity: 0.35;
    cursor: not-allowed;
  }
}

.pg-current {
  font-size: 13px;
  font-weight: 600;
  color: $white;
  min-width: 60px;
  text-align: center;
}

// ── Mobile Cards ─────────────────────────────────────────────────────────────
.mobile-cards {
  display: flex;
  flex-direction: column;
  gap: 16px;
}

.m-card {
  background: $dark-card;
  border: 1px solid $border;
  border-radius: 16px;
  overflow: hidden;
  position: relative;

  &::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 3px;
    height: 100%;
    background: linear-gradient(180deg, $accent 0%, $accent-2 100%);
  }
}

.m-card-top {
  display: flex;
  align-items: center;
  gap: 12px;
  padding: 16px 16px 12px;
  border-bottom: 1px solid $border;
}

.m-card-avatar {
  width: 40px;
  height: 40px;
  border-radius: 10px;
  background: linear-gradient(135deg, $accent 0%, $accent-2 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.m-card-info {
  flex: 1;
  min-width: 0;
}

.m-card-name {
  font-size: 15px;
  font-weight: 700;
  color: $white;
  margin-bottom: 4px;
}

.m-card-detail {
  display: flex;
  align-items: center;
  gap: 10px;
  padding: 0 16px 10px;
}

.detail-icon {
  width: 32px;
  height: 32px;
  border-radius: 9px;
  background: rgba(255, 255, 255, 0.06);
  display: flex;
  align-items: center;
  justify-content: center;
  color: $muted;
  flex-shrink: 0;
}

.detail-text {
  font-size: 14px;
  color: rgba(255, 255, 255, 0.8);
  font-weight: 500;
}

.m-card-actions {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 10px;
  padding: 0 16px 16px;
}

.m-action {
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 12px 14px;
  border-radius: 12px;
  font-size: 13px;
  font-weight: 700;
  border: none;
  cursor: pointer;
  text-decoration: none;
  transition: all 0.2s ease;

  &.m-action-received {
    background: rgba($green, 0.12);
    color: #6ee7b7;
    border: 1px solid rgba($green, 0.2);

    &:hover {
      background: rgba($green, 0.2);
      border-color: rgba($green, 0.35);
    }
  }

  &.m-action-view {
    background: linear-gradient(135deg, $accent 0%, $accent-2 100%);
    color: $white;
    box-shadow: 0 4px 16px rgba($accent, 0.3);

    &:hover {
      box-shadow: 0 6px 20px rgba($accent, 0.45);
      transform: translateY(-1px);
    }
  }
}

.m-pagination {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 12px;
  margin-top: 16px;
  padding: 20px;
  background: $dark-card;
  border: 1px solid $border;
  border-radius: 16px;
}

// ── Stats ─────────────────────────────────────────────────────────────────────
.stats-row {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  gap: 16px;
}

.stat-card {
  background: $dark-card;
  border: 1px solid $border;
  border-radius: 16px;
  padding: 20px;
  display: flex;
  align-items: center;
  gap: 16px;
}

.stat-icon-wrap {
  width: 48px;
  height: 48px;
  border-radius: 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;

  &.stat-icon-indigo {
    background: linear-gradient(135deg, $accent 0%, $accent-2 100%);
    box-shadow: 0 4px 16px rgba($accent, 0.3);
  }

  &.stat-icon-blue {
    background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
    box-shadow: 0 4px 16px rgba(59, 130, 246, 0.3);
  }

  &.stat-icon-green {
    background: linear-gradient(135deg, $green 0%, #059669 100%);
    box-shadow: 0 4px 16px rgba($green, 0.3);
  }
}

.stat-value {
  font-size: 24px;
  font-weight: 800;
  color: $white;
  margin-bottom: 2px;
}

.stat-label {
  font-size: 12px;
  color: $muted;
  font-weight: 500;
  text-transform: uppercase;
  letter-spacing: 0.4px;
}

// ── Responsive ───────────────────────────────────────────────────────────────
@media (max-width: 768px) {
  .stats-row {
    grid-template-columns: 1fr;
  }
}
</style>
