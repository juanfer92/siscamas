<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use sisCamas\Auditoria;
//use Illuminate\Support\Facades\Input; //Para subir imagen
use sisCamas\Http\Requests\QuirofanoFormRequest;
use sisCamas\Quirofano;

class QuirofanoController extends Controller
{
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        if ($request) {
            $query      = trim($request->get('searchText'));
            $quirofanos = DB::table('quirofano as q')
                ->join('pacientes as p', 'q.ID_PACIENTE', '=', 'p.ID_PACIENTE')
                ->select('q.ID_QUIRIFANO', 'q.ESTADO', 'p.NOM_PACIENTE', 'p.APE_PACIENTE', 'q.HORA_INICIO', 'q.HORA_FIN')
                ->where('p.APE_PACIENTE', 'LIKE', '%' . $query . '%')
                ->paginate(7);
            return view('quirofano.index', ["quirofanos" => $quirofanos, "searchText" => $query]);
        }
    }

    public function create()
    {
        $pacientes = DB::table('cama')
            ->where('EST_INGRE_EGRESO', '=', 'Ingreso')
            ->where('EST_INGRE_EGRESO', '=', 'Ingreso')
            ->get();

        $pacientes = DB::table('pacientes')
            ->where('EST_INGRE_EGRESO', '=', 'Ingreso')->get();
        return view("quirofano.create", ["pacientes" => $pacientes]);
    }

    public function store(QuirofanoFormRequest $request)
    {
        //dd($request);
        $quirofano                   = new Quirofano;
        $quirofano->ID_PACIENTE      = $request->get('idpaciente');
        $quirofano->ESTADO           = 'Ingreso';
        $quirofano->FECHA_UTLIZACION = $request->get('fecha');
        $quirofano->HORA_INICIO      = $request->get('horai');
        $quirofano->HORA_FIN         = $request->get('horaf');
        $quirofano->save();
        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'CREAR';
        $audit->OBJETO     = 'Ingreso Quirofano';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Creado Correctamente');
        return Redirect::to('quirofano');
    }

    public function show($id)
    {
        return view("quirofano.show", ["quirofano" => Quirofano::findOrFail($id)]);
    }

    public function edit($id)
    {
        return view("quirofano.edit", ["quirofano" => Quirofano::findOrFail($id)]);
    }

    public function update(QuirofanoFormRequest $request, $id)
    {
        $quirofano                   = Quirofano::findOrFail($id);
        $quirofano->ID_PACIENTE      = $request->get('idpaciente');
        $quirofano->ESTADO           = $request->get('estado');
        $quirofano->FECHA_UTLIZACION = $request->get('fecha');
        $quirofano->HORA_INICIO      = $request->get('horai');
        $quirofano->HORA_FIN         = $request->get('horaf');
        $quirofano->update();
        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'QUIROFANO';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Editado Correctamente');
        return Redirect::to('quirofano');
    }

    public function destroy($id)
    {
        $quirofano         = Quirofano::findOrFail($id);
        $quirofano->ESTADO = 'Egreso';
        $quirofano->update();
        //INICIO Logs de Auditoria
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'EGRESO';
        $audit->OBJETO     = 'QUIROFANO';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $id;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Deshabilitado Correctamente');
        return Redirect::to('quirofano');
    }

}
