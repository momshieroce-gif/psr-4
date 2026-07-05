<template>
  <CreateItemComponent :store-id="Number(storeId)" @submit="handleSubmit" @cancel="handleCancel" />
</template>

<script setup lang="ts">
import { onBeforeMount, ref } from 'vue';
import { useRoute, useRouter } from 'vue-router';
import { show } from 'src/boot/axios-call';
import CreateItemComponent from 'src/components/CreateItemComponent.vue';

const route = useRoute();
const router = useRouter();
const storeId = ref<number>(0);

onBeforeMount(async () => {
  const store = await show({
    entity: 'shared-store-access',
    optimus_id: Number(route.params.id),
  }) as { optimus_id: number };
  storeId.value = store.optimus_id;
});

const handleSubmit = () => {
  // TODO: Implement submit handler if needed
};

const handleCancel = () => {
  router.back();
};
</script>
