<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\ApplyStoreService;
use App\Http\Requests\Store\PostRequest;

class ApplyStoreController extends BaseController
{
    public function create(PostRequest $request, ApplyStoreService $service)
    {
        $store = $service->create($request);

        return $this->sendResponse($store, 'Store application submitted successfully.');
    }
}
