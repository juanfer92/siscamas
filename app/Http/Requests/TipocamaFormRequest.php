<?php

namespace sisCamas\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TipocamaFormRequest extends FormRequest
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
     * @return array
     */
    public function rules()
    {
        return [
            'descripcion'=>'required',
            //'imagen'=>'mimes:jpeg,bmp,png,jpg',

        ];
    }

    public function messages()
    {
     return [
         'descripcion.required' => 'La descripcion es un campo obligatorio',
         //'imagen.required' => 'La imagen es un campo obligatorio',
     ];
 }
}
