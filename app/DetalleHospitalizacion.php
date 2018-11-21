<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class DetalleHospitalizacion extends Model
{
    protected $table = 'detalle_hospitalizacion';

    protected $primaryKey = "ID_DET_HOSPITALIZACION";

    public $timestamps = true;

    protected $fillable = [
        'ID_HOSPITALIZACION',
        'ID_CAMA',
        'ID_PATOLOGIA',
        'OBSERVACION',
    ];

    protected $guarded = [

    ];
}
