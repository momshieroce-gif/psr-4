<template>
  <div class="item-price-container">
    <!-- Header Section -->
    <div class="item-price-header-section q-mb-lg">
      <div class="row items-center">
        <div class="col">
          <div class="text-h4 text-weight-bold">
            <q-icon name="attach_money" color="primary" class="q-mr-sm" />
            Item Prices
          </div>
          <div class="text-body2 text-grey-7 q-mt-xs">
            Manage pricing options and inventory for this item
          </div>
        </div>
        <q-btn outline color="primary" icon="arrow_back" label="Back" @click="router.back()" />
      </div>
    </div>

    <!-- Price Form Card -->
    <q-card flat bordered class="item-price-card">
      <q-card-section class="item-price-header">
        <div class="row items-center justify-between">
          <div class="col-auto">
            <div class="text-h6 text-weight-bold q-mb-xs">
              <q-icon name="inventory_2" color="primary" class="q-mr-sm" />
              Item Information
            </div>
            <div class="text-body2 text-grey-7">
              Add or update price variations for this item
            </div>
          </div>
          <q-btn
            flat
            color="primary"
            icon="add"
            label="Add Item Price"
            @click="addItemPrice"
          />
        </div>
      </q-card-section>

      <q-separator />

      <q-card-section class="item-price-content">
        <q-form @reset="onReset" class="q-gutter-md" ref="myForm">
          <div class="info-group">
            <div class="text-subtitle2 text-weight-bold text-grey-8 q-mb-md">
              <q-icon name="info" size="sm" class="q-mr-xs" />
              Item Details
            </div>
            <q-input
              v-model="item.name"
              outlined
              dense
              label="Item Name"
              hide-bottom-space
              disable
            />
          </div>

          <div class="info-group q-mt-lg">
            <div class="text-subtitle2 text-weight-bold text-grey-8 q-mb-md">
              <q-icon name="price_change" size="sm" class="q-mr-xs" />
              Price Variations
            </div>

            <div v-if="item.item_price?.length === 0" class="empty-prices">
              <q-icon name="sell" size="48px" color="grey-4" />
              <div class="text-body2 text-grey-6 q-mt-md">No prices added yet</div>
              <div class="text-caption text-grey-5 q-mt-xs">Click "Add Item Price" to begin</div>
            </div>

            <q-card
              v-for="(itemPrice, index) in item.item_price"
              :key="itemPrice.id || index"
              flat
              bordered
              class="price-item-card q-mt-sm"
            >
              <div class="price-item-header">
                <div class="text-weight-bold text-grey-8">Price Option {{ Number(index) + 1 }}</div>
                <q-btn
                  flat
                  color="negative"
                  icon="delete"
                  @click="deleteItemPrice(Number(index))"
                  class="delete-price-btn"
                />
              </div>

              <div class="price-grid">
                <q-select
                  dense
                  v-model="itemPrice.unit"
                  :options="units"
                  label="Units"
                  hide-bottom-space
                  use-input
                  outlined
                  :rules="[(val) => !!val || 'Unit is required.']"
                />
                <q-select
                  dense
                  v-model="itemPrice.color"
                  :options="colors"
                  label="Colors"
                  hide-bottom-space
                  use-input
                  outlined
                  clearable
                />
                <q-select
                  dense
                  v-model="itemPrice.size"
                  :options="sizes"
                  label="Sizes"
                  hide-bottom-space
                  use-input
                  outlined
                  clearable
                />
                <input-amount
                  label="Original Price"
                  :value="itemPrice.original_price"
                  @input="(amount) => changeOriginalPrice(itemPrice, amount)"
                />
                <input-amount
                  label="Online Price"
                  :value="itemPrice.online_price"
                  @input="(amount) => changeOnlinePrice(itemPrice, amount)"
                />
                <input-amount
                  label="Selling Price"
                  :value="itemPrice.selling_price"
                  @input="(amount) => changeSellingPrice(itemPrice, amount)"
                />
                <q-input
                  v-model="itemPrice.qty"
                  label="Qty"
                  outlined
                  dense
                  type="number"
                  min="0"
                  :rules="[(val) => (val !== null && val !== undefined && val !== '') || 'Qty is required.']"
                />
              </div>
            </q-card>
          </div>

          <div class="form-actions">
            <q-btn color="primary" unelevated icon="save" label="Update Item Price" @click="createItemPrice" />
            <q-btn outline color="grey-8" icon="cancel" label="Cancel" @click="router.back()" />
          </div>
        </q-form>
      </q-card-section>
    </q-card>
  </div>
</template>
<script setup lang="ts">
import { ref, onBeforeMount } from 'vue';
import { show, get, create } from 'src/boot/axios-call';
import { useRoute, useRouter } from 'vue-router';
import type { QForm } from 'quasar';
import { ItemInterface } from 'boot/interfaces';
import InputAmount from 'src/components/inputs/InputAmount.vue';

const route = useRoute();
const router = useRouter();
const myForm = ref<QForm | null>(null);

const onReset = () => {
  myForm.value?.resetValidation();
};

const item = ref<any>({
  name: '',
  description: '',
  item_price: [],
  category: null
});
onBeforeMount(async () => {
  await getItem();
  listingApi();
});

const getItem = async () => {
  item.value = await show(
    {
      entity: 'items',
      optimus_id: Number(route.params.itemId),
      query: {
        filters: `store_id:${route.params.id}`,
        with: 'itemPrice.unit,itemPrice.color,itemPrice.size',
      },
    },
    true
  );
};

const units = ref<any[]>([]);
const colors = ref<any[]>([]);
const sizes = ref<any[]>([]);
const listingApi = async () => {
  const result: any = await get(
    {
      entity: 'listing_api',
      query: {
        listingApi: 'units,colors,sizes',
      },
    },
    false
  );
  units.value = result.data.data.units;
  colors.value = result.data.data.colors;
  sizes.value = result.data.data.sizes;
};

// Function to add an attribute with an index
const addItemPrice = () => {
  if (item.value.item_price) {
    const nextId = Number(item.value.item_price.length) + 1; // Calculate the next id/index
    item.value.item_price?.push({
      id: nextId,
      original_price: 0,
      online_price: 0,
      selling_price: 0,
      category: null,
      unit: null
    });
  }
};

// Function to delete an attribute by index
const deleteItemPrice = (index: number) => {
  item.value.item_price?.splice(index, 1);
  // Recalculate IDs to ensure they are consecutive
  item.value.item_price?.forEach((attr: any, idx: number) => {
    attr.id = idx + 1;
  });
};

const createItemPrice = async () => {
  const isValid = await myForm.value?.validate();
  if (!isValid) {
    return;
  }

  const itemPrices = item.value.item_price?.map((v: any) => {
    return {
      color_id: v.color?.id,
      size_id: v.size?.id,
      unit_id: v.unit?.id,
      original_price: v.original_price,
      online_price: v.online_price,
      selling_price: v.selling_price,
      qty: v.qty,
    };
  });
  const result = await create(
    {
      entity: 'item-prices',
      data: {
        item_id: item.value.id,
        item_prices: itemPrices,
      },
    },
    true
  );
};

const changeOriginalPrice = (itemPrice: any, amount: number) => {
  itemPrice.original_price = amount;
};

const changeOnlinePrice = (itemPrice: any, amount: number) => {
  itemPrice.online_price = amount;
};

const changeSellingPrice = (itemPrice: any, amount: number) => {
  itemPrice.selling_price = amount;
};
</script>

<style scoped lang="scss">
.item-price-container {
  padding: 24px;
  max-width: 1200px;
  margin: 0 auto;
}

.item-price-header-section {
  padding: 16px 0;
}

.item-price-card {
  border-radius: 12px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  overflow: hidden;
}

.item-price-header {
  background: linear-gradient(135deg, #f5f7fa 0%, #ffffff 100%);
  padding: 24px;
}

.item-price-content {
  padding: 24px;
}

.info-group {
  background: #f8f9fa;
  border-radius: 8px;
  padding: 20px;
}

.empty-prices {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: 32px 16px;
  text-align: center;
}

.price-item-card {
  border-radius: 8px;
  padding: 16px;
  background: white;
}

.price-item-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding-bottom: 12px;
  margin-bottom: 12px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.08);
}

.delete-price-btn {
  min-width: 32px;
}

.price-grid {
  display: grid;
  grid-template-columns: repeat(4, minmax(0, 1fr));
  gap: 12px;
}

.form-actions {
  display: flex;
  justify-content: flex-end;
  gap: 12px;
  margin-top: 16px;
}

@media (max-width: 1024px) {
  .price-grid {
    grid-template-columns: repeat(2, minmax(0, 1fr));
  }
}

@media (max-width: 768px) {
  .item-price-container {
    padding: 16px;
  }

  .item-price-header {
    padding: 16px;
  }

  .item-price-content {
    padding: 16px;
  }

  .info-group {
    padding: 16px;
  }

  .price-grid {
    grid-template-columns: 1fr;
  }

  .form-actions {
    flex-direction: column;
    align-items: stretch;
  }
}
</style>
