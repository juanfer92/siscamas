<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use sisCamas\Auditoria;
use sisCamas\Http\Requests\SubunidadFormRequest;
use sisCamas\Subunidad;
use Alert;

class SubunidadController extends Controller
{
    //Controlador para manejar sucursal
    public function __construct()
    {
        //$this->middleware('auth');
    }

    public function index(Request $request)
    {
        if ($request) {
            $query       = trim($request->get('searchText'));
            $subunidades = DB::table('subunidad as s')
                ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
                ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
                ->select('su.DESCRIPCION', 's.ID_SUBUNIDAD', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD as UNIDAD', 's.SECTOR_SUBUNIDAD', 's.PISO_SUBUNIDAD', 's.EST_SUBUNIDAD')
                ->where('s.DESC_SUBUNIDAD', 'LIKE', '%' . $query . '%')
                ->paginate(10);
            return view('subunidad.index', ["subunidades" => $subunidades, "searchText" => $query]);
        }
    }

    public function create()
    {
        $unidades = DB::table('unidad as u')
            ->join('sucursales as s', 'u.ID_SUCURSAL', '=', 's.ID_SUCURSAL')
            ->select('u.ID_UNIDAD', 'u.DESC_UNIDAD', 's.DESCRIPCION as Sucursal')
            ->where('EST_UNIDAD', '=', 'Activo')
            ->get();
        return view("subunidad.create", ["unidades" => $unidades]);
    }

    public function store(SubunidadFormRequest $request)
    {
        $subunidad                   = new Subunidad;
        $subunidad->ID_UNIDAD        = $request->get('idunidad');
        $subunidad->DESC_SUBUNIDAD   = $request->get('descripcion');
        $subunidad->SECTOR_SUBUNIDAD = $request->get('sector');
        $subunidad->PISO_SUBUNIDAD   = $request->get('piso');
        $subunidad->EST_SUBUNIDAD    = 'Activo';
        $subunidad->save();

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'CREAR';
        $audit->OBJETO     = 'SUBUNIDAD';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        Alert::success('Registro Creado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('subunidad');
    }

    public function show($id)
    {
        return view("subunidad.show", ["subunidad" => Subunidad::findOrFail($id)]);
    }

    public function edit($id)
    {
        $subunidad = Subunidad::findOrFail($id);
        $unidades  = DB::table('unidad as u')
            ->join('sucursales as s', 'u.ID_SUCURSAL', '=', 's.ID_SUCURSAL')
            ->select('u.ID_UNIDAD', 'u.DESC_UNIDAD', 's.DESCRIPCION as Sucursal')
            ->where('EST_UNIDAD', '=', 'Activo')
            ->get();
        return view("subunidad.edit", ["subunidad" => $subunidad, "unidades" => $unidades]);
    }

    public function update(SubunidadFormRequest $request, $id)
    {
        $subunidad                   = Subunidad::findOrFail($id);
        $subunidad->ID_UNIDAD        = $request->get('idunidad');
        $subunidad->DESC_SUBUNIDAD   = $request->get('descripcion');
        $subunidad->SECTOR_SUBUNIDAD = $request->get('sector');
        $subunidad->PISO_SUBUNIDAD   = $request->get('piso');
        $subunidad->EST_SUBUNIDAD    = $request->get('estado');
        $subunidad->update();

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'SUBUNIDAD';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        Alert::success('Registro Actualizado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('subunidad');
    }

    public function destroy($id)
    {
        $subunidad                = Subunidad::findOrFail($id);
        $subunidad->EST_SUBUNIDAD = 'Inactivo';
        $subunidad->update();
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

        Alert::success('Registro Deshabilitado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('subunidad');
    }

}
