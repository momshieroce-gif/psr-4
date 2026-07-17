<?php

namespace App\Services;

use App\Repositories\TransactionMessageRepository;
use Illuminate\Support\Facades\Auth;
use App\Traits\Obfuscate\OptimusId;

class TransactionMessageService
{
    use OptimusId;
    private TransactionMessageRepository $repository;
    
    public function __construct(TransactionMessageRepository $repository)
    {
        $this->repository = $repository;
    }

    public function getTransactionMessages(int $transactionId)
    {
        return $this->repository->getTransactionMessages($transactionId);
    }

    public function createTransactionMessage(array $data)
    {
        $data['user_id'] = Auth::id();
        $data['transaction_id'] = $this->optimus()->decode((int)$data['transaction_id']);
        $this->repository->setParameters($data);
        return $this->repository->create();
    }

    public function updateTransactionMessage(int $id, array $data)
    {
        return $this->repository->updateTransactionMessage($id, $data);
    }

    public function deleteTransactionMessage(int $id)
    {
        return $this->repository->deleteTransactionMessage($id);
    }
}
