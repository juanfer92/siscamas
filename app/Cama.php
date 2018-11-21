<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Cama extends Model
{
    protected $table = 'cama';

    protected $primaryKey = "ID_CAMA";

    public $timestamps = true;

    protected $fillable = [
        'ID_SUBUNIDAD',
        'ID_TCAMA',
        'ID_ESTCAM',
        'COD_CAMA',
        'OBSER_CAMA',
    ];

    protected $guarded = [

    ];
}
