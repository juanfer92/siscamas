<?php

namespace sisCamas\Http\Controllers;

use Caffeinated\Shinobi\Models\Role;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use sisCamas\Auditoria;
use sisCamas\Http\Requests\UserFormRequest;
use sisCamas\Sucursal;
use sisCamas\User;

class UserController extends Controller
{
    //Controlador para manejar sucursal
    public function __construct()
    {
        //$this->middleware('auth');
    }

    public function index(Request $request)
    {
        if ($request) {

            $query    = trim($request->get('searchText'));
            $usuarios = DB::table('users')
                ->where('name', 'LIKE', '%' . $query . '%')
                ->orderBy('id', 'desc')
                ->paginate(7);
            return view('users.index', ["usuarios" => $usuarios, "searchText" => $query]);
        }
    }

    public function create()
    {
        $sucursales = Sucursal::get();
        $roles      = Role::get();
        return view("users.create", compact('roles', 'sucursales'));
    }

    public function store(UserFormRequest $request)
    {
        $usuario              = new User;
        $usuario->name        = $request->get('name');
        $usuario->email       = $request->get('email');
        $usuario->password    = bcrypt($request->get('password'));
        $usuario->ID_SUCURSAL = $request->get('sucursal');
        $usuario->save();

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'CREAR';
        $audit->OBJETO     = 'USUARIO';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Creado Correctamente');
        return Redirect::to('users');
    }

    public function edit($id)
    {
        $sucursales = Sucursal::get();
        $roles      = Role::get();
        return view("users.edit", ["usuario" => User::findOrFail($id)], compact('roles', 'sucursales'));
    }

    public function update(Request $request, $id)
    {
        //Actuliza usuario
        $usuario           = User::findOrFail($id);
        $usuario->name     = $request->get('name');
        $usuario->email    = $request->get('email');
        $usuario->password = bcrypt($request->get('password'));
        $usuario->update();
        $usuario->roles()->sync($request->get('roles'));

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'USUARIO';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Editado Correctamente');
        return Redirect::to('users');
    }

    public function destroy($id)
    {
        $usuario = DB::table('users')->where('id', '=', $id)->delete();

        //INICIO Logs de Auditoria
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'DESHABILITAR';
        $audit->OBJETO     = 'USUARIO';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $id;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Eliminado Correctamente');
        return Redirect::to('users');
    }

    //fin controller
}
