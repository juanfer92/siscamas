<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Encuesta extends Model
{
    protected $table = 'encuesta_reg';

    protected $primaryKey = "ID_ENCUESTA";

    public $timestamps = true;

    protected $fillable = [
        'ID_PREGUNTA',
        'ID_PACIENTE',
        'VALOR',
        'FECHA_REG_ENCUESTA',
    ];

    protected $guarded = [

    ];
}
