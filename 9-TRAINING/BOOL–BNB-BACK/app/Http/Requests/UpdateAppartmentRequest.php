<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateAppartmentRequest extends FormRequest
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
            'mq' => 'required|numeric|min:0.1|max:999999.999',
            'address' => 'required|string',
            'lat' => 'required',
            'lon' => 'required',          
            'visible' => 'nullable|boolean',
        ];
    }
}