<?php

namespace App\Http\Controllers;

use App\Http\Requests\MyStoreTransaction\UpdateRequest;
use App\Models\Transaction;
use App\Http\Requests\BaseIndexRequest;
use App\Repositories\MyStoreTransactionRepository;

class MyStoreTransactionController extends ApiController {

    protected $model;
    public function __construct( MyStoreTransactionRepository $repository ) {
        $this->model =  Transaction::class;
        $this->repository = $repository;
        $this->indexRequest = BaseIndexRequest::class;
        $this->updateRequest    = UpdateRequest::class;

    }

}
