<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use sisCamas\Auditoria;
use sisCamas\Cama;
use sisCamas\Estadocama;
use sisCamas\Http\Requests\CamaFormRequest;
use sisCamas\Tipocama;
use Alert;

class CamaController extends Controller
{

    public function __construct()
    {

    }

    public function index(Request $request)
    {

        if ($request) {

            $query = trim($request->get('searchText'));
            $camas = DB::table('cama as c')
                ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
                ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
                ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
                ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
                ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
                ->select('c.ID_CAMA', 'c.COD_CAMA', 'c.OBSER_CAMA', 's.DESC_SUBUNIDAD as Descripcion1', 'u.DESC_UNIDAD as UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA as Descripcion2', 'tc.IMG_TCAMA as imagen', 'ec.DESC_ESTCAM as Estado')
                ->where('COD_CAMA', 'LIKE', '%' . $query . '%')
                ->orwhere('DESC_ESTCAM', 'LIKE', '%' . $query . '%')
                ->paginate(10);
            return view('cama.index', ["camas" => $camas, "searchText" => $query]);
        }
    }

    public function create()
    {
        $subunidades = DB::table('subunidad as s')
            ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
            ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
            ->select('s.ID_SUBUNIDAD', 's.DESC_SUBUNIDAD as SUBUNIDAD', 'u.DESC_UNIDAD as UNIDAD', 'su.DESCRIPCION as SUCURSAL')
            ->where('EST_SUBUNIDAD', '=', 'Activo')->get();
        $tipocamas   = Tipocama::where('EST_TCAMA', '=', 'Activo')->get();
        $estadocamas = Estadocama::where('EST_ESTCAMA', '=', 'Activo')->get();

        return view("cama.create", ["subunidades" => $subunidades], compact('estadocamas', 'tipocamas'));
    }

    public function store(CamaFormRequest $request)
    {
        $cama               = new Cama;
        $cama->ID_SUBUNIDAD = $request->get('idsubunidad');
        $cama->ID_TCAMA     = $request->get('idtipocama');
        $cama->ID_ESTCAM    = $request->get('idestadocama');
        $cama->COD_CAMA     = $request->get('codigo');
        $cama->OBSER_CAMA   = $request->get('observacion');
        $cama->save();

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'CREAR';
        $audit->OBJETO     = 'CAMA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        Alert::success('Registro Creado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('cama');
    }

    public function show($id)
    {
        return view("cama.show", ["camas" => Cama::findOrFail($id)]);
    }

    public function edit($id)
    {
        $camas       = Cama::findOrFail($id);
        $subunidades = DB::table('subunidad as s')
            ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
            ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
            ->select('s.ID_SUBUNIDAD', 's.DESC_SUBUNIDAD as SUBUNIDAD', 'u.DESC_UNIDAD as UNIDAD', 'su.DESCRIPCION as SUCURSAL')
            ->where('EST_SUBUNIDAD', '=', 'Activo')->get();
        $tipocamas   = Tipocama::where('EST_TCAMA', '=', 'Activo')->get();
        $estadocamas = Estadocama::where('EST_ESTCAMA', '=', 'Activo')->get();

        return view("cama.edit", ["camas" => $camas, "subunidades" => $subunidades, "tipocamas" => $tipocamas, "estadocamas" => $estadocamas]);
    }

    public function update(CamaFormRequest $request, $id)
    {
        $cama               = Cama::findOrFail($id);
        $cama->ID_SUBUNIDAD = $request->get('idsubunidad');
        $cama->ID_TCAMA     = $request->get('idtipocama');
        $cama->ID_ESTCAM    = $request->get('idestadocama');
        $cama->COD_CAMA     = $request->get('codigo');
        $cama->OBSER_CAMA   = $request->get('observacion');
        $cama->update();
        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'CAMA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        Alert::success('Registro Actualizado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('cama');
    }

    public function destroy($id)
    {
        $cama            = Cama::findOrFail($id);
        $cama->ID_ESTCAM = 3;
        $cama->update();
        //INICIO Logs de Auditoria
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'DESHABILITAR';
        $audit->OBJETO     = 'CAMA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = 'Cama Deshabilitada';
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        Alert::success('Registro Deshabilitado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('cama');
    }
}
