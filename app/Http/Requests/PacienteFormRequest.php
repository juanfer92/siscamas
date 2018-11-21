<?php

namespace sisCamas\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PacienteFormRequest extends FormRequest
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
            'nombres'     => 'required|alpha',
            'apellidos'   => 'required|alpha',
            'CI_PACIENTE' => 'ecuador:ci',
            'edad' => 'required|numeric',
            'direccion' => 'required',
        ];
    }

    public function messages()
    {
      return [
          'nombres.required' => 'Necesita ingresar el primer nombre obligatorio',
          'apellidos.required' => 'Necesita ingresar el primer apellido obligatorio',
          'CI_PACIENTE.required' => 'Revisar número de cédula ingresado.',
          'edad.required' => 'Necesita ingresar la edad como campo obligatorio',
          'direccion.required' => 'Necesita ingresar la dirección como campo obligatorio',      
      ];
    }
}
