<?php

namespace App\Http\Requests\TransactionMessage;

use App\Traits\Requests\RequestValidation;
use App\Http\Requests\BaseRequest;

class StoreRequest extends BaseRequest
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
            'transaction_id' => 'required|integer',
            'message' => 'required_without:media|string|nullable',
            'media' => 'required_without:message|array|max:5',
            'media.*' => 'file|mimes:jpeg,png,jpg,gif,mp4,mov,avi|max:10240',
        ];
    }

    
}
