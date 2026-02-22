<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Role;
use App\Repositories\RoleUserRepository;
use App\Models\RoleUser;
use App\Http\Requests\BaseIndexRequest;
use App\Http\Requests\RoleUserRequest;
use App\Http\Resources\BaseResource;

class RoleUserController extends ApiController
{
    public function __construct(RoleUserRepository $repository) {
        $this->model =  RoleUser::class;
        $this->repository = $repository;
        $this->indexRequest = BaseIndexRequest::class;
        $this->storeRequest    = RoleUserRequest::class;
        $this->updateRequest    = RoleUserRequest::class;
    }
    
}
