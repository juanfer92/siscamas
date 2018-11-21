<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Auditoria extends Model
{
    protected $table = 'auditoria';

    protected $primaryKey = "ID_AUD";

    public $timestamps = false;

    protected $fillable = [
        'ID_USUARIO',
        'USUARIO',
        'ACCION',
        'OBJETO',
        'EQUIPO',
        'SENTENCIA',
        'NAVEGADOR',
        'FECHA',
    ];

    protected $guarded = [

    ];
}
