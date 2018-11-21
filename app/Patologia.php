<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Patologia extends Model
{
    protected $table = 'patologia';

    protected $primaryKey = "ID_PATOLOGIA";

    public $timestamps = true;

    protected $fillable = [
        'DESC_PATOLOGIA',
        'SINTOMA',
        'DIAGNOSTICO',
        'PROCEDIMIENTO',
        'TPACIENTE',
    ];

    protected $guarded = [

    ];
}
