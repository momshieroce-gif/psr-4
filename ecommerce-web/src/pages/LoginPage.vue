<template>
  <div class="login-page-container">
    <div class="login-wrapper">
      <!-- Breadcrumbs -->
      <div class="login-breadcrumbs q-mb-md">
        <BreadCrumbsWrapper :bread-crumbs="[
          {
            name: 'Login',
            path: '',
          },
        ]" />
      </div>

      <!-- Login Card -->
      <div class="login-card-wrapper">
        <q-card flat bordered class="login-card">
          <!-- Header -->
          <q-card-section class="login-header">
            <div class="login-icon-wrapper">
              <q-icon name="lock" size="48px" color="primary" />
            </div>
            <div class="text-h4 text-weight-bold q-mt-md login-header-title">
              Welcome Back
            </div>
            <div class="text-body2 q-mt-xs login-header-subtitle">
              Sign in to your account to continue shopping
            </div>
          </q-card-section>

          <q-separator />

          <!-- Login Form -->
          <q-card-section class="login-form-section">
            <div class="social-login-content">
              <div class="social-login-copy q-mb-lg">
                <div class="text-subtitle1 text-weight-medium q-mb-sm">
                  Continue with Facebook
                </div>
                <div class="form-helper-text">
                  Use your Facebook account to sign in quickly and continue shopping.
                </div>
              </div>

              <q-btn
                label="Continue with Facebook"
                color="primary"
                class="login-submit-btn facebook-login-btn full-width"
                unelevated
                size="lg"
                :loading="isSubmitting"
                @click="loginWithFacebook"
              />

              <div class="trust-section q-mt-lg">
                <div class="trust-item">
                  <q-icon name="lock" size="xs" color="positive" />
                  <span class="text-caption">Secure OAuth Login</span>
                </div>
                <div class="trust-item">
                  <q-icon name="verified" size="xs" color="positive" />
                  <span class="text-caption">Fast Account Access</span>
                </div>
              </div>
            </div>
          </q-card-section>

          <!-- Footer -->
          <q-card-section class="login-footer">
            <div class="text-body2 text-center text-grey-6">
              Don't have an account?
              <router-link to="/register" class="register-link">
                Create one here
              </router-link>
            </div>
          </q-card-section>
        </q-card>
      </div>
    </div>
  </div>
</template>

<script lang="ts" setup>
import BreadCrumbsWrapper from 'src/components/BreadCrumbsWrapper.vue';
import { onMounted, ref } from 'vue';
import { axios } from 'src/boot/axios';
import { useQuasar } from 'quasar';
import { useRouter, useRoute } from 'vue-router';
import { useUserStore } from 'src/stores/user';
import type { ProfileState } from 'boot/interfaces';

const router = useRouter();
const route = useRoute();
const $q = useQuasar();
const userStore = useUserStore();
const isSubmitting = ref(false);

const redirectTo = route.redirectedFrom?.fullPath;
const getFacebookLoginUrl = () => {
  return new URL('auth/facebook', axios.defaults.baseURL).toString();
};

const getQueryValue = (value: unknown): string => {
  if (Array.isArray(value)) {
    return value[0] ?? '';
  }

  return typeof value === 'string' ? value : '';
};

const getUserMenuFromQuery = (): ProfileState['userMenu'] => {
  const userMenu = getQueryValue(route.query.userMenu);

  if (!userMenu) {
    return [];
  }

  try {
    return JSON.parse(userMenu) as ProfileState['userMenu'];
  } catch (error) {
    return [];
  }
};

const finishLogin = async (token: string) => {
  const socialProfile: ProfileState = {
    token,
    name: getQueryValue(route.query.name) || null,
    mobile: getQueryValue(route.query.mobile),
    optimus_id: Number(getQueryValue(route.query.optimus_id) || 0),
    userMenu: getUserMenuFromQuery(),
  };

  userStore.setProfile(socialProfile);
  userStore.setUser(socialProfile);

  $q.notify({
    message: 'Facebook login successful! Welcome back.',
    type: 'positive',
    position: 'top',
    icon: 'check_circle'
  });

  await router.replace(redirectTo || '/');
};

const loginWithFacebook = () => {
  isSubmitting.value = true;
  window.location.href = getFacebookLoginUrl();
};

onMounted(async () => {
  const token = getQueryValue(route.query.token);
  const error = getQueryValue(route.query.error);

  if (error) {
    $q.notify({
      message: error === 'facebook_email_required'
        ? 'Facebook did not return an email address for this account.'
        : 'Facebook login failed. Please try again.',
      type: 'negative',
      position: 'top',
      icon: 'error'
    });
  }

  if (!token) {
    isSubmitting.value = false;
    return;
  }

  try {
    await finishLogin(token);
  } finally {
    isSubmitting.value = false;
  }
});
</script>

<style scoped lang="scss">
.login-page-container {
  min-height: calc(100vh - 64px);
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 32px 16px;
  background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
}

.login-wrapper {
  width: 100%;
  max-width: 500px;
}

.login-breadcrumbs {
  margin-bottom: 16px;
}

.login-card-wrapper {
  width: 100%;
}

.login-card {
  border-radius: 16px;
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.12);
  overflow: hidden;
  background: white;
}

.login-header {
  text-align: center;
  padding: 32px 24px 24px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
}

.login-icon-wrapper {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 80px;
  height: 80px;
  border-radius: 50%;
  background: rgba(255, 255, 255, 0.2);
  backdrop-filter: blur(10px);
  margin-bottom: 8px;

  .q-icon {
    color: white;
  }
}

.login-header-title,
.login-header-subtitle {
  color: white !important;
}

.login-header-title {
  text-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
}

.login-header-subtitle {
  opacity: 0.95;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
}

.login-form-section {
  padding: 32px 24px;
}

.login-form {
  .form-group {
    margin-bottom: 20px;
  }
}

.social-login-content {
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.form-label {
  display: flex;
  align-items: center;
  font-size: 14px;
  font-weight: 600;
  color: #1a1a1a;
  margin-bottom: 8px;
}

.login-input {
  :deep(.q-field__control) {
    height: 48px;
    min-height: 48px;
    border-radius: 8px;
    font-size: 15px;
    transition: all 0.3s ease;

    &:hover {
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
  }

  :deep(.q-field--focused .q-field__control) {
    box-shadow: 0 0 0 2px rgba(var(--q-primary-rgb), 0.2);
  }
}

.form-helper-text {
  font-size: 12px;
  color: #666;
  padding-left: 4px;
}

.login-submit-btn {
  height: 52px;
  font-size: 16px;
  font-weight: 600;
  border-radius: 8px;
  letter-spacing: 0.5px;
  transition: all 0.3s ease;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
  text-transform: none;

  &:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
  }
}

.facebook-login-btn {
  background: #1877f2 !important;
}

.trust-section {
  display: flex;
  justify-content: center;
  gap: 24px;
  padding: 16px 0;
  border-top: 1px solid #e0e0e0;
}

.trust-item {
  display: flex;
  align-items: center;
  gap: 6px;
  color: #666;
  font-size: 12px;
}

.login-footer {
  padding: 20px 24px;
  background: #f8f9fa;
  border-top: 1px solid #e0e0e0;
}

.register-link {
  color: var(--q-primary);
  text-decoration: none;
  font-weight: 600;
  transition: color 0.2s ease;

  &:hover {
    color: var(--q-primary);
    text-decoration: underline;
  }
}

@media (max-width: 600px) {
  .login-page-container {
    padding: 16px;
    min-height: calc(100vh - 64px);
  }

  .login-header {
    padding: 24px 16px 20px;
  }

  .login-icon-wrapper {
    width: 64px;
    height: 64px;

    .q-icon {
      font-size: 32px;
    }
  }

  .login-form-section {
    padding: 24px 16px;
  }

  .login-card {
    border-radius: 12px;
  }
}
</style>
