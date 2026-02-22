<?php

namespace App\Http\Controllers;

use App\Http\Resources\ItemResource;
use App\Repositories\ItemPriceRepository;
use App\Http\Requests\ItemPriceRequest;
use App\Http\Requests\BaseIndexRequest;
use Illuminate\Http\Request;
use App\Models\ItemPrice;
use Illuminate\Support\Arr;

class ItemPriceController
{
    protected ItemPriceRepository $repository;
    protected $indexRequest, $storeRequest, $updateRequest;

    public function __construct(ItemPriceRepository $repository)
    {
        $this->repository = $repository;
        $this->indexRequest = BaseIndexRequest::class;
        $this->storeRequest = ItemPriceRequest::class;
        $this->updateRequest = ItemPriceRequest::class;
    }
    
    public function store(){
        $request = app($this->updateRequest);
        $this->repository->setParameters($request->all())->createItemPrices();
    }
}
