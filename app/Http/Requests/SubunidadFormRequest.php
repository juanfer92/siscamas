<?php

namespace sisCamas\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SubunidadFormRequest extends FormRequest
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
          'idunidad'=>'required',
          'descripcion'=>'required|max:100|min:6',
          'sector'=>'required|max:10|min:2',
          'piso'=>'required|max:20|min:2',
        ];
    }

    public function messages()
 {
     return [
         'idunidad.required' => 'La sucursal es un campo obligatorio',
         'descripcion.required' => 'La descripcion es un campo obligatorio',
         'sector.required' => 'El sector es un campo obligatorio',
         'piso.required' => 'El piso es un campo obligatorio',
     ];
 }
}
