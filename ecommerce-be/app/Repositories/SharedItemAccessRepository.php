<?php

namespace App\Repositories;

use App\Models\Item;

class SharedItemAccessRepository extends BaseRepository implements BaseInterface
 {

    public function __construct()
    {
        $this->setModel( new Item() );
        $this->cacheKey = 'Items-get';
    }

}
