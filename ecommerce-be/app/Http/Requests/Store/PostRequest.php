<?php

namespace App\Http\Requests\Store;

use App\Http\Requests\BaseRequest;

class PostRequest extends BaseRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|string|max:255',
            'mobile' => 'required|string|max:255',
            'desc' => 'required|string',
            'latitude' => 'required|numeric',
            'longitude' => 'required|numeric',
            'images' => 'nullable|array',
            'images.*' => 'image|mimes:jpeg,png,jpg,gif|max:5120',
        ];
    }
}
