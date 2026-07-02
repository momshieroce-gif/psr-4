<?php

namespace App\Http\Controllers;

use App\Services\FindStoreService;
use App\Http\Requests\FindStore\IndexRequest;
use App\Http\Resources\FindStore\IndexResource;
use App\Http\Resources\FindStore\ShowResource;

class FindStoreController
{
    private FindStoreService $service;

    public function __construct(FindStoreService $service)
    {
        $this->service = $service;
    }

    public function index(IndexRequest $request): IndexResource
    {
        $this->service->setParameters($request->all());
        $result = $this->service->applyFilters();

        return new IndexResource($result);
    }

    public function show(int $id): ShowResource
    {
        $result = $this->service->findOrFail($id);

        return new ShowResource($result);
    }
}
