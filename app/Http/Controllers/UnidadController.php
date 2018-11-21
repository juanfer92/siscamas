<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use sisCamas\Auditoria;
use sisCamas\Http\Requests\UnidadFormRequest;
use sisCamas\Unidad;

class UnidadController extends Controller
{
    public function __construct()
    {
        //$this->middleware('auth');
    }

    public function index(Request $request)
    {
        if ($request) {
            $query    = trim($request->get('searchText'));
            $unidades = DB::table('unidad as u')
                ->join('sucursales as s', 'u.ID_SUCURSAL', '=', 's.ID_SUCURSAL')
                ->select('u.ID_UNIDAD', 'u.DESC_UNIDAD', 's.DESCRIPCION as Sucursal', 's.DIR_SUCURSAL as Direccion', 'u.EST_UNIDAD')
                ->where('u.DESC_UNIDAD', 'LIKE', '%' . $query . '%')
                ->orwhere('s.DESCRIPCION', 'LIKE', '%' . $query . '%')
                ->orwhere('s.DIR_SUCURSAL', 'LIKE', '%' . $query . '%')
                ->paginate(5);
            return view('unidad.index', ["unidades" => $unidades, "searchText" => $query]);
        }
    }

    public function create()
    {
        $sucursales = DB::table('sucursales')->where('EST_SUCURSAL', '=', 'Activo')->get();
        return view("unidad.create", ["sucursales" => $sucursales]);
    }

    public function store(UnidadFormRequest $request)
    {
        $unidad              = new Unidad;
        $unidad->ID_SUCURSAL = $request->get('idsucursal');
        $unidad->DESC_UNIDAD = $request->get('descripcion');
        $unidad->EST_UNIDAD  = 'Activo';
        $unidad->save();

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'CREAR';
        $audit->OBJETO     = 'UNIDAD';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Creado Correctamente');
        return Redirect::to('unidad');
    }

    public function show($id)
    {
        return view("unidad.show", ["unidad" => Unidad::findOrFail($id)]);
    }

    public function edit($id)
    {
        $unidad     = Unidad::findOrFail($id);
        $sucursales = DB::table('sucursales')
            ->where('EST_SUCURSAL', '=', 'Activo')->get();
        return view("unidad.edit", ["unidad" => $unidad, "sucursales" => $sucursales]);
    }

    public function update(UnidadFormRequest $request, $id)
    {
        $unidad              = Unidad::findOrFail($id);
        $unidad->ID_SUCURSAL = $request->get('idsucursal');
        $unidad->DESC_UNIDAD = $request->get('descripcion');
        $unidad->EST_UNIDAD  = $request->get('estado');
        $unidad->update();

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'UNIDAD';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Editado Correctamente');
        return Redirect::to('unidad');
    }

    public function destroy($id)
    {
        $unidad             = Unidad::findOrFail($id);
        $unidad->EST_UNIDAD = 'Inactivo';
        $unidad->update();
        //INICIO Logs de Auditoria
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'DESHABILITAR';
        $audit->OBJETO     = 'UNIDAD';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $id;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Deshabilitado Correctamente');
        return Redirect::to('unidad');
    }
}
