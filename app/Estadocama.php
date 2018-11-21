<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Estadocama extends Model
{
    protected $table = 'estado_cama';

    protected $primaryKey = "ID_ESTCAM";

    public $timestamps = true;

    protected $fillable = [
        'DESC_ESTCAM',
        'IMG_ESTCAMA',
        'EST_ESTCAMA',
    ];

    protected $guarded = [

    ];
}
