<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Subunidad extends Model
{

    protected $table = 'subunidad';

    protected $primaryKey = "ID_SUBUNIDAD";

    public $timestamps = true;

    protected $fillable = [
        'ID_UNIDAD',
        'DESC_SUBUNIDAD',
        'SECTOR_SUBUNIDAD',
        'PISO_SUBUNIDAD',
        'EST_SUBUNIDAD',
    ];

    protected $guarded = [

    ];
}
