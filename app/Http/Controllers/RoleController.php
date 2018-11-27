<?php

namespace sisCamas\Http\Controllers;

use Caffeinated\Shinobi\Models\Permission;
use Caffeinated\Shinobi\Models\Role;
//use sisCamas\Http\Requests\RolesFormRequest;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use sisCamas\Auditoria;
use Alert;

class RoleController extends Controller
{

    public function __construct()
    {
        //$this->middleware('auth');
    }

    public function index(Request $request)
    {
        if ($request) {

            $query = trim($request->get('searchText'));
            $roles = DB::table('roles')
                ->where('name', 'LIKE', '%' . $query . '%')
                ->orderBy('id', 'desc')
                ->paginate(7);
            return view('roles.index', ["roles" => $roles, "searchText" => $query]);
        }
    }

    public function create()
    {
        $permissions = Permission::get();
        return view("roles.create", compact('permissions'));
    }

    public function store(Request $request)
    {
        $rol              = new Role;
        $rol->name        = $request->get('name');
        $rol->slug        = $request->get('slug');
        $rol->description = $request->get('description');
        $rol->special     = $request->get('special');
        $rol->save();
        $rol->permissions()->sync($request->get('permissions'));
        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'CREAR';
        $audit->OBJETO     = 'ROL';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        Alert::success('Registro Creado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('roles');
    }

    public function show(Role $rol, $id)
    {
        return view("roles.show", ["rol" => Role::findOrFail($id)]);
    }

    public function edit($id)
    {
        $permissions = Permission::get();
        return view("roles.edit", ["role" => Role::findOrFail($id)], compact('permissions'));
    }

    public function update(Request $request, $id)
    {
        //Actuliza usuario
        $rol              = Role::findOrFail($id);
        $rol->name        = $request->get('name');
        $rol->slug        = $request->get('slug');
        $rol->description = $request->get('description');
        $rol->special     = $request->get('special');
        $rol->update();
        //Actuliza roles
        $rol->permissions()->sync($request->get('permissions'));

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'ROL';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        Alert::success('Registro Actualizado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('roles');
    }

    public function destroy($id)
    {
        $rol = DB::table('roles')->where('id', '=', $id)->delete();

        //INICIO Logs de Auditoria
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'DESHABILITAR';
        $audit->OBJETO     = 'ROL';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $id;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria
        Alert::success('Registro Eliminado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('roles');
    }

    //fin controller
}
