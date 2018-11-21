<?php

namespace sisCamas\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CamaFormRequest extends FormRequest
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
             'codigo'=>'required|max:50|min:4',
             //'codigo'=>'required|unique:cama,COD_CAMA|max:50|min:4' . $this->cama,
        ];
    }
    public function messages()
    {
      return [
          'codigo.required' => 'El código de la cama es un campo obligatorio',
      ];
    }
}
