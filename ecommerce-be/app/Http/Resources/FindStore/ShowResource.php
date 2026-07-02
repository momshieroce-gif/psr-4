<?php

namespace App\Http\Resources\FindStore;

use App\Http\Resources\AbstractResource;

class ShowResource extends AbstractResource
{
    public function __construct($resource)
    {
        parent::__construct($resource);
        $this->setFields(['id', 'label', 'name', 'latitude', 'longitude', 'optimus_id', 'distance']);
    }
}
