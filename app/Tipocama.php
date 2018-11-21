<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Tipocama extends Model
{
    protected $table = 'tipo_cama';

    protected $primaryKey = "ID_TCAMA";

    public $timestamps = true;

    protected $fillable = [
        'DESC_TCAMA',
        'IMG_TCAMA',
        'EST_TCAMA',
    ];

    protected $guarded = [

    ];
}
