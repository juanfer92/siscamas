<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Paciente extends Model
{
    protected $table = 'pacientes';

    protected $primaryKey = "ID_PACIENTE";

    public $timestamps = true;

    protected $fillable = [
        'ID_SUBUNIDAD',
        'uuid',
        'NOM_PACIENTE',
        'NOM_PACIENTE1',
        'APE_PACIENTE',
        'APE_PACIENTE1',
        'CI_PACIENTE',
        'NAC_PACIENTE',
        'EDAD_PACIENTE',
        'TSAN_PACIENTE',
        'DIR_PACIENTE',
        'TEL_PACIENTE',
        'CEL_PACIENTE',
        'EMAIL_PACIENTE',
        'NOM_FAMILIAR1',
        'TELF_CONTACTO1',
        'NOM_FAMILIAR2',
        'TELF_CONTACTO2',
        'EST_INGRE_EGRESO',
        'FECHA_INGRESO',
        'FECHA_EGRESO',

    ];

    protected $guarded = [

    ];
}
