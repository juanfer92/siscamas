<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Camahis extends Model
{
    protected $table = 'cama_his';

    protected $primaryKey = "ID_HCAMA";

    public $timestamps = true;

    protected $fillable = [
        'ID_CAMA',
        'FECHA_ESTADO',
    ];

    protected $guarded = [

    ];
}
