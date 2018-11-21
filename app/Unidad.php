<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Unidad extends Model
{
    protected $table = 'unidad';

    protected $primaryKey = "ID_UNIDAD";

    public $timestamps = true;

    protected $fillable = [
        'ID_SUCURSAL',
        'DESC_UNIDAD',
        'EST_UNIDAD',
    ];

    protected $guarded = [

    ];
}
