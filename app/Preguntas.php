<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Preguntas extends Model
{
    protected $table = 'preguntas';

    protected $primaryKey = "ID_PREGUNTA";

    public $timestamps = true;

    protected $fillable = [
        'DESCRIPCION',
        'ESTADO',
        'ID_SERVICIO',
    ];

    protected $guarded = [

    ];
}
