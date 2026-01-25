<template>
  <div class="stores-page-container">
    <!-- Header Section -->
    <div class="page-header q-mb-md">
      <div class="header-content">
        <div class="header-title-section">
          <q-icon name="store" size="32px" color="primary" class="q-mr-sm" />
          <h2 class="page-title">All Stores</h2>
        </div>
        <div class="header-actions">
          <q-input
            v-model="search"
            placeholder="Search stores..."
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
        <q-icon name="store" size="80px" color="grey-4" />
        <div class="text-h5 q-mt-md text-grey-6">No stores found</div>
        <div class="text-body2 text-grey-5 q-mt-sm">Try adjusting your search criteria</div>
      </div>
      <div v-else>
        <!-- Grid Header -->
        <div class="grid-header">
          <div class="grid-header-cell header-name">
            <q-icon name="store" size="20px" color="primary" class="q-mr-xs" />
            <span class="header-label">Store Name</span>
          </div>
          <div class="grid-header-cell header-mobile">
            <q-icon name="phone" size="20px" color="primary" class="q-mr-xs" />
            <span class="header-label">Mobile</span>
          </div>
          <div class="grid-header-cell header-actions">
            <q-icon name="settings" size="20px" color="primary" class="q-mr-xs" />
            <span class="header-label">Actions</span>
          </div>
        </div>

        <!-- Grid Rows -->
        <div class="stores-grid">
          <q-card
            v-for="store in typedResult"
            :key="store.id"
            flat
            bordered
            class="store-grid-item"
          >
            <div class="grid-row">
              <div class="grid-cell cell-name">
                <router-link
                  :to="`/dashboard/all-stores/${store.optimus_id}`"
                  class="store-name-grid"
                >
                  <q-icon name="store" color="primary" />
                  <span class="store-name-text">{{ store.name }}</span>
                </router-link>
              </div>
              <div class="grid-cell cell-mobile">
                <div class="mobile-info">
                  <q-icon name="phone" color="primary" />
                  <span>{{ store.mobile || 'N/A' }}</span>
                </div>
              </div>
              <div class="grid-cell cell-actions">
                <div class="action-buttons">
                  <q-btn
                    unelevated
                    round
                    dense
                    color="primary"
                    icon="edit_note"
                    :to="`/dashboard/all-stores/${store.optimus_id}`"
                    class="action-btn-grid action-btn-edit"
                  >
                    <q-tooltip>Edit Store</q-tooltip>
                  </q-btn>
                  <q-btn
                    unelevated
                    round
                    dense
                    color="negative"
                    icon="delete_forever"
                    @click="handleDeleteStore(store)"
                    class="action-btn-grid action-btn-delete"
                  >
                    <q-tooltip>Delete Store</q-tooltip>
                  </q-btn>
                </div>
              </div>
            </div>
          </q-card>
        </div>

        <!-- Pagination -->
        <div class="grid-pagination">
          <div class="pagination-info">
            Showing {{ pagination.from }} - {{ pagination.to }} of {{ pagination.rowsNumber }} stores
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
        <q-icon name="store" size="64px" color="grey-4" />
        <div class="text-h6 q-mt-md text-grey-6">No stores found</div>
      </div>
      <div v-else class="stores-cards">
        <q-card
          v-for="store in typedResult"
          :key="store.id"
          flat
          bordered
          class="store-card q-mb-md"
        >
          <q-card-section>
            <div class="store-card-header">
              <div class="store-card-title">
                <q-icon name="store" color="primary" size="24px" class="q-mr-sm" />
                <router-link
                  :to="`/dashboard/all-stores/${store.optimus_id}`"
                  class="store-name-link"
                >
                  {{ store.name }}
                </router-link>
              </div>
            </div>
            <div v-if="store.mobile" class="store-card-info q-mt-sm">
              <q-icon name="phone" size="16px" color="grey-6" class="q-mr-xs" />
              <span class="text-body2 text-grey-7">{{ store.mobile }}</span>
            </div>
            <div class="store-card-actions q-mt-md">
              <q-btn
                unelevated
                dense
                color="primary"
                icon="edit_note"
                label="Edit"
                :to="`/dashboard/all-stores/${store.optimus_id}`"
                class="action-btn-mobile action-btn-edit-mobile"
              />
              <q-btn
                unelevated
                dense
                color="negative"
                icon="delete_forever"
                label="Delete"
                @click="handleDeleteStore(store)"
                class="action-btn-mobile action-btn-delete-mobile"
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
import { onDeleteEntity } from 'src/boot/services';
import { StoreRow } from 'src/boot/interfaces';

const useCommon = useCommonStore();
const { pagination, result, entityQuery } = storeToRefs(useCommon);

const search = ref('');

// Initialize entity query
entityQuery.value = {
  message: 'Getting stores...',
  entity: 'all_stores',
  query: {
    orderBy: 'name:asc',
    columns: 'id,name,mobile',
    page: pagination.value.page,
    limit: 12,
  },
};

// Type the result as StoreRow array
const typedResult = result as unknown as StoreRow[];

const handleDeleteStore = (store: StoreRow) => {
  onDeleteEntity('stores', store.optimus_id, store.name);
};

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
    entityQuery.value.query.filters = 'name:' + search.value;
  } else {
    delete entityQuery.value.query.filters;
  }
  entityQuery.value.query.page = 1;
  onRequest(entityQuery.value);
});
</script>

<style scoped lang="scss">
@import 'src/css/dashboard/all-stores/index.scss';
</style>
