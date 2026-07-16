<template>
  <div class="transactions-page">

    <!-- Hero Header -->
    <div class="page-hero q-mb-xl">
      <div class="hero-accent-overlay"></div>
      <div class="hero-inner">
        <div class="hero-left">
          <div class="hero-icon-wrap">
            <q-icon name="receipt_long" size="28px" color="white" />
          </div>
          <div>
            <h1 class="page-title">All Transactions</h1>
            <div class="page-subtitle">View and manage your transaction history</div>
          </div>
        </div>
        <div class="hero-right">
          <div class="search-wrap">
            <q-icon name="search" size="20px" class="search-icon" />
            <q-input v-model="search" placeholder="Search by reference..." outlined dense clearable debounce="1000"
              class="search-field" hide-bottom-space />
          </div>
        </div>
      </div>
    </div>


    <!-- Transaction Table -->
    <TransactionTable :transactions="typedResult" :pagination="pagination" :route-path="$route.path"
      empty-subtitle="Your transaction history will appear here" :show-received-button="false" :format-date="formatDate"
      :format-money="formatMoney" :get-status-color="getStatusColor" :on-mark-as-received="() => { }"
      :on-go-to-first-page="goToFirstPage" :on-go-to-previous-page="goToPreviousPage" :on-go-to-next-page="goToNextPage"
      :on-go-to-last-page="goToLastPage" />
  </div>
</template>
<script setup lang="ts">
import { onRequest, firstPage, previousPage, nextPage, lastPage } from 'src/boot/axios-call';
import { useCommonStore } from 'src/stores/common';
import { onMounted, ref, watch } from 'vue';
import { storeToRefs } from 'pinia';
import { CustomerTransactionRow } from 'src/boot/interfaces';
import { formatMoney } from 'src/boot/utilities';
import TransactionTable from 'src/components/TransactionTable.vue';

const search = ref('');
const useCommon = useCommonStore();
const { entityQuery, pagination, result } = storeToRefs(useCommon);

entityQuery.value = {
  message: 'Getting transactions...',
  entity: 'all-transactions',
  query: {
    with: 'status,paymentMethod,receiveMethod',
    orderBy: 'created_at:desc',
    page: pagination.value.page,
    limit: 12,
  },
};

const typedResult = result as unknown as CustomerTransactionRow[];

const handlePageChange = (page: number) => {
  entityQuery.value.query.page = page;
  onRequest(entityQuery.value);
};

onMounted(() => {
  entityQuery.value.query.page = 1;
  onRequest(entityQuery.value, true);
});

watch(search, (newValue) => {
  if (newValue) {
    entityQuery.value.query.filters = 'reference_id:' + search.value;
  } else {
    delete entityQuery.value.query.filters;
  }
  entityQuery.value.query.page = 1;
  onRequest(entityQuery.value);
});

watch(() => pagination.value.page, (newPage) => {
  entityQuery.value.query.page = newPage;
  onRequest(entityQuery.value);
});

const goToFirstPage = () => {
  firstPage(entityQuery.value);
};

const goToPreviousPage = () => {
  previousPage(entityQuery.value);
};

const goToNextPage = () => {
  nextPage(entityQuery.value);
};

const goToLastPage = () => {
  lastPage(entityQuery.value, pagination.value);
};

const formatDate = (dateString: string | undefined): string => {
  if (!dateString) return '';
  const date = new Date(dateString);
  return date.toLocaleDateString('en-US', {
    month: 'short',
    day: 'numeric',
    year: 'numeric'
  });
};

const getStatusKey = (status: string | undefined): string => {
  if (!status) return 'default';
  const s = status.toLowerCase();
  if (s.includes('completed') || s.includes('delivered')) return 'success';
  if (s.includes('preparing') || s.includes('processing')) return 'warning';
  if (s.includes('cancelled') || s.includes('rejected') || s.includes('refund')) return 'danger';
  return 'default';
};

const getStatusColor = (status: string | undefined): string => {
  const key = getStatusKey(status);
  if (key === 'success') return 'positive';
  if (key === 'warning') return 'warning';
  if (key === 'danger') return 'negative';
  return 'grey';
};
</script>

<style scoped lang="scss">
// ── Dark theme tokens (matching DashboardLayout and ProfilePage) ─────────────
$dark-base: #0f172a;
$dark-card: #1e293b;
$dark-elevated: #273549;
$border: rgba(255, 255, 255, 0.08);
$accent: #6366f1;
$accent-2: #7c3aed;
$green: #10b981;
$green-2: #059669;
$blue: #3b82f6;
$blue-2: #2563eb;
$yellow: #fbbf24;
$red: #ef4444;
$white: #ffffff;
$muted: rgba(255, 255, 255, 0.5);
$muted-2: rgba(255, 255, 255, 0.3);

// ── Container ────────────────────────────────────────────────────────────────
.transactions-page {
  max-width: 1200px;
  margin: 0 auto;
  padding: 28px 24px;
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
  color: $white;
}

// ── Hero Header ──────────────────────────────────────────────────────────────
.page-hero {
  position: relative;
  background: $dark-card;
  border-radius: 20px;
  border: 1px solid $border;
  box-shadow: 0 8px 40px rgba(0, 0, 0, 0.3);
  overflow: hidden;
}

.hero-accent-overlay {
  position: absolute;
  inset: 0;
  background: linear-gradient(135deg, rgba(99, 102, 241, 0.18) 0%, rgba(124, 58, 237, 0.10) 60%, transparent 100%);
  pointer-events: none;
}

.hero-inner {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 32px 36px;
  gap: 24px;
}

.hero-left {
  display: flex;
  align-items: center;
  gap: 16px;
}

.hero-icon-wrap {
  width: 56px;
  height: 56px;
  border-radius: 16px;
  background: linear-gradient(135deg, $accent 0%, $accent-2 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow: 0 8px 24px rgba(99, 102, 241, 0.4);
  flex-shrink: 0;
}

.page-title {
  font-size: 26px;
  font-weight: 800;
  color: $white !important;
  margin: 0 0 4px;
  letter-spacing: -0.3px;
  line-height: 1.2;
}

.page-subtitle {
  font-size: 14px;
  color: $muted;
  font-weight: 500;
}

.hero-right {
  flex-shrink: 0;
}

.search-wrap {
  display: flex;
  align-items: center;
  background: $dark-elevated;
  border: 1px solid $border;
  border-radius: 14px;
  padding: 4px 16px;
  width: 280px;
  transition: all 0.2s ease;

  &:focus-within {
    border-color: rgba($accent, 0.4);
    box-shadow: 0 0 0 3px rgba($accent, 0.1);
  }
}

.search-icon {
  color: $muted;
  margin-right: 10px;
  flex-shrink: 0;
}

.search-field {
  flex: 1;

  :deep(.q-field__control) {
    background: transparent !important;
    border: none !important;
    color: $white !important;
  }

  :deep(.q-field__native) {
    color: $white !important;
    font-size: 14px;
    padding: 8px 0;
  }

  :deep(.q-field__native::placeholder) {
    color: $muted !important;
  }
}

// ── Stats Section ────────────────────────────────────────────────────────────
.stats-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
  gap: 20px;
}

.stat-card {
  background: $dark-card;
  border: 1px solid $border;
  border-radius: 16px;
  padding: 24px;
  display: flex;
  align-items: center;
  gap: 16px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
  transition: all 0.2s ease;

  &:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3);
    border-color: rgba($accent, 0.2);
  }
}

.stat-icon-wrap {
  width: 48px;
  height: 48px;
  border-radius: 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;

  &.transactions-icon {
    background: linear-gradient(135deg, $accent 0%, $accent-2 100%);
    box-shadow: 0 4px 16px rgba(99, 102, 241, 0.3);
  }

  &.page-icon {
    background: linear-gradient(135deg, $blue 0%, $blue-2 100%);
    box-shadow: 0 4px 16px rgba(59, 130, 246, 0.3);
  }

  &.total-icon {
    background: linear-gradient(135deg, $green 0%, $green-2 100%);
    box-shadow: 0 4px 16px rgba(16, 185, 129, 0.3);
  }
}

.stat-number {
  font-size: 28px;
  font-weight: 800;
  color: $white;
  line-height: 1;
  margin-bottom: 4px;
}

.stat-label {
  font-size: 12px;
  color: $muted;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: 0.5px;
}

// ── Empty States ─────────────────────────────────────────────────────────────
.empty-state-section {
  display: flex;
  justify-content: center;
  padding: 80px 24px;
}

.empty-card {
  background: $dark-card;
  border: 1px solid $border;
  border-radius: 24px;
  padding: 60px 48px;
  text-align: center;
  box-shadow: 0 12px 40px rgba(0, 0, 0, 0.25);
  max-width: 480px;
}

.empty-icon-wrap {
  width: 120px;
  height: 120px;
  border-radius: 24px;
  background: linear-gradient(135deg, rgba($accent, 0.2) 0%, rgba($accent-2, 0.1) 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto 24px;
  box-shadow: 0 8px 32px rgba($accent, 0.2);
}

.empty-title {
  font-size: 24px;
  font-weight: 800;
  color: $white;
  margin-bottom: 8px;
}

.empty-subtitle {
  font-size: 14px;
  color: $muted;
  line-height: 1.5;
}

// ── Table Section ────────────────────────────────────────────────────────────
.table-section {
  background: $dark-card;
  border: 1px solid $border;
  border-radius: 20px;
  overflow: hidden;
  box-shadow: 0 8px 40px rgba(0, 0, 0, 0.25);
}

.txn-table {
  width: 100%;
  border-collapse: collapse;

  thead {
    background: $dark-elevated;
  }

  .th-cell {
    font-size: 12px;
    font-weight: 700;
    color: $muted;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    padding: 16px 20px;
    text-align: left;
    border: none;

    &.th-actions {
      text-align: center;
    }
  }

  .txn-row {
    transition: background-color 0.2s ease;
    border-bottom: 1px solid $border;

    &:hover {
      background: rgba($accent, 0.04);
    }

    &:last-child {
      border-bottom: none;
    }
  }

  .td-cell {
    padding: 18px 20px;
    border: none;
    vertical-align: middle;
  }
}

// ── Reference Link ───────────────────────────────────────────────────────────
.ref-link {
  text-decoration: none;
  display: block;
}

.ref-id {
  font-size: 14px;
  font-weight: 700;
  color: #a5b4fc;
  transition: color 0.2s ease;

  .ref-link:hover & {
    color: $accent;
  }
}

.ref-date {
  font-size: 12px;
  color: $muted-2;
  display: flex;
  align-items: center;
  margin-top: 4px;
}

// ── Status Pills ─────────────────────────────────────────────────────────────
.status-pill {
  display: inline-flex;
  align-items: center;
  font-size: 12px;
  font-weight: 700;
  padding: 5px 14px;
  border-radius: 20px;
  letter-spacing: 0.3px;

  &.status-success {
    background: rgba($green, 0.15);
    color: $green;
    border: 1px solid rgba($green, 0.2);
  }

  &.status-warning {
    background: rgba($yellow, 0.15);
    color: $yellow;
    border: 1px solid rgba($yellow, 0.2);
  }

  &.status-danger {
    background: rgba($red, 0.15);
    color: $red;
    border: 1px solid rgba($red, 0.2);
  }

  &.status-default {
    background: rgba($accent, 0.15);
    color: #a5b4fc;
    border: 1px solid rgba($accent, 0.2);
  }
}

// ── Summary Cell ─────────────────────────────────────────────────────────────
.summary-cell {
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.summary-total {
  font-size: 16px;
  font-weight: 800;
  color: $white;
}

.summary-meta {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
}

.meta-tag {
  display: inline-flex;
  align-items: center;
  font-size: 12px;
  color: $muted;
  background: rgba(255, 255, 255, 0.05);
  border: 1px solid $border;
  border-radius: 8px;
  padding: 4px 10px;
}

// ── Actions Cell ─────────────────────────────────────────────────────────────
.actions-cell {
  display: flex;
  justify-content: center;
}

.action-btn {
  width: auto;
  min-width: 36px;
  height: 36px;
  padding: 0 12px;
  border-radius: 10px;
  font-size: 12px;
  font-weight: 600;
  transition: all 0.2s ease;

  &.view-btn {
    background: rgba($blue, 0.15) !important;
    color: $blue !important;
    border: 1px solid rgba($blue, 0.2) !important;

    &:hover {
      background: rgba($blue, 0.25) !important;
      border-color: rgba($blue, 0.4) !important;
      transform: translateY(-1px);
    }
  }
}

// ── Pagination ───────────────────────────────────────────────────────────────
.pagination-bar {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 20px 24px;
  background: $dark-elevated;
  border-top: 1px solid $border;
}

.pagination-text {
  font-size: 13px;
  color: $muted;
  font-weight: 500;
}

.pagination-controls {
  display: flex;
  align-items: center;
  gap: 8px;
}

.pg-btn {
  width: 36px;
  height: 36px;
  border-radius: 10px;
  background: rgba(255, 255, 255, 0.06) !important;
  color: $muted !important;
  border: 1px solid $border !important;
  transition: all 0.2s ease;

  &:hover:not(:disabled) {
    background: rgba(255, 255, 255, 0.12) !important;
    color: $white !important;
  }

  &:disabled {
    opacity: 0.4;
  }
}

.page-indicator {
  display: flex;
  align-items: center;
  gap: 4px;
  margin: 0 12px;
  font-size: 13px;
  font-weight: 600;
}

.current-pg {
  color: $white;
}

.pg-sep {
  color: $muted;
}

.total-pg {
  color: $muted;
}

// ── Mobile Empty State ───────────────────────────────────────────────────────
.empty-state-mobile {
  text-align: center;
  padding: 60px 24px;
}

.empty-icon-mobile {
  width: 80px;
  height: 80px;
  border-radius: 20px;
  background: linear-gradient(135deg, rgba($accent, 0.2) 0%, rgba($accent-2, 0.1) 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto 20px;
  box-shadow: 0 6px 24px rgba($accent, 0.2);
}

.empty-title-mobile {
  font-size: 20px;
  font-weight: 800;
  color: $white;
  margin-bottom: 6px;
}

.empty-subtitle-mobile {
  font-size: 13px;
  color: $muted;
}

// ── Mobile Cards ─────────────────────────────────────────────────────────────
.txn-card {
  background: $dark-card !important;
  border: 1px solid $border !important;
  border-radius: 16px !important;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2) !important;
  overflow: hidden;
  transition: all 0.2s ease;

  &:hover {
    border-color: rgba($accent, 0.2) !important;
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3) !important;
  }
}

.txn-card-top {
  padding: 20px 20px 16px;
}

.txn-card-header {
  display: flex;
  align-items: center;
  gap: 14px;
}

.txn-avatar {
  width: 44px;
  height: 44px;
  border-radius: 12px;
  background: linear-gradient(135deg, $accent 0%, $accent-2 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow: 0 4px 12px rgba(99, 102, 241, 0.3);
  flex-shrink: 0;
}

.txn-card-ref {
  flex: 1;
  min-width: 0;
}

.txn-card-id {
  font-size: 15px;
  font-weight: 700;
  color: #a5b4fc;
  word-break: break-word;
}

.txn-card-date {
  font-size: 12px;
  color: $muted-2;
  margin-top: 2px;
}

.txn-divider {
  background: $border !important;
  margin: 0;
}

.txn-card-body {
  padding: 16px 20px;
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.detail-row {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.detail-label {
  font-size: 13px;
  color: $muted;
  font-weight: 500;
}

.detail-value {
  font-size: 13px;
  font-weight: 600;
  color: rgba(255, 255, 255, 0.8);

  &.highlight {
    font-size: 15px;
    font-weight: 800;
    color: $white;
  }
}

.txn-card-actions {
  padding: 16px 20px;
  gap: 8px;
  display: flex;
}

.mobile-btn {
  flex: 1;
  height: 40px !important;
  border-radius: 10px !important;
  font-weight: 600 !important;
  font-size: 13px !important;
  transition: all 0.2s ease;

  &.received-btn {
    background: rgba($green, 0.15) !important;
    color: $green !important;
    border: 1px solid rgba($green, 0.2) !important;

    &:hover {
      background: rgba($green, 0.25) !important;
      border-color: rgba($green, 0.4) !important;
    }
  }

  &.view-btn-mobile {
    background: rgba($blue, 0.15) !important;
    color: $blue !important;
    border: 1px solid rgba($blue, 0.2) !important;

    &:hover {
      background: rgba($blue, 0.25) !important;
      border-color: rgba($blue, 0.4) !important;
    }
  }
}

.mobile-pagination {
  display: flex;
  justify-content: center;
  padding: 24px 0;
}

// ── Responsive ───────────────────────────────────────────────────────────────
@media (max-width: 768px) {
  .transactions-page {
    padding: 16px 12px;
  }

  .hero-inner {
    flex-direction: column;
    gap: 20px;
    padding: 24px 20px;
  }

  .hero-left {
    flex-wrap: wrap;
    gap: 12px;
  }

  .page-title {
    font-size: 22px;
  }

  .search-wrap {
    width: 100%;
  }

  .stats-grid {
    grid-template-columns: 1fr;
    gap: 16px;
  }
}
</style>
