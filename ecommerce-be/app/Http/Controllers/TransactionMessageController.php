<?php

namespace App\Http\Controllers;

use App\Repositories\TransactionMessageRepository;
use App\Services\TransactionMessageService;
use App\Http\Requests\TransactionMessage\StoreRequest;
use App\Http\Requests\TransactionMessage\IndexRequest;
use App\Http\Requests\TransactionMessage\UpdateRequest;
use App\Models\TransactionMessage;
use App\Http\Resources\BaseResource;
use Illuminate\Http\Request;

class TransactionMessageController extends ApiController
{
    protected string $model;
    private TransactionMessageService $service;

    public function __construct(TransactionMessageRepository $repository, TransactionMessageService $service)
    {
        $this->model = TransactionMessage::class;
        $this->repository = $repository;
        $this->indexRequest = IndexRequest::class;
        $this->showRequest = IndexRequest::class;
        $this->storeRequest = StoreRequest::class;
        $this->updateRequest = UpdateRequest::class;
        $this->service = $service;
    }

    public function store()
    {
        $this->params = app($this->storeRequest)->all();

        $data = [
            'transaction_id' => $this->params['transaction_id'],
            'message' => $this->params['message'] ?? null,
            'user_id' => auth()->id(),
        ];

        $files = request()->hasFile('media') ? request()->file('media') : null;
        $this->result = $this->service->createTransactionMessage($data, $files);

        return $this->getResource();
    }

    public function update(int $id)
    {
        $this->params = app($this->updateRequest)->all();
        $this->result = $this->service->updateTransactionMessage($id, $this->params);
        return $this->getResource();
    }

    public function destroy(int $id): void
    {
        $this->result = $this->service->deleteTransactionMessage($id);
    }

    public function getResource(): BaseResource
    {
        return new BaseResource($this->result);
    }

    public function showResource(): BaseResource
    {
        return new BaseResource($this->result);
    }
}
