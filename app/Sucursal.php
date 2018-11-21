<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Sucursal extends Model
{
    //MODELO DEL LA TABLA SUCURSALES
    protected $table = 'sucursales';

    protected $primaryKey = "ID_SUCURSAL";

    public $timestamps = true;

    protected $fillable = [
        'ID_HOSPITAL',
        'descripcion',
        'DIR_SUCURSAL',
        'TELF_SUCURSAL',
        'TIPO',
        'EST_SUCURSAL',
    ];

    protected $guarded = [

    ];
}
