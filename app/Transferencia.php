<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Transferencia extends Model
{
    protected $table = 'tranferencia';

    protected $primaryKey = "ID_TRANFERENCIA";

    public $timestamps = true;

    protected $fillable = [
        'ID_PACIENTE',
        'ID_SUCURSAL',
        'FECHA_TRANFER',
        'OBSER_TRANFER',
    ];

    protected $guarded = [

    ];
}
