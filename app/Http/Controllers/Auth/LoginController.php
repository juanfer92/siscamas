<?php

namespace sisCamas\Http\Controllers\Auth;

use sisCamas\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use sisCamas\Auditoria;
use Alert;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */

    //protected $redirectTo = '/home';

    protected function redirectTo()
{
  //INICIO Logs de Auditoria
  $audit             = new Auditoria;
  $idUser            = \Auth::user()->id;
  $idname            = \Auth::user()->name;
  $audit->ID_USUARIO = $idUser;
  $audit->USUARIO    = $idname;
  $audit->ACCION     = 'INGRESO';
  $audit->OBJETO     = 'ACCESO';
  $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
  $audit->SENTENCIA  = 'Ingreso al Sistema';
  $ip                = $_SERVER['HTTP_USER_AGENT'];
  $audit->NAVEGADOR  = $ip;
  $audit->FECHA      = date("Y-m-d H:i:s");
  $audit->save();
  //FIN Logs de Auditoria
    $user= \Auth::user()->name;
    //dd($user);
    Alert::info($user,'Bienvenido.!!');
    return '/home';
}


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
