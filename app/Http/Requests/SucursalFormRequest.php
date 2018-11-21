<?php

namespace sisCamas\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SucursalFormRequest extends FormRequest
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
            //
            'idhospital'=>'required',
            'descripcion'=>'required|max:20|min:6',
            'direccion'=>'required|min:15',
            'telefono'=>'required|max:80|min:9',
        ];
    }

    public function messages()
  {
      return [
          'idhospital.required' => 'El nombre del Hospital es un campo obligatorio',
          'descripcion.required' => 'La descripcion es un campo obligatorio',
          'direccion.required' => 'La dirección  es un campo obligatorio',
          'telefono.required' => 'El teléfono del Hospital es un campo obligatorio',
      ];
  }
}
