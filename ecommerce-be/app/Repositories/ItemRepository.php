<?php

namespace App\Repositories;

use App\Models\Item;
use App\Repositories\BaseRepository;
use App\Traits\UtilsTrait;
use  Illuminate\Database\Eloquent\Collection;
class ItemRepository extends BaseRepository
{
    use UtilsTrait;
    public function __construct()
    {
        $this->setModel(new Item);
        $this->cacheKey = 'items-get';
    }

    public function category_id($value) : void
    {   
        $this->model = $this->model->where('category_id', $value);
    }

    public function itemUpdateWithImage(int $id, array $params): bool
    {
        /**get fillable should be before accessing the model */
        $this->setFillable();
        $this->where('id', $id);
        
        $data = array_intersect_key(
            $params,
            array_flip($this->fillable)
        );
        unset($data['store_id']);
        $this->filesUpload();
        return tap( $this->model->first() )->update( $data );

    }

     public function applyFilters(): Collection{

        if(isset($this->params['filters']) ){
            
        }
        return $this->model->get();
    }
    
}
