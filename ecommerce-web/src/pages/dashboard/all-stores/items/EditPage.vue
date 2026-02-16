<template>
  <div class="item-edit-container">
    <!-- Header Section -->
    <div class="item-edit-header-section q-mb-lg">
      <div class="row items-center">
        <div class="col">
          <div class="text-h4 text-weight-bold">
            <q-icon name="inventory_2" color="primary" class="q-mr-sm" />
            Edit Item
          </div>
          <div class="text-body2 text-grey-7 q-mt-xs">
            Update item details, category, and images
          </div>
        </div>
        <q-btn outline color="primary" icon="arrow_back" label="Back" @click="router.back()" />
      </div>
    </div>

    <!-- Edit Form Card -->
    <q-card flat bordered class="item-edit-card">
      <q-card-section class="item-edit-header">
        <div class="row items-center justify-between">
          <div class="col-auto">
            <div class="text-h6 text-weight-bold q-mb-xs">
              <q-icon name="edit" color="primary" class="q-mr-sm" />
              Item Information
            </div>
            <div class="text-body2 text-grey-7">
              Update the fields below and save changes
            </div>
          </div>
        </div>
      </q-card-section>

      <q-separator />

      <q-card-section class="item-edit-content">
        <q-form @submit.prevent="onSubmit" @reset="onReset" class="q-gutter-md" ref="myForm">
          <div class="info-group">
            <div class="text-subtitle2 text-weight-bold text-grey-8 q-mb-md">
              <q-icon name="info" size="sm" class="q-mr-xs" />
              Item Details
            </div>

            <div class="form-grid">
              <q-input
                v-model="item.name"
                outlined
                dense
                label="Item Name"
                :rules="[(val) => (val && val.length > 0) || 'Name is required.']"
                hide-bottom-space
              />
              <q-select
                dense
                v-model="item.category"
                :options="categories"
                label="Select Category"
                hide-bottom-space
                use-input
                outlined
                clearable
              />
            </div>

            <q-input
              type="textarea"
              v-model="item.description"
              outlined
              dense
              label="Description"
              :rules="[
                (val) => (val && val.length > 0) || 'Description is required.',
              ]"
            />
          </div>

          <div class="info-group q-mt-lg">
            <div class="text-subtitle2 text-weight-bold text-grey-8 q-mb-md">
              <q-icon name="photo_library" size="sm" class="q-mr-xs" />
              Item Images
            </div>

            <q-uploader
              accept=".png, .jpg, image/*"
              label="Upload Images"
              :multiple="true"
              @added="addImage"
              hide-upload-btn
              ref="uploader"
              @removed="removeImage"
              class="full-width uploader-card"
              max-files="6"
              color="secondary"
              flat
            >
              <template v-slot:list="scope">
                <q-list separator>
                  <q-item v-for="file in scope.files" :key="file.name">
                    <q-item-section>
                      <q-item-label class="full-width ellipsis">
                        {{ file.name }}
                      </q-item-label>
                      <q-item-label caption> Status: {{ file.__status }}</q-item-label>
                      <q-item-label caption>
                        {{ file.__sizeLabel }}
                      </q-item-label>
                    </q-item-section>

                    <q-item-section v-if="file.__img || file.__previewUrl" thumbnail>
                      <img :src="file.__previewUrl || file.__img?.src" />
                    </q-item-section>

                    <q-item-section top side>
                      <q-item-label caption>
                        <q-radio v-model="primaryImageName" :val="file.name" style="margin-top: 5px" />
                      </q-item-label>
                      <q-item-label caption>Primary</q-item-label>
                    </q-item-section>
                    <q-item-section top side>
                      <q-item-label caption>
                        <q-btn
                          class="q-ma-sm"
                          color="negative"
                          flat
                          dense
                          round
                          icon="far fa-trash-alt"
                          @click="scope.removeFile(file)"
                        />
                      </q-item-label>
                      <q-item-label caption>Remove</q-item-label>
                    </q-item-section>
                  </q-item>
                </q-list>
              </template>
            </q-uploader>
          </div>

          <div class="form-actions">
            <q-btn
              label="Update"
              type="submit"
              color="primary"
              unelevated
              icon="save"
              :loading="isSubmitting"
            />
            <q-btn label="Cancel" outline color="grey-8" icon="cancel" @click="router.back()" />
          </div>
        </q-form>
      </q-card-section>
    </q-card>
  </div>
</template>
<script setup lang="ts">
import { ref, onBeforeMount } from 'vue';
import { show, get, saveEntityWithImages } from 'src/boot/axios-call';
import { useRoute, useRouter } from 'vue-router';
import type { QForm } from 'quasar';

const route = useRoute();
const router = useRouter();
const myForm = ref<QForm | null>(null);
const isSubmitting = ref(false);

const onReset = () => {
    myForm.value?.resetValidation();
};

const item = ref<any>({
    name: '',
    description: '',
    images: [],
    category: undefined,
    unit: undefined,
});

onBeforeMount(async () => {
    await getItem();
    loadItemImage();
    listingApi();
});

const getItem = async () => {
    item.value = await show({
        entity: 'items',
        optimus_id: Number(route.params.itemId),
        query: {
            filters: `store_id:${route.params.id}`,
            with: 'category',
        },
    });
};

const categories = ref<any[]>([]);

const listingApi = async () => {
    const result: any = await get(
        {
            entity: 'listing_api',
            query: {
                listingApi: 'categories',
            },
        },
        false
    );
    categories.value = result.data.data.categories;
};

const selectedFiles = ref<any[]>([]);
const primaryImageName = ref('');
const addImage = (files: readonly any[]) => {
    for (var i = 0; i <= files.length; i++) {
        if (files[i] != undefined) {
            selectedFiles.value.push(files[i]);
        }
    }
    if (!primaryImageName.value && files[0]?.name) {
        primaryImageName.value = files[0].name;
    }
};

const deletedFiles = ref<number[]>([]);
const removeImage = (files: readonly any[]) => {
    const file = files[0];
    let newFiles = selectedFiles.value.filter(function (v: { name: string }) {
        if (v !== undefined) {
            return v.name !== file?.name;
        }
    });
    selectedFiles.value = newFiles;
    if (file?.id) {
        deletedFiles.value.push(file.id);
    }
};

const uploader = ref<any>(null);
const loadItemImage = () => {
    item.value.images?.forEach((file: any) => {
        if (file.is_primary == 1) {
            primaryImageName.value = file.name;
        }

        // Avoid fetching the file (CORS); use thumbnail for preview only.
        const previewUrl = file.path_thumbnail || file.path_url;
        const placeholderFile = new File([new Blob([''])], file.name || 'image.jpg', {
            type: 'image/jpeg',
        });

        const uploaderFile = Object.assign(placeholderFile, {
            __previewUrl: previewUrl,
            id: file.id,
        });

        uploader.value?.addFiles([uploaderFile]);
    });
};

const onSubmit = async () => {
    myForm.value?.validate().then(async (success: any) => {
        if (!success || isSubmitting.value) {
            return;
        }
        isSubmitting.value = true;
        try {
            const fd = new FormData();

            for (const selectedFile of selectedFiles.value) {
                if (!selectedFile.id) {
                    fd.append('files[]', selectedFile);
                }
            }

            for (const deletedFile of deletedFiles.value) {
                fd.append('deletedFiles[]', String(deletedFile));
            }

            if (!primaryImageName.value && selectedFiles.value[0]?.name) {
                primaryImageName.value = selectedFiles.value[0].name;
            }

            fd.append('primaryImageName', primaryImageName.value);
            fd.append('description', item.value.description || '');
            fd.append('name', item.value.name || '');
            fd.append('store_id', String(route.params.id || ''));

            const categoryId = item.value.category?.id;
            if (categoryId) {
                fd.append('category_id', String(categoryId));
            }

            await saveEntityWithImages({
                store_id: Number(route.params.id),
                entity: 'item-update',
                optimus_id: Number(route.params.itemId),
                fd: fd,
            });
        } finally {
            isSubmitting.value = false;
        }
    });
};
</script>

<style scoped lang="scss">
.item-edit-container {
  padding: 24px;
  max-width: 1200px;
  margin: 0 auto;
}

.item-edit-header-section {
  padding: 16px 0;
}

.item-edit-card {
  border-radius: 12px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
  overflow: hidden;
}

.item-edit-header {
  background: linear-gradient(135deg, #f5f7fa 0%, #ffffff 100%);
  padding: 24px;
}

.item-edit-content {
  padding: 24px;
}

.info-group {
  background: #f8f9fa;
  border-radius: 8px;
  padding: 20px;
}

.form-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 16px;
  margin-bottom: 16px;
}

.uploader-card {
  background: white;
  border: 1px solid rgba(0, 0, 0, 0.08);
  border-radius: 8px;
  padding: 8px;
}

.form-actions {
  display: flex;
  justify-content: flex-end;
  gap: 12px;
  margin-top: 16px;
}

@media (max-width: 768px) {
  .item-edit-container {
    padding: 16px;
  }

  .item-edit-header {
    padding: 16px;
  }

  .item-edit-content {
    padding: 16px;
  }

  .info-group {
    padding: 16px;
  }

  .form-grid {
    grid-template-columns: 1fr;
  }

  .form-actions {
    flex-direction: column;
    align-items: stretch;
  }
}
</style>
