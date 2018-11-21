<?php

namespace sisCamas\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class HospitalizacionFormRequest extends FormRequest
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
            // 'ID_PACIENTE'=>'required',
            // 'FECHA_HOSPITALIZACION'=>'required',
            // 'EST_HOSPITALIZACION'=>'required',
            // 'ID_CAMA'=>'required'

        ];
    }
}
