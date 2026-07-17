<?php

namespace App\Http\Requests\TransactionMessage;

use App\Traits\Requests\RequestValidation;
use App\Http\Requests\BaseRequest;

class IndexRequest extends BaseRequest
{
    use RequestValidation;

     /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'filters' => 'required',
            'type'    => 'required'
        ];  
    }

    
}
