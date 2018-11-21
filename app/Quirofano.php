<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Quirofano extends Model
{
    protected $table = 'quirofano';

    protected $primaryKey = "ID_QUIRIFANO";

    public $timestamps = false;

    protected $fillable = [
        'ID_PACIENTE',
        'ESTADO',
        'FECHA_UTLIZACION',
        'HORA_INICIO',
        'HORA_FIN',
    ];

    protected $guarded = [

    ];
}
