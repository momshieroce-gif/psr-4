<template>
  <div class="stores-page-container">
    <!-- Header Section -->
    <div class="page-header q-mb-md">
      <div class="header-content">
        <div class="header-title-section">
          <q-icon name="badge" size="32px" color="primary" class="q-mr-sm" />
          <h2 class="page-title">User Role Assignments</h2>
        </div>
      </div>
    </div>

    <!-- Assign Role Form -->
    <q-card flat bordered class="store-grid-item q-mb-lg">
      <div class="grid-row assign-form-row">
        <div class="assign-form-inner">
          <q-form @submit.prevent="onAssignRole" class="row q-col-gutter-md">
            <div class="col-12 col-md-4">
              <q-select
                v-model="selectedUserId"
                :options="users"
                option-value="optimus_id"
                option-label="label"
                emit-value
                map-options
                outlined
                dense
                label="Select user"
                :loading="usersLoading"
                clearable
                class="search-input"
              >
                <template v-slot:prepend>
                  <q-icon name="person" />
                </template>
              </q-select>
            </div>
            <div class="col-12 col-md-4">
              <q-select
                v-model="selectedRoleId"
                :options="roles"
                option-value="optimus_id"
                option-label="label"
                emit-value
                map-options
                outlined
                dense
                label="Select role"
                :loading="rolesLoading"
                clearable
                class="search-input"
              >
                <template v-slot:prepend>
                  <q-icon name="badge" />
                </template>
              </q-select>
            </div>
            <div class="col-12 col-md-4 flex items-center">
              <q-btn
                type="submit"
                unelevated
                color="primary"
                icon="add_circle"
                label="Assign role"
                :loading="assignLoading"
                :disable="!selectedUserId || !selectedRoleId"
                class="action-btn-mobile"
              />
            </div>
          </q-form>
        </div>
      </div>
    </q-card>

    <!-- Empty state when no form action yet -->
    <div v-if="!users.length && !usersLoading" class="empty-state-desktop">
      <q-icon name="person_off" size="80px" color="grey-4" />
      <div class="text-h5 q-mt-md text-grey-6">No users found</div>
      <div class="text-body2 text-grey-5 q-mt-sm">Users will appear here when loaded</div>
    </div>
  </div>
</template>
<script setup lang="ts">
import { onMounted, ref } from 'vue';
import { get } from 'src/boot/axios-call';
import { axios } from 'src/boot/axios';
import { Notify, Loading } from 'quasar';
import type { AxiosResponse } from 'axios';

interface UserOption {
  id: number;
  optimus_id: number;
  label: string;
}

interface RoleOption {
  id: number;
  optimus_id: number;
  label: string;
}

const users = ref<UserOption[]>([]);
const roles = ref<RoleOption[]>([]);
const usersLoading = ref(false);
const rolesLoading = ref(false);
const assignLoading = ref(false);
const selectedUserId = ref<number | null>(null);
const selectedRoleId = ref<number | null>(null);

async function loadUsers() {
  usersLoading.value = true;
  try {
    const res = (await get(
      { entity: 'users', query: { limit: 500 } },
      false
    )) as AxiosResponse<{ data: UserOption[] }>;
    users.value = res?.data?.data ?? [];
  } finally {
    usersLoading.value = false;
  }
}

async function loadRoles() {
  rolesLoading.value = true;
  try {
    const res = (await get(
      { entity: 'roles', query: { limit: 500 } },
      false
    )) as AxiosResponse<{ data: RoleOption[] }>;
    roles.value = res?.data?.data ?? [];
  } finally {
    rolesLoading.value = false;
  }
}

async function onAssignRole() {
  if (selectedUserId.value == null || selectedRoleId.value == null) return;
  assignLoading.value = true;
  Loading.show({ message: 'Assigning role...' });
  try {
    await axios.post('role-user', {
      user_id: selectedUserId.value,
      role_id: selectedRoleId.value,
    });
    Loading.hide();
    Notify.create({
      position: 'bottom',
      type: 'positive',
      message: 'Role assigned successfully.',
    });
    selectedUserId.value = null;
    selectedRoleId.value = null;
  } catch (e: unknown) {
    Loading.hide();
    const msg =
      (e as { response?: { data?: { message?: string } } })?.response?.data?.message ??
      'Failed to assign role.';
    Notify.create({ position: 'bottom', type: 'negative', message: msg });
  } finally {
    assignLoading.value = false;
  }
}

onMounted(() => {
  loadUsers();
  loadRoles();
});
</script>

<style scoped lang="scss">
@import 'src/css/dashboard/all-stores/index.scss';

.assign-form-row {
  grid-template-columns: 1fr;
  padding: 24px;
}

.assign-form-inner {
  width: 100%;
}

.assign-form-row .action-btn-mobile {
  min-height: 40px;
}
</style>
