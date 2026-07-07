<template>
  <div class="edit-page">
    <div class="edit-container">

      <!-- Hero Header -->
      <div class="page-hero">
        <div class="hero-accent-overlay"></div>
        <div class="hero-inner">
          <q-btn flat round dense icon="arrow_back" @click="handleBack" class="back-btn">
            <q-tooltip>Go Back</q-tooltip>
          </q-btn>
          <div class="hero-icon-wrap">
            <q-icon name="edit_note" size="28px" color="white" />
          </div>
          <div>
            <h1 class="page-title">Edit Item</h1>
            <div class="page-subtitle">Update item details, images, and category</div>
          </div>
        </div>
      </div>

      <!-- Form Card -->
      <div class="form-card">
        <q-form @submit.prevent="onSubmit" @reset="onReset" ref="myForm">

          <!-- Item Details Section -->
          <div class="form-section">
            <div class="section-header">
              <div class="section-icon-wrap details-icon">
                <q-icon name="description" size="20px" color="white" />
              </div>
              <div class="section-title">Item Details</div>
            </div>

            <div class="form-row">
              <div class="form-field">
                <label class="field-label">
                  <q-icon name="label" size="16px" class="label-icon" />
                  Item Name
                </label>
                <q-input v-model="item.name" outlined dense
                  :rules="[(val) => (val && val.length > 0) || 'Name is required.']" hide-bottom-space
                  class="dark-input" />
              </div>
              <div class="form-field">
                <label class="field-label">
                  <q-icon name="category" size="16px" class="label-icon" />
                  Category
                </label>
                <q-select dense v-model="item.category" :options="categories" hide-bottom-space use-input outlined
                  clearable class="dark-input" />
              </div>
            </div>

            <div class="form-field">
              <label class="field-label">
                <q-icon name="notes" size="16px" class="label-icon" />
                Description
              </label>
              <div class="wysiwyg-editor">
                <div class="editor-toolbar">
                  <q-btn flat dense size="sm" @click="execCommand('bold')" icon="format_bold" class="toolbar-btn">
                    <q-tooltip>Bold</q-tooltip>
                  </q-btn>
                  <q-btn flat dense size="sm" @click="execCommand('italic')" icon="format_italic" class="toolbar-btn">
                    <q-tooltip>Italic</q-tooltip>
                  </q-btn>
                  <q-btn flat dense size="sm" @click="execCommand('underline')" icon="format_underlined"
                    class="toolbar-btn">
                    <q-tooltip>Underline</q-tooltip>
                  </q-btn>
                  <div class="toolbar-divider"></div>
                  <q-btn flat dense size="sm" @click="execCommand('insertUnorderedList')" icon="format_list_bulleted"
                    class="toolbar-btn">
                    <q-tooltip>Bullet List</q-tooltip>
                  </q-btn>
                  <q-btn flat dense size="sm" @click="execCommand('insertOrderedList')" icon="format_list_numbered"
                    class="toolbar-btn">
                    <q-tooltip>Numbered List</q-tooltip>
                  </q-btn>
                </div>
                <div class="editor-content" contenteditable="true" @input="onEditorInput" ref="editorRef"
                  data-placeholder="Enter item description..."></div>
              </div>
              <div v-if="!item.description" class="field-error">
                <q-icon name="error_outline" size="14px" class="q-mr-xs" />
                Description is required.
              </div>
            </div>
          </div>

          <!-- Images Section -->
          <div class="form-section">
            <div class="section-header">
              <div class="section-icon-wrap images-icon">
                <q-icon name="photo_library" size="20px" color="white" />
              </div>
              <div class="section-title">Item Images</div>
              <div v-if="item.images && item.images.length > 0" class="image-count-badge">
                {{ item.images.length }} image{{ item.images.length !== 1 ? 's' : '' }}
              </div>
            </div>

            <!-- Existing Images -->
            <div v-if="item.images && item.images.length > 0" class="images-grid">
              <div v-for="image in item.images" :key="image.id" class="image-item">
                <div class="image-wrapper">
                  <img :src="image.path_thumbnail || image.path_url" class="image-preview" />
                  <div class="image-overlay">
                    <q-badge v-if="image.is_primary" class="primary-badge">
                      <q-icon name="star" size="12px" class="q-mr-xs" />
                      Primary
                    </q-badge>
                  </div>
                </div>
                <div class="image-actions">
                  <q-btn v-if="!image.is_primary" flat dense icon="star_outline" size="sm"
                    @click="setPrimaryImage(image)" class="img-action-btn primary-action">
                    <q-tooltip>Set as Primary</q-tooltip>
                  </q-btn>
                  <q-btn flat dense icon="delete_outline" size="sm" @click="deleteImage(image)"
                    class="img-action-btn delete-action">
                    <q-tooltip>Delete</q-tooltip>
                  </q-btn>
                </div>
              </div>
            </div>

            <!-- Upload New Images -->
            <div class="upload-area">
              <div class="upload-icon-wrap">
                <q-icon name="cloud_upload" size="32px" color="white" />
              </div>
              <div class="upload-text">Drop images here or click to upload</div>
              <q-file label="Browse files" outlined dense multiple accept="image/*" class="upload-input"
                :model-value="null" @update:model-value="handleFileChange">
                <template v-slot:prepend>
                  <q-icon name="attach_file" />
                </template>
              </q-file>

              <div v-if="previewNewImages.length > 0" class="preview-grid">
                <div v-for="(file, index) in previewNewImages" :key="index" class="preview-item">
                  <img :src="previewUrl(file)" class="preview-image" />
                  <q-btn flat dense round icon="close" size="xs" class="remove-btn" @click="removeNewImage(index)" />
                </div>
              </div>
            </div>
          </div>

          <!-- Price Variations Section -->
          <div class="form-section">
            <div class="section-header">
              <div class="section-icon-wrap prices-icon">
                <q-icon name="attach_money" size="20px" color="white" />
              </div>
              <div class="section-title">Price Variations</div>
              <div v-if="item.item_price && item.item_price.length > 0" class="price-count-badge">
                {{ item.item_price.length }} price{{ item.item_price.length !== 1 ? 's' : '' }}
              </div>
              <q-btn unelevated icon="add" label="Add Price" @click="addItemPrice" class="add-price-btn">
                <q-tooltip>Add price variation</q-tooltip>
              </q-btn>
            </div>

            <!-- Empty state -->
            <div v-if="!item.item_price || item.item_price.length === 0" class="price-empty-state">
              <div class="price-empty-icon-wrap">
                <q-icon name="sell" size="36px" color="white" />
              </div>
              <div class="price-empty-text">No prices added yet</div>
              <div class="price-empty-subtext">Click "Add Price" to set pricing options</div>
            </div>

            <!-- Price cards -->
            <div v-if="item.item_price && item.item_price.length > 0" class="price-cards-list">
              <div v-for="(itemPrice, index) in item.item_price" :key="itemPrice.id || index" class="price-card">
                <div class="price-card-header">
                  <div class="price-card-num">
                    <div class="price-num-badge">{{ Number(index) + 1 }}</div>
                    <span class="price-card-title">Price Option {{ Number(index) + 1 }}</span>
                  </div>
                  <q-btn flat round dense icon="close" @click="deleteItemPrice(Number(index))" class="delete-btn">
                    <q-tooltip>Remove</q-tooltip>
                  </q-btn>
                </div>
                <div class="price-card-divider"></div>
                <div class="price-fields">
                  <q-select dense v-model="itemPrice.unit" :options="units" label="Unit" hide-bottom-space use-input
                    outlined :rules="[(val) => !!val || 'Unit is required.']" class="dark-input price-field" />
                  <input-amount label="Original Price" :value="itemPrice.original_price"
                    @input="(amount) => changeOriginalPrice(itemPrice, amount)" class="dark-input price-field" />
                  <input-amount label="Online Price" :value="itemPrice.online_price"
                    @input="(amount) => changeOnlinePrice(itemPrice, amount)" class="dark-input price-field" />
                  <input-amount label="Selling Price" :value="itemPrice.selling_price"
                    @input="(amount) => changeSellingPrice(itemPrice, amount)" class="dark-input price-field" />
                  <q-input v-model="itemPrice.qty" label="Quantity" outlined dense type="number" min="0"
                    :rules="[(val) => (val !== null && val !== undefined && val !== '') || 'Quantity is required.']"
                    class="dark-input price-field" />
                </div>
              </div>
            </div>
          </div>

          <!-- Actions -->
          <div class="form-actions">
            <q-btn label="Cancel" flat @click="handleBack" class="cancel-btn">
              <q-icon name="close" size="18px" class="q-mr-xs" />
            </q-btn>
            <q-btn label="Update Item" type="submit" unelevated :loading="isSubmitting" class="submit-btn">
              <q-icon name="check" size="18px" class="q-mr-xs" />
            </q-btn>
          </div>
        </q-form>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, onBeforeMount, computed, watch, nextTick } from 'vue';
import { useRouter } from 'vue-router';
import { show, get, deleteEntity } from 'src/boot/axios-call';
import { axios } from 'src/boot/axios';
import type { QForm } from 'quasar';
import { Notify, Loading } from 'quasar';
import InputAmount from 'src/components/inputs/InputAmount.vue';

interface ItemPrice {
  id: number;
  item_id: number;
  unit_id: number;
  color_id: number | null;
  size_id: number | null;
  qty: number | string;
  original_price: number;
  selling_price: number;
  online_price: number;
  unit?: any;
}

interface ItemImage {
  id: number;
  optimus_id: number;
  name: string;
  path: string;
  path_thumbnail?: string;
  path_url?: string;
  is_primary: boolean;
}

interface Category {
  id: number;
  name: string;
}

interface Item {
  id: number;
  optimus_id: number;
  name: string;
  description: string;
  images: ItemImage[];
  category?: Category;
  unit?: any;
  item_price?: ItemPrice[];
}

interface EditItemProps {
  storeId: number;
  itemId: number;
}

const props = defineProps<EditItemProps>();

const emit = defineEmits<{
  (e: 'submit'): void;
  (e: 'cancel'): void;
}>();

const router = useRouter();
const myForm = ref<QForm | null>(null);
const isSubmitting = ref(false);
const editorRef = ref<HTMLElement | null>(null);

const onReset = () => {
  myForm.value?.resetValidation();
};

const item = ref<Item>({
  id: 0,
  optimus_id: 0,
  name: '',
  description: '',
  images: [],
  category: undefined,
  unit: undefined,
  item_price: [],
});

// WYSIWYG Editor Functions
const execCommand = (command: string) => {
  document.execCommand(command, false, undefined);
  editorRef.value?.focus();
};

const onEditorInput = () => {
  if (editorRef.value) {
    item.value.description = editorRef.value.innerHTML;
  }
};

// Watch for item changes to update editor content
watch(() => item.value.description, async (newDescription) => {
  if (editorRef.value && newDescription && editorRef.value.innerHTML !== newDescription) {
    await nextTick();
    editorRef.value.innerHTML = newDescription;
  }
});

const newImages = ref<File[]>([]);
const previewNewImages = computed(() => newImages.value);

const handleFileChange = (files: File[]) => {
  if (!files || files.length === 0) return;
  newImages.value = [...newImages.value, ...files];
};

const previewUrl = (file: File) => {
  return URL.createObjectURL(file);
};

onBeforeMount(async () => {
  await getItem();
  listingApi();
});

const getItem = async () => {
  item.value = await show({
    entity: 'items',
    optimus_id: props.itemId,
    query: {
      filters: `store_id:${props.storeId}`,
      with: 'category,itemPrice.unit',
    },
  });
};

const categories = ref<Category[]>([]);
const units = ref<any[]>([]);

const listingApi = async () => {
  const result = await get(
    {
      entity: 'listing_api',
      query: {
        listingApi: 'categories',
      },
    },
    false
  );
  if (result && typeof result === 'object' && 'data' in result) {
    const apiResponse = result as { data: { categories: Category[] } };
    if (apiResponse.data) {
      categories.value = apiResponse.data.categories;
    }
  }

  const unitsResult = await get(
    {
      entity: 'listing_api',
      query: {
        listingApi: 'units',
      },
    },
    false
  );
  if (unitsResult && typeof unitsResult === 'object' && 'data' in unitsResult) {
    const unitsApiResponse = unitsResult as { data: { data: { units: any[] } } };
    if (unitsApiResponse.data?.data?.units) {
      units.value = unitsApiResponse.data.data.units;
    }
  }
};

const removeNewImage = (index: number) => {
  newImages.value.splice(index, 1);
};

const addItemPrice = () => {
  if (item.value.item_price) {
    const nextId = item.value.item_price.length > 0
      ? Math.max(...item.value.item_price.map(p => p.id)) + 1
      : 1;
    item.value.item_price?.push({
      id: nextId,
      item_id: item.value.id,
      original_price: 0,
      online_price: 0,
      selling_price: 0,
      color_id: null,
      size_id: null,
      unit_id: 0,
      unit: null,
      qty: '',
    });
  }
};

const deleteItemPrice = (index: number) => {
  item.value.item_price?.splice(index, 1);
};

const changeOriginalPrice = (itemPrice: ItemPrice, amount: number) => {
  itemPrice.original_price = amount;
};

const changeOnlinePrice = (itemPrice: ItemPrice, amount: number) => {
  itemPrice.online_price = amount;
};

const changeSellingPrice = (itemPrice: ItemPrice, amount: number) => {
  itemPrice.selling_price = amount;
};

const setPrimaryImage = async (image: ItemImage) => {
  try {
    Loading.show({ message: 'Setting primary image...' });
    await axios.post('update-primary-image', {
      entity: 'Item',
      id: item.value.id,
      primaryName: image.name,
    });
    await getItem();
    Loading.hide();
    Notify.create({
      position: 'bottom',
      type: 'positive',
      message: 'Primary image set successfully.',
    });
  } catch (e: unknown) {
    Loading.hide();
    const msg =
      (e as { response?: { data?: { message?: string } } })?.response?.data?.message ||
      'Failed to set primary image.';
    Notify.create({ position: 'bottom', type: 'negative', message: msg });
  }
};

const deleteImage = async (image: ItemImage) => {
  try {
    Loading.show({ message: 'Deleting image...' });
    await deleteEntity({
      entity: 'images',
      optimus_id: image.optimus_id,
      label: 'Image',
    });
    await getItem();
    Loading.hide();
    Notify.create({
      position: 'bottom',
      type: 'positive',
      message: 'Image deleted successfully.',
    });
  } catch (e: unknown) {
    Loading.hide();
    const msg =
      (e as { response?: { data?: { message?: string } } })?.response?.data?.message ||
      'Failed to delete image.';
    Notify.create({ position: 'bottom', type: 'negative', message: msg });
  }
};

const onSubmit = async () => {
  myForm.value?.validate().then(async (success: boolean) => {
    if (!success) {
      return;
    }
    isSubmitting.value = true;
    Loading.show({ message: 'Updating item...' });
    try {
      const formData = new FormData();
      formData.append('store_id', String(props.storeId));
      formData.append('name', item.value.name);
      formData.append('description', item.value.description);
      if (item.value.category) {
        formData.append('category_id', String(item.value.category.id));
      }
      if (newImages.value.length > 0) {
        newImages.value.forEach((file) => {
          formData.append('images[]', file);
        });
      }

      // Add item prices to form data
      if (item.value.item_price && item.value.item_price.length > 0) {
        const itemPrices = item.value.item_price.map((v) => ({
          unit_id: v.unit?.id || v.unit_id,
          original_price: v.original_price,
          online_price: v.online_price,
          selling_price: v.selling_price,
          qty: v.qty,
        }));
        formData.append('item_prices', JSON.stringify(itemPrices));
      }

      await axios.post(
        `item-update/${item.value.optimus_id}`,
        formData,
        {
          headers: {
            'Content-Type': 'multipart/form-data',
          },
        }
      );
      Loading.hide();
      Notify.create({
        position: 'bottom',
        type: 'positive',
        message: 'Item updated successfully.',
      });
      emit('submit');
      await getItem();
      newImages.value = [];
    } catch (e: unknown) {
      Loading.hide();
      const msg =
        (e as { response?: { data?: { message?: string } } })?.response?.data?.message ||
        'Failed to update item.';
      Notify.create({ position: 'bottom', type: 'negative', message: msg });
    } finally {
      isSubmitting.value = false;
    }
  });
};

const handleBack = () => {
  emit('cancel');
  router.back();
};
</script>

<style scoped lang="scss">
// ── Dark theme tokens (matching DashboardLayout and ProfilePage) ─────────────
$dark-base: #0f172a;
$dark-card: #1e293b;
$dark-elevated: #273549;
$border: rgba(255, 255, 255, 0.08);
$border-strong: rgba(255, 255, 255, 0.12);
$accent: #6366f1;
$accent-2: #7c3aed;
$green: #10b981;
$green-2: #059669;
$blue: #3b82f6;
$red: #ef4444;
$yellow: #fbbf24;
$white: #ffffff;
$muted: rgba(255, 255, 255, 0.5);
$muted-2: rgba(255, 255, 255, 0.3);

// ── Page ─────────────────────────────────────────────────────────────────────
.edit-page {
  min-height: 100vh;
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
  color: $white;
}

.edit-container {
  max-width: 960px;
  margin: 0 auto;
  padding: 28px 24px 60px;
}

// ── Hero Header ──────────────────────────────────────────────────────────────
.page-hero {
  position: relative;
  background: $dark-card;
  border-radius: 20px;
  border: 1px solid $border;
  box-shadow: 0 8px 40px rgba(0, 0, 0, 0.3);
  overflow: hidden;
  margin-bottom: 32px;
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
  padding: 32px 36px;
  gap: 16px;
}

.back-btn {
  width: 44px;
  height: 44px;
  border-radius: 14px;
  background: rgba(255, 255, 255, 0.08) !important;
  color: $white !important;
  transition: all 0.25s ease;
  flex-shrink: 0;

  &:hover {
    background: rgba(255, 255, 255, 0.14) !important;
    transform: translateX(-3px);
  }
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

// ── Form Card ────────────────────────────────────────────────────────────────
.form-card {
  background: $dark-card;
  border: 1px solid $border;
  border-radius: 20px;
  padding: 40px;
  box-shadow: 0 8px 40px rgba(0, 0, 0, 0.25);
}

// ── Form Sections ────────────────────────────────────────────────────────────
.form-section {
  margin-bottom: 40px;
  padding-bottom: 40px;
  border-bottom: 1px solid $border;

  &:last-of-type {
    border-bottom: none;
    margin-bottom: 0;
    padding-bottom: 0;
  }
}

.section-header {
  display: flex;
  align-items: center;
  gap: 14px;
  margin-bottom: 28px;
}

.section-icon-wrap {
  width: 40px;
  height: 40px;
  border-radius: 12px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;

  &.details-icon {
    background: linear-gradient(135deg, $accent 0%, $accent-2 100%);
    box-shadow: 0 4px 16px rgba(99, 102, 241, 0.3);
  }

  &.images-icon {
    background: linear-gradient(135deg, $green 0%, $green-2 100%);
    box-shadow: 0 4px 16px rgba(16, 185, 129, 0.3);
  }

  &.prices-icon {
    background: linear-gradient(135deg, #f59e0b 0%, #d97706 100%);
    box-shadow: 0 4px 16px rgba(245, 158, 11, 0.3);
  }
}

.section-title {
  font-size: 18px;
  font-weight: 700;
  color: $white;
  flex: 1;
}

.image-count-badge {
  background: rgba($accent, 0.15);
  color: #a5b4fc;
  font-size: 12px;
  font-weight: 600;
  padding: 6px 14px;
  border-radius: 20px;
  border: 1px solid rgba($accent, 0.2);
}

.price-count-badge {
  background: rgba(245, 158, 11, 0.15);
  color: #fcd34d;
  font-size: 12px;
  font-weight: 600;
  padding: 6px 14px;
  border-radius: 20px;
  border: 1px solid rgba(245, 158, 11, 0.2);
}

.add-price-btn {
  background: linear-gradient(135deg, #f59e0b 0%, #d97706 100%) !important;
  color: $white !important;
  border-radius: 10px !important;
  font-weight: 700 !important;
  font-size: 13px !important;
  text-transform: none !important;
  letter-spacing: 0 !important;
  height: 38px !important;
  padding: 0 16px !important;
  box-shadow: 0 4px 14px rgba(245, 158, 11, 0.4) !important;
  flex-shrink: 0;

  &:hover {
    box-shadow: 0 6px 20px rgba(245, 158, 11, 0.55) !important;
  }
}

// ── Form Fields ──────────────────────────────────────────────────────────────
.form-row {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 24px;
  margin-bottom: 24px;
}

.form-field {
  margin-bottom: 24px;

  &:last-child {
    margin-bottom: 0;
  }
}

.field-label {
  display: flex;
  align-items: center;
  gap: 8px;
  font-size: 13px;
  font-weight: 600;
  color: $muted;
  margin-bottom: 10px;
  text-transform: uppercase;
  letter-spacing: 0.4px;
}

.label-icon {
  color: $muted-2;
}

.dark-input {
  :deep(.q-field__control) {
    background: $dark-elevated !important;
    border-color: $border !important;
    border-radius: 12px !important;
    color: $white !important;
    transition: all 0.2s ease;
  }

  :deep(.q-field__control:hover) {
    border-color: $border-strong !important;
  }

  :deep(.q-field--focused .q-field__control) {
    border-color: rgba($accent, 0.5) !important;
    box-shadow: 0 0 0 3px rgba($accent, 0.1);
  }

  :deep(.q-field__native) {
    color: $white !important;
    font-size: 14px;
  }

  :deep(.q-field__native::placeholder) {
    color: $muted-2 !important;
  }

  :deep(.q-field__label) {
    color: $muted !important;
  }

  :deep(.q-field__marginal) {
    color: $muted !important;
  }
}

// ── WYSIWYG Editor ───────────────────────────────────────────────────────────
.wysiwyg-editor {
  border: 1px solid $border;
  border-radius: 14px;
  overflow: hidden;
  transition: all 0.2s ease;
  background: $dark-elevated;

  &:focus-within {
    border-color: rgba($accent, 0.5);
    box-shadow: 0 0 0 3px rgba($accent, 0.1);
  }
}

.editor-toolbar {
  display: flex;
  align-items: center;
  gap: 2px;
  padding: 10px 12px;
  background: rgba(0, 0, 0, 0.2);
  border-bottom: 1px solid $border;
}

.toolbar-btn {
  color: $muted !important;
  border-radius: 8px !important;
  width: 34px;
  height: 34px;
  transition: all 0.15s ease;

  &:hover {
    background: rgba(255, 255, 255, 0.08) !important;
    color: $white !important;
  }
}

.toolbar-divider {
  width: 1px;
  height: 20px;
  background: $border;
  margin: 0 6px;
}

.editor-content {
  min-height: 160px;
  padding: 18px 20px;
  outline: none;
  line-height: 1.7;
  color: rgba(255, 255, 255, 0.85);
  font-size: 14px;

  &:empty:before {
    content: attr(data-placeholder);
    color: $muted-2;
  }

  ul,
  ol {
    padding-left: 20px;
  }

  strong {
    font-weight: 700;
    color: $white;
  }

  em {
    font-style: italic;
  }

  u {
    text-decoration: underline;
  }
}

.field-error {
  display: flex;
  align-items: center;
  color: $red;
  font-size: 12px;
  font-weight: 500;
  margin-top: 8px;
}

// ── Images Grid ──────────────────────────────────────────────────────────────
.images-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(160px, 1fr));
  gap: 16px;
  margin-bottom: 24px;
}

.image-item {
  background: $dark-elevated;
  border: 1px solid $border;
  border-radius: 14px;
  overflow: hidden;
  transition: all 0.25s ease;

  &:hover {
    border-color: rgba($accent, 0.3);
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.3);
    transform: translateY(-2px);
  }
}

.image-wrapper {
  position: relative;
  aspect-ratio: 1;
  overflow: hidden;
}

.image-preview {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s ease;

  .image-item:hover & {
    transform: scale(1.05);
  }
}

.image-overlay {
  position: absolute;
  inset: 0;
  background: linear-gradient(180deg, transparent 50%, rgba(0, 0, 0, 0.6) 100%);
  display: flex;
  align-items: flex-end;
  justify-content: flex-start;
  padding: 10px;
}

.primary-badge {
  background: linear-gradient(135deg, $yellow 0%, #f59e0b 100%) !important;
  color: #1a1a1a !important;
  font-weight: 700;
  font-size: 11px;
  padding: 4px 10px;
  border-radius: 8px;
}

.image-actions {
  display: flex;
  justify-content: center;
  gap: 4px;
  padding: 10px;
  background: rgba(0, 0, 0, 0.15);
  border-top: 1px solid $border;
}

.img-action-btn {
  border-radius: 8px !important;
  transition: all 0.2s ease;

  &.primary-action {
    color: $yellow !important;

    &:hover {
      background: rgba($yellow, 0.12) !important;
    }
  }

  &.delete-action {
    color: $red !important;

    &:hover {
      background: rgba($red, 0.12) !important;
    }
  }
}

// ── Upload Area ──────────────────────────────────────────────────────────────
.upload-area {
  border: 2px dashed rgba($accent, 0.25);
  border-radius: 16px;
  padding: 32px 24px;
  background: rgba($accent, 0.04);
  text-align: center;
  transition: all 0.25s ease;

  &:hover {
    border-color: rgba($accent, 0.45);
    background: rgba($accent, 0.08);
  }
}

.upload-icon-wrap {
  width: 64px;
  height: 64px;
  border-radius: 16px;
  background: linear-gradient(135deg, rgba($accent, 0.2) 0%, rgba($accent-2, 0.12) 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto 16px;
}

.upload-text {
  font-size: 14px;
  color: $muted;
  margin-bottom: 16px;
  font-weight: 500;
}

.upload-input {
  max-width: 280px;
  margin: 0 auto;

  :deep(.q-field__control) {
    background: $dark-elevated !important;
    border-color: $border !important;
    border-radius: 12px !important;
    color: $white !important;
  }

  :deep(.q-field__native) {
    color: $white !important;
    font-size: 13px;
  }

  :deep(.q-field__label) {
    color: $muted !important;
  }

  :deep(.q-field__marginal) {
    color: $muted !important;
  }
}

.preview-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(90px, 1fr));
  gap: 12px;
  margin-top: 20px;
}

.preview-item {
  position: relative;
  aspect-ratio: 1;
  border-radius: 12px;
  overflow: hidden;
  border: 1px solid $border;
  transition: all 0.2s ease;

  &:hover {
    border-color: rgba($accent, 0.3);
  }
}

.preview-image {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.remove-btn {
  position: absolute;
  top: 6px;
  right: 6px;
  width: 24px !important;
  height: 24px !important;
  background: rgba($red, 0.85) !important;
  color: $white !important;
  border-radius: 8px !important;
  transition: all 0.2s ease;

  &:hover {
    background: $red !important;
    transform: scale(1.1);
  }
}

// ── Price Variations Section ───────────────────────────────────────────────────
.price-empty-state {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: 60px 32px;
  border: 2px dashed rgba(255, 255, 255, 0.10);
  border-radius: 16px;
  text-align: center;
}

.price-empty-icon-wrap {
  width: 72px;
  height: 72px;
  border-radius: 20px;
  background: linear-gradient(135deg, rgba(245, 158, 11, 0.2) 0%, rgba(217, 119, 6, 0.12) 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 16px;
}

.price-empty-text {
  font-size: 16px;
  font-weight: 700;
  color: $white;
  margin-bottom: 6px;
}

.price-empty-subtext {
  font-size: 13px;
  color: $muted;
}

.price-cards-list {
  display: flex;
  flex-direction: column;
  gap: 16px;
  margin-top: 20px;
}

.price-card {
  background: $dark-elevated;
  border: 1px solid $border;
  border-radius: 16px;
  overflow: hidden;
  transition: border-color 0.2s, box-shadow 0.2s;

  &:hover {
    border-color: rgba(245, 158, 11, 0.3);
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.25);
  }
}

.price-card-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 14px 18px;
  background: rgba(255, 255, 255, 0.03);
}

.price-card-num {
  display: flex;
  align-items: center;
  gap: 10px;
}

.price-num-badge {
  width: 26px;
  height: 26px;
  border-radius: 8px;
  background: linear-gradient(135deg, #f59e0b 0%, #d97706 100%);
  color: $white;
  font-size: 12px;
  font-weight: 800;
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow: 0 2px 8px rgba(245, 158, 11, 0.35);
  flex-shrink: 0;
}

.price-card-title {
  font-size: 14px;
  font-weight: 700;
  color: $white;
}

.delete-btn {
  color: $muted !important;
  border-radius: 8px !important;
  transition: color 0.2s, background 0.2s !important;

  &:hover {
    color: #fca5a5 !important;
    background: rgba(239, 68, 68, 0.12) !important;
  }
}

.price-card-divider {
  height: 1px;
  background: $border;
}

.price-fields {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 16px;
  padding: 20px 18px;
}

.price-field {
  width: 100%;
}

// ── Form Actions ─────────────────────────────────────────────────────────────
.form-actions {
  display: flex;
  gap: 12px;
  justify-content: flex-end;
  padding-top: 32px;
  margin-top: 8px;
  border-top: 1px solid $border;
}

.submit-btn {
  height: 48px;
  padding: 0 32px;
  font-size: 14px;
  font-weight: 700;
  border-radius: 14px;
  background: linear-gradient(135deg, $accent 0%, $accent-2 100%) !important;
  color: $white !important;
  letter-spacing: 0.3px;
  transition: all 0.25s ease;
  box-shadow: 0 4px 16px rgba(99, 102, 241, 0.3);

  &:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 24px rgba(99, 102, 241, 0.45);
  }

  &:active {
    transform: translateY(0);
  }
}

.cancel-btn {
  height: 48px;
  padding: 0 28px;
  font-size: 14px;
  font-weight: 600;
  border-radius: 14px;
  background: rgba(255, 255, 255, 0.06) !important;
  color: $muted !important;
  border: 1px solid $border !important;
  transition: all 0.25s ease;

  &:hover {
    background: rgba(255, 255, 255, 0.1) !important;
    color: $white !important;
    border-color: $border-strong !important;
  }
}

// ── Responsive ───────────────────────────────────────────────────────────────
@media (max-width: 768px) {
  .edit-container {
    padding: 16px 12px 48px;
  }

  .hero-inner {
    flex-wrap: wrap;
    padding: 24px 20px;
    gap: 12px;
  }

  .page-title {
    font-size: 22px;
  }

  .form-card {
    padding: 24px 20px;
    border-radius: 16px;
  }

  .form-row {
    grid-template-columns: 1fr;
    gap: 0;
  }

  .images-grid {
    grid-template-columns: repeat(auto-fill, minmax(120px, 1fr));
    gap: 12px;
  }

  .upload-area {
    padding: 24px 16px;
  }

  .price-fields {
    grid-template-columns: 1fr;
  }

  .add-price-btn {
    width: 100% !important;
  }

  .form-actions {
    flex-direction: column-reverse;
  }

  .submit-btn,
  .cancel-btn {
    width: 100%;
    justify-content: center;
  }
}
</style>
