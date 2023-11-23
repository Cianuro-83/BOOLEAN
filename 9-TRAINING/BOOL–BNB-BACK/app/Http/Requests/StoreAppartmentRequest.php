<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreAppartmentRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'name' => 'required|string',
            'rooms' => 'required|integer|min:1|max:999999999',
            'beds' => 'required|integer|min:1|max:999999999',
            'bathrooms' => 'required|integer|min:1|max:999999999',
            'mq' => 'required|numeric|min:1',
            'address' => 'required|string',
            'lat' => 'numeric|between:-90.0,90.0',
            'lon' => 'numeric|between:-180.0,180.0',
            'visible' => 'nullable|boolean',
        ];
    }
}