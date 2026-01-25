<template>
  <div class="transactions-page-container">
    <!-- Header Section -->
    <div class="page-header q-mb-md">
      <div class="header-content">
        <div class="header-title-section">
          <q-icon name="receipt_long" size="32px" color="primary" class="q-mr-sm" />
          <h2 class="page-title">My Transactions</h2>
        </div>
        <div class="header-actions">
          <q-input
            v-model="search"
            placeholder="Search transactions..."
            outlined
            dense
            clearable
            debounce="300"
            class="search-input"
          >
            <template v-slot:prepend>
              <q-icon name="search" />
            </template>
          </q-input>
        </div>
      </div>
    </div>

    <!-- Desktop Grid View -->
    <div class="desktop-only">
      <div v-if="typedResult.length === 0" class="empty-state-desktop">
        <q-icon name="receipt_long" size="80px" color="grey-4" />
        <div class="text-h5 q-mt-md text-grey-6">No transactions found</div>
        <div class="text-body2 text-grey-5 q-mt-sm">Try adjusting your search criteria</div>
      </div>
      <div v-else>
        <!-- Grid Header -->
        <div class="grid-header">
          <div class="grid-header-cell header-reference">
            <q-icon name="tag" size="20px" color="primary" class="q-mr-xs" />
            <span class="header-label">Reference</span>
          </div>
          <div class="grid-header-cell header-total">
            <q-icon name="attach_money" size="20px" color="primary" class="q-mr-xs" />
            <span class="header-label">Grand Total</span>
          </div>
          <div class="grid-header-cell header-status">
            <q-icon name="info" size="20px" color="primary" class="q-mr-xs" />
            <span class="header-label">Status</span>
          </div>
          <div class="grid-header-cell header-date">
            <q-icon name="calendar_today" size="20px" color="primary" class="q-mr-xs" />
            <span class="header-label">Date</span>
          </div>
          <div class="grid-header-cell header-actions">
            <q-icon name="settings" size="20px" color="primary" class="q-mr-xs" />
            <span class="header-label">Actions</span>
          </div>
        </div>

        <!-- Grid Rows -->
        <div class="transactions-grid">
          <q-card
            v-for="transaction in typedResult"
            :key="transaction.optimus_id"
            flat
            bordered
            class="transaction-grid-item"
          >
            <div class="grid-row">
              <div class="grid-cell cell-reference">
                <div class="reference-info">
                  <q-icon name="tag" color="primary" />
                  <span>#{{ transaction.reference_id }}</span>
                </div>
              </div>
              <div class="grid-cell cell-total">
                <div class="total-info">
                  <q-icon name="attach_money" color="positive" />
                  <span class="total-amount">₱{{ formatCurrency(transaction.grand_total) }}</span>
                </div>
              </div>
              <div class="grid-cell cell-status">
                <q-badge
                  :color="getStatusColor(transaction.status?.label)"
                  :label="transaction.status?.label || 'N/A'"
                  class="status-badge"
                />
              </div>
              <div class="grid-cell cell-date">
                <div class="date-info">
                  <q-icon name="calendar_today" color="grey-6" size="16px" />
                  <span>{{ formatDate(transaction.created_at) }}</span>
                </div>
              </div>
              <div class="grid-cell cell-actions">
                <div class="action-buttons">
                  <q-btn
                    unelevated
                    round
                    dense
                    color="primary"
                    icon="visibility"
                    :to="`${$route.path}/${transaction.optimus_id}`"
                    class="action-btn-grid action-btn-view"
                  >
                    <q-tooltip>View Transaction</q-tooltip>
                  </q-btn>
                  <q-btn
                    unelevated
                    round
                    dense
                    color="positive"
                    icon="check_circle"
                    :to="`${$route.path}/${transaction.optimus_id}`"
                    class="action-btn-grid action-btn-received"
                  >
                    <q-tooltip>Mark as Received</q-tooltip>
                  </q-btn>
                </div>
              </div>
            </div>
          </q-card>
        </div>

        <!-- Pagination -->
        <div class="grid-pagination">
          <div class="pagination-info">
            Showing {{ pagination.from }} - {{ pagination.to }} of {{ pagination.rowsNumber }} transactions
          </div>
          <div class="pagination-controls">
            <q-btn
              v-if="pagination.lastPage > 2"
              flat
              round
              dense
              icon="first_page"
              color="grey-8"
              :disable="pagination.page === 1"
              @click="goToFirstPage"
            />
            <q-btn
              flat
              round
              dense
              icon="chevron_left"
              color="grey-8"
              :disable="pagination.page === 1"
              @click="goToPreviousPage"
            />
            <span class="page-number">{{ pagination.page }} / {{ pagination.lastPage }}</span>
            <q-btn
              flat
              round
              dense
              icon="chevron_right"
              color="grey-8"
              :disable="pagination.page === pagination.lastPage"
              @click="goToNextPage"
            />
            <q-btn
              v-if="pagination.lastPage > 2"
              flat
              round
              dense
              icon="last_page"
              color="grey-8"
              :disable="pagination.page === pagination.lastPage"
              @click="goToLastPage"
            />
          </div>
        </div>
      </div>
    </div>

    <!-- Mobile Card View -->
    <div class="mobile-only">
      <div v-if="typedResult.length === 0" class="empty-state">
        <q-icon name="receipt_long" size="64px" color="grey-4" />
        <div class="text-h6 q-mt-md text-grey-6">No transactions found</div>
      </div>
      <div v-else class="transactions-cards">
        <q-card
          v-for="transaction in typedResult"
          :key="transaction.optimus_id"
          flat
          bordered
          class="transaction-card q-mb-md"
        >
          <q-card-section>
            <div class="transaction-card-header">
              <div class="transaction-card-title">
                <q-icon name="receipt_long" color="primary" size="24px" class="q-mr-sm" />
                <span class="transaction-reference">#{{ transaction.reference_id }}</span>
              </div>
              <q-badge
                :color="getStatusColor(transaction.status?.label)"
                :label="transaction.status?.label || 'N/A'"
                class="status-badge-mobile"
              />
            </div>
            <div class="transaction-card-info q-mt-sm">
              <div class="info-row">
                <q-icon name="attach_money" size="16px" color="positive" class="q-mr-xs" />
                <span class="text-body2 text-grey-7">
                  <strong>Grand Total:</strong> ₱{{ formatCurrency(transaction.grand_total) }}
                </span>
              </div>
              <div class="info-row q-mt-xs">
                <q-icon name="calendar_today" size="16px" color="grey-6" class="q-mr-xs" />
                <span class="text-body2 text-grey-7">{{ formatDate(transaction.created_at) }}</span>
              </div>
            </div>
            <div class="transaction-card-actions q-mt-md">
              <q-btn
                unelevated
                dense
                color="primary"
                icon="visibility"
                label="View"
                :to="`${$route.path}/${transaction.optimus_id}`"
                class="action-btn-mobile action-btn-view-mobile"
              />
              <q-btn
                unelevated
                dense
                color="positive"
                icon="check_circle"
                label="Received"
                :to="`${$route.path}/${transaction.optimus_id}`"
                class="action-btn-mobile action-btn-received-mobile"
              />
            </div>
          </q-card-section>
        </q-card>
      </div>
      <!-- Mobile Pagination -->
      <div v-if="typedResult.length > 0" class="mobile-pagination q-mt-md">
        <q-pagination
          v-model="pagination.page"
          :max="pagination.lastPage"
          :max-pages="5"
          direction-links
          boundary-links
          color="primary"
          @update:model-value="handlePageChange"
        />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { onMounted, ref, watch } from 'vue';
import { onRequest, firstPage, previousPage, nextPage, lastPage } from 'src/boot/axios-call';
import { storeToRefs } from 'pinia';
import { useCommonStore } from 'src/stores/common';
import { CustomerTransactionRow } from 'src/boot/interfaces';
import { useRoute } from 'vue-router';

const route = useRoute();
const useCommon = useCommonStore();
const { pagination, result, entityQuery } = storeToRefs(useCommon);

const search = ref('');

// Initialize entity query
entityQuery.value = {
  message: 'Getting transactions...',
  entity: 'customer-transactions',
  query: {
    with: 'status,paymentMethod,receiveMethod',
    orderBy: 'created_at:desc',
    page: pagination.value.page,
    limit: 12,
  },
};

// Type the result as CustomerTransactionRow array
const typedResult = result as unknown as CustomerTransactionRow[];

const handlePageChange = (page: number) => {
  entityQuery.value.query.page = page;
  onRequest(entityQuery.value);
};

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

onMounted(() => {
  result.value = [];
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

// Helper functions for UI
const getStatusColor = (status: string | undefined): string => {
  if (!status) return 'grey';
  const statusLower = status.toLowerCase();
  if (statusLower.includes('completed') || statusLower.includes('delivered')) return 'positive';
  if (statusLower.includes('preparing') || statusLower.includes('processing')) return 'warning';
  if (statusLower.includes('cancelled') || statusLower.includes('rejected')) return 'negative';
  return 'primary';
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

const formatCurrency = (amount: number | undefined): string => {
  if (!amount) return '0.00';
  return amount.toLocaleString('en-US', {
    minimumFractionDigits: 2,
    maximumFractionDigits: 2
  });
};
</script>

<style scoped lang="scss">
@import 'src/css/dashboard/all-transactions/index.scss';
</style>
