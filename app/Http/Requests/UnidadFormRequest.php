<?php

namespace sisCamas\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UnidadFormRequest extends FormRequest
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
          'idsucursal'=>'required',
          'descripcion'=>'required|max:100|min:6',
        ];
    }

    public function messages()
  {
      return [
          'idsucursal.required' => 'La sucursal es un campo obligatorio',
          'descripcion.required' => 'La descripcion es un campo obligatorio',
      ];
  }
}
