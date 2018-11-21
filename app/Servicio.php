<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Servicio extends Model
{
    //MODELO DEL LA TABLA SERVICIO
    protected $table = 'servicio';

    protected $primaryKey = "ID_SERVICIO";

    public $timestamps = true;

    protected $fillable = [
        'DESC_SERVICIO',
        'EST_SERVICIO',
    ];

    protected $guarded = [

    ];
}
