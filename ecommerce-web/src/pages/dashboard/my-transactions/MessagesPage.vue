<template>
    <div class="messages-page">

        <!-- Hero Header -->
        <div class="page-hero q-mb-lg">
            <div class="hero-accent-overlay"></div>
            <div class="hero-inner">
                <q-btn flat round dense icon="arrow_back" class="hero-back-btn" @click="$router.back()">
                    <q-tooltip>Back to Transaction</q-tooltip>
                </q-btn>
                <div class="hero-icon-wrap">
                    <q-icon name="chat_bubble" size="26px" color="white" />
                </div>
                <div>
                    <h2 class="hero-title">Transaction Messages</h2>
                    <div class="hero-subtitle">Communicate about your order</div>
                </div>
            </div>
        </div>

        <!-- Messages Container -->
        <div class="messages-container">
            <div class="messages-list">
                <div v-if="messages.length === 0" class="empty-state">
                    <q-icon name="chat_bubble_outline" size="64px" color="white" />
                    <div class="empty-text">No messages yet</div>
                    <div class="empty-subtext">Start the conversation</div>
                </div>

                <div v-for="message in messages" :key="message.id"
                    :class="['message-item', { 'own-message': isOwnMessage(message) }]">
                    <div class="message-avatar">
                        <q-icon :name="isOwnMessage(message) ? 'person' : 'store'" size="20px" color="white" />
                    </div>
                    <div class="message-content">
                        <div class="message-header">
                            <span class="message-sender">{{ isOwnMessage(message) ? 'You' : 'Store' }}</span>
                            <span class="message-time">{{ formatTime(message.created_at) }}</span>
                        </div>
                        <div v-if="message.message" class="message-text">{{ message.message }}</div>
                        <div v-if="message.transaction_media && message.transaction_media.length > 0"
                            class="message-media">
                            <div v-for="media in message.transaction_media" :key="media.id" class="media-item">
                                <img v-if="media.type === 'image'" :src="'/storage/' + media.path" alt="Attachment"
                                    class="media-image" />
                                <video v-else-if="media.type === 'video'" :src="'/storage/' + media.path" controls
                                    class="media-video" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Message Input -->
            <div class="message-input-section">
                <!-- File Previews -->
                <div v-if="filePreviews.length > 0" class="file-previews">
                    <div v-for="(preview, index) in filePreviews" :key="index"
                        :class="['file-preview', { 'file-preview-video': !preview.preview }]">
                        <img v-if="preview.preview" :src="preview.preview" alt="Preview" class="preview-image" />
                        <div v-else class="video-preview">
                            <q-icon name="videocam" size="32px" color="white" />
                            <div class="file-name">{{ preview.file.name }}</div>
                        </div>
                        <q-btn flat round dense icon="close" class="preview-close" @click="clearFile(index)" />
                    </div>
                </div>

                <div class="input-wrapper">
                    <q-btn flat round dense icon="attach_file" class="attach-btn" @click="fileInput?.click()">
                        <q-tooltip>Attach photo or video (max 5)</q-tooltip>
                    </q-btn>
                    <input ref="fileInput" type="file" accept="image/*,video/*" multiple style="display: none"
                        @change="handleFileSelect" />
                    <q-input v-model="newMessage" placeholder="Type your message..." outlined dense autogrow
                        class="message-input" @keydown.enter="sendMessage" :loading="sending" />
                    <q-btn unelevated icon="send" color="primary" @click="sendMessage"
                        :disable="!newMessage.trim() && selectedFiles.length === 0" class="send-btn" />
                </div>
            </div>
        </div>

    </div>
</template>

<script setup lang="ts">
import { show, get, create } from 'src/boot/axios-call';
import { onMounted, ref } from 'vue';
import { useRoute } from 'vue-router';

interface Message {
    id: number;
    transaction_id: number;
    user_id: number;
    message: string;
    created_at: string;
    updated_at: string;
    deleted_at: string | null;
    optimus_id: number;
    transaction_media?: Array<{
        id: number;
        path: string;
        type: string;
        transaction_message_id: number;
        created_at: string;
        updated_at: string;
    }>;
}

const route = useRoute();
const messages = ref<Message[]>([]);
const newMessage = ref('');
const sending = ref(false);
const currentUserId = ref<number | null>(null);
const selectedFiles = ref<File[]>([]);
const filePreviews = ref<Array<{ file: File; preview: string | null }>>([]);
const fileInput = ref<HTMLInputElement | null>(null);

const isOwnMessage = (message: Message): boolean => {
    return message.user_id === currentUserId.value;
};

const formatTime = (dateString: string): string => {
    return dateString || '';
};

const handleFileSelect = (event: Event) => {
    const target = event.target as HTMLInputElement;
    const files = target.files;
    if (files && files.length > 0) {
        // Add new files to the selected files array (max 5)
        const remainingSlots = 5 - selectedFiles.value.length;
        const filesToAdd = Math.min(files.length, remainingSlots);

        for (let i = 0; i < filesToAdd; i++) {
            const file = files[i];
            selectedFiles.value.push(file);

            // Create preview for images
            if (file.type.startsWith('image/')) {
                const reader = new FileReader();
                reader.onload = (e) => {
                    filePreviews.value.push({
                        file: file,
                        preview: e.target?.result as string
                    });
                };
                reader.readAsDataURL(file);
            } else {
                filePreviews.value.push({
                    file: file,
                    preview: null
                });
            }
        }
    }
};

const clearFile = (index: number) => {
    selectedFiles.value.splice(index, 1);
    filePreviews.value.splice(index, 1);
};

const clearAllFiles = () => {
    selectedFiles.value = [];
    filePreviews.value = [];
};

const loadMessages = async () => {
    try {
        const transactionId = route.params.transactionId;
        console.log('Loading messages for transaction:', transactionId);
        if (transactionId) {
            const result = await get({
                entity: 'transaction_messages',
                query: {
                    filters: 'transaction_id:' + transactionId,
                    type: 'collection',
                    with: 'transactionMedia'
                }
            }, false);
            console.log('API result:', result);
            if (result) {
                // result is AxiosResponse, so access result.data.data for the actual array
                const data = (result as any).data?.data || (result as any).data || result;
                console.log('Parsed messages data:', data);
                messages.value = Array.isArray(data) ? data : [];
            }
        }
    } catch (error) {
        console.error('Error loading messages:', error);
    }
};

const sendMessage = async () => {
    if ((!newMessage.value.trim() && selectedFiles.value.length === 0) || sending.value) return;

    sending.value = true;
    try {
        const transactionId = route.params.transactionId;

        // Use FormData if files are selected
        let result;
        if (selectedFiles.value.length > 0) {
            const formData = new FormData();
            formData.append('transaction_id', transactionId as string);
            if (newMessage.value.trim()) {
                formData.append('message', newMessage.value);
            }
            selectedFiles.value.forEach(file => {
                formData.append('media[]', file);
            });

            result = await create({
                entity: 'transaction_messages',
                data: formData,
            }, true, 'Sending message...', 'Message sent successfully');
        } else {
            result = await create({
                entity: 'transaction_messages',
                data: {
                    transaction_id: transactionId,
                    message: newMessage.value,
                },
            });
        }

        if (result) {
            const data = (typeof result === 'object' && result !== null && 'data' in result) ? (result as any).data : result;
            messages.value.push(data);
            newMessage.value = '';
            clearAllFiles();
        }
    } catch (error) {
        console.error('Error sending message:', error);
    } finally {
        sending.value = false;
    }
};

onMounted(async () => {
    await loadMessages();
    // Get current user ID from localStorage or auth state
    const userStr = localStorage.getItem('user');
    if (userStr) {
        const user = JSON.parse(userStr);
        currentUserId.value = user.id;
    }
});
</script>

<style scoped lang="scss">
// ── Dark theme tokens ──────────────────────────────────────────────────────
$dark-base: #0f172a;
$dark-card: #1e293b;
$dark-elevated: #273549;
$border: rgba(255, 255, 255, 0.08);
$accent: #6366f1;
$accent-2: #7c3aed;
$white: #f1f5f9;
$muted: #94a3b8;

.messages-page {
    min-height: 100vh;
    background: $dark-base;
}

// ── Hero Header ────────────────────────────────────────────────────────────
.page-hero {
    position: relative;
    padding: 32px 32px 28px;
    margin-bottom: 20px;
    overflow: hidden;
    background: linear-gradient(135deg, $dark-card 0%, darken($dark-base, 3%) 100%);
    border-bottom: 1px solid $border;
}

.hero-accent-overlay {
    position: absolute;
    inset: 0;
    background: radial-gradient(circle at 20% 50%, rgba($accent, 0.1) 0%, transparent 50%),
        radial-gradient(circle at 80% 50%, rgba($accent-2, 0.1) 0%, transparent 50%);
}

.hero-inner {
    position: relative;
    z-index: 1;
    display: flex;
    align-items: center;
    gap: 14px;
}

.hero-back-btn {
    color: $muted;
    background: rgba(255, 255, 255, 0.06);
    border: 1px solid $border;
    transition: all 0.2s;

    &:hover {
        color: white;
        background: rgba($accent, 0.15);
        border-color: rgba($accent, 0.3);
    }
}

.hero-icon-wrap {
    width: 48px;
    height: 48px;
    border-radius: 14px;
    background: linear-gradient(135deg, $accent, $accent-2);
    display: flex;
    align-items: center;
    justify-content: center;
    flex-shrink: 0;
}

.hero-title {
    font-size: 20px;
    font-weight: 600;
    color: $white;
    margin: 0;
}

.hero-subtitle {
    font-size: 13px;
    color: $muted;
    margin-top: 2px;
}

// ── Messages Container ─────────────────────────────────────────────────────
.messages-container {
    max-width: 800px;
    margin: 0 auto;
    padding: 0 16px;
    display: flex;
    flex-direction: column;
    height: calc(100vh - 200px);
}

.messages-list {
    flex: 1;
    overflow-y: auto;
    display: flex;
    flex-direction: column;
    gap: 16px;
    padding-bottom: 20px;
}

.empty-state {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 60px 20px;
    text-align: center;
    color: $muted;
}

.empty-text {
    font-size: 18px;
    font-weight: 500;
    color: $white;
    margin-top: 16px;
}

.empty-subtext {
    font-size: 14px;
    margin-top: 8px;
}

.message-item {
    display: flex;
    gap: 12px;
    align-items: flex-start;

    &.own-message {
        flex-direction: row-reverse;
    }
}

.message-avatar {
    width: 36px;
    height: 36px;
    border-radius: 50%;
    background: linear-gradient(135deg, $accent, $accent-2);
    display: flex;
    align-items: center;
    justify-content: center;
    flex-shrink: 0;
}

.message-content {
    max-width: 70%;
    background: rgba(255, 255, 255, 0.05);
    border: 1px solid $border;
    border-radius: 12px;
    padding: 12px 16px;
}

.own-message .message-content {
    background: linear-gradient(135deg, rgba($accent, 0.2), rgba($accent-2, 0.2));
    border-color: rgba($accent, 0.3);
}

.message-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 6px;
    font-size: 12px;
}

.message-sender {
    font-weight: 500;
    color: $white;
}

.message-time {
    color: $muted;
}

.message-text {
    font-size: 14px;
    color: $white;
    line-height: 1.5;
    word-wrap: break-word;
    margin-bottom: 8px;
}

.message-media {
    margin-top: 8px;
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
    gap: 8px;
}

.media-item {
    border-radius: 8px;
    overflow: hidden;
}

.media-image {
    max-width: 100%;
    max-height: 200px;
    border-radius: 8px;
    display: block;
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.media-video {
    max-width: 100%;
    max-height: 200px;
    border-radius: 8px;
    width: 100%;
}

// ── Message Input ─────────────────────────────────────────────────────────
.message-input-section {
    padding-top: 16px;
    border-top: 1px solid $border;
    background: linear-gradient(180deg, transparent 0%, rgba($accent, 0.03) 100%);
}

.file-previews {
    display: flex;
    flex-wrap: wrap;
    gap: 12px;
    margin-bottom: 12px;
}

.file-preview {
    position: relative;
    border-radius: 12px;
    overflow: hidden;
    background: rgba(255, 255, 255, 0.05);
    border: 1px solid $border;
    width: 120px;
    height: 120px;
    flex-shrink: 0;
}

.preview-image {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
}

.video-preview {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100%;
    padding: 12px;
    text-align: center;
}

.file-preview-video {
    background: rgba(255, 255, 255, 0.08);
}

.file-name {
    color: $white;
    font-size: 10px;
    margin-top: 8px;
    text-align: center;
    word-break: break-word;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}

.preview-close {
    position: absolute;
    top: 6px;
    right: 6px;
    background: rgba(0, 0, 0, 0.7);
    color: white !important;
    width: 24px;
    height: 24px;
    min-width: 24px;
    font-size: 14px;
}

.input-wrapper {
    display: flex;
    gap: 12px;
    align-items: flex-end;
}

.attach-btn {
    color: $muted;
    background: rgba(255, 255, 255, 0.06);
    border: 1px solid $border;
    transition: all 0.3s ease;
    width: 42px;
    height: 42px;
    min-width: 42px;
    border-radius: 12px;

    &:hover {
        color: white;
        background: rgba($accent, 0.15);
        border-color: rgba($accent, 0.3);
    }
}

.message-input {
    flex: 1;
}

.message-input :deep(.q-field__control) {
    background: rgba(255, 255, 255, 0.06);
    border: 1px solid rgba(255, 255, 255, 0.1);
    border-radius: 12px;
    padding: 12px 16px;
    transition: all 0.3s ease;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.message-input :deep(.q-field__control:hover) {
    background: rgba(255, 255, 255, 0.08);
    border-color: rgba($accent, 0.3);
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
}

.message-input :deep(.q-field--focused .q-field__control) {
    background: rgba(255, 255, 255, 0.1);
    border-color: $accent;
    box-shadow: 0 0 0 3px rgba($accent, 0.15), 0 4px 12px rgba(0, 0, 0, 0.2);
}

.message-input :deep(.q-field__native) {
    color: $white;
}

.message-input :deep(.q-field__native::placeholder) {
    color: rgba($muted, 0.7);
}

.send-btn {
    height: 42px;
    min-width: 42px;
    border-radius: 12px;
    background: linear-gradient(135deg, $accent, $accent-2);
    box-shadow: 0 4px 12px rgba($accent, 0.3);
    transition: all 0.3s ease;
}

.send-btn:hover:not(:disabled) {
    background: linear-gradient(135deg, lighten($accent, 10%), lighten($accent-2, 10%));
    box-shadow: 0 6px 16px rgba($accent, 0.4);
    transform: translateY(-2px);
}

.send-btn:active:not(:disabled) {
    transform: translateY(0);
    box-shadow: 0 2px 8px rgba($accent, 0.3);
}

.send-btn:disabled {
    background: rgba($muted, 0.2);
    box-shadow: none;
    opacity: 0.5;
}
</style>