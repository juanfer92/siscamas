<?php

namespace sisCamas;

use Caffeinated\Shinobi\Traits\ShinobiTrait;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable, ShinobiTrait;

    protected $table = 'users';

    protected $primaryKey = "id";

    public $timestamps = true;

    protected $fillable = [
        'name', 'email', 'password', 'ID_SUCURSAL',
    ];
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
}
