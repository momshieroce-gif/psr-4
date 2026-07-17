<?php

namespace App\Repositories;

use App\Models\TransactionMessage;
use Illuminate\Support\Facades\Auth;
class TransactionMessageRepository extends BaseRepository implements BaseInterface
{
    public function __construct()
    {
        $this->setModel(new TransactionMessage());
        $this->cacheKey = 'TransactionMessages-get';
    }

    public function getTransactionMessages(int $transactionId)
    {
        return $this->model->where('transaction_id', $transactionId)
            ->with(['user'])
            ->orderBy('created_at', 'asc')
            ->get();
    }

    public function updateTransactionMessage(int $id, array $data): TransactionMessage
    {
        $message = $this->findOrFail($id);
        $message->update($data);
        return $message;
    }

    public function deleteTransactionMessage(int $id): bool
    {
        $message = $this->findOrFail($id);
        return $message->delete();
    }
}
