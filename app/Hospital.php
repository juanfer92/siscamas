<?php

namespace sisCamas;

use Illuminate\Database\Eloquent\Model;

class Hospital extends Model
{
    protected $table = 'hospital';

    protected $primaryKey = "ID_HOSPITAL";

    public $timestamps = false;

    protected $fillable = [
        'NOM_HOSPITAL',
        'RUC_HOSPITAL',
        'REG_MSP_HOSPITAL',
        'DIR_HOSPITAL',
        'TELF_HOSPITAL',
        'EST_HOSPITAL',
    ];

    protected $guarded = [

    ];

}
