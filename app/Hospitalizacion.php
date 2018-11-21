<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Hospitalizacion extends Model
{
    protected $table = 'hospitalizacion';

    protected $primaryKey = "ID_HOSPITALIZACION";

    public $timestamps = true;

    protected $fillable = [
        'ID_PACIENTE',
        'ID_PATOLOGIA',
        'TPARTO',
        'FECHA_INGRESO',
        'FECHA_EGRESO',
        'EST_HOSPITALIZACION',
    ];

    protected $guarded = [

    ];
}
