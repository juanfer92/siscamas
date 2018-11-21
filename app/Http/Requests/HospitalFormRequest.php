<?php

namespace sisCamas\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class HospitalFormRequest extends FormRequest
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
          'nombre'=>'required|max:100|min:7',
          'ruc'=>'required|max:13|min:10',
          'reg_msp_hospital'=>'required|max:20|min:10',
          'direccion'=>'required|max:100|min:10',
          'telefono'=>'required|max:50|min:10',
        ];
    }

    public function messages()
  {
      return [
          'nombre.required' => 'El nombre del Hospital es un campo obligatorio',
          'ruc.required' => 'El ruc del Hospital es un campo obligatorio',
          'reg_msp_hospital.required' => 'El registro de ministerio  es un campo obligatorio',
          'direccion.required' => 'La dirección del Hospital es un campo obligatorio',
          'telefono.required' => 'El teléfono del Hospital es un campo obligatorio',
      ];
  }
}
