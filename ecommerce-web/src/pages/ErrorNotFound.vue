<template>
  <div class="error-page">
    <div class="error-container">
      <!-- Logo -->
      <div class="error-logo">
        <BiliscartLogo :size="200" />
      </div>

      <!-- 404 Number -->
      <div class="error-code">
        404
      </div>

      <!-- Message -->
      <div class="error-title">
        Page Not Found
      </div>

      <div class="error-subtitle">
        Oops. The page you're looking for doesn't exist or has been moved.
      </div>

      <!-- Action Button -->
      <q-btn class="home-btn" unelevated to="/" label="Go Home" no-caps icon="home" />
    </div>
  </div>
</template>

<script setup lang="ts">
import BiliscartLogo from 'src/components/BiliscartLogo.vue';
</script>

<style scoped lang="scss">
.error-page {
  min-height: 100vh;
  background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 24px;
}

.error-container {
  text-align: center;
  max-width: 500px;
}

.error-logo {
  display: flex;
  justify-content: center;
  margin-bottom: 32px;
}

.error-code {
  font-size: 120px;
  font-weight: 900;
  background: linear-gradient(135deg, #312e81 0%, #6d28d9 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  line-height: 1;
  margin-bottom: 16px;
  letter-spacing: -4px;
}

.error-title {
  font-size: 32px;
  font-weight: 800;
  color: #1e1b4b;
  margin-bottom: 12px;
  letter-spacing: -0.5px;
}

.error-subtitle {
  font-size: 16px;
  color: #64748b;
  line-height: 1.6;
  margin-bottom: 40px;
  font-weight: 500;
}

.home-btn {
  background: linear-gradient(135deg, #312e81 0%, #6d28d9 100%);
  color: white;
  font-weight: 700;
  font-size: 15px;
  border-radius: 12px;
  padding: 0 32px;
  height: 48px;
  box-shadow: 0 4px 16px rgba(79, 70, 229, 0.35);
  transition: all 0.25s ease;

  &:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 24px rgba(79, 70, 229, 0.45);
  }
}

@media (max-width: 768px) {
  .error-code {
    font-size: 90px;
  }

  .error-title {
    font-size: 24px;
  }

  .error-subtitle {
    font-size: 14px;
  }
}

@media (max-width: 480px) {
  .error-code {
    font-size: 70px;
  }

  .error-title {
    font-size: 20px;
  }

  .home-btn {
    width: 100%;
  }
}
</style>
