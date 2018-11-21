<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use sisCamas\Auditoria;
use sisCamas\Http\Requests\PreguntaFormRequest;
//use Maatwebsite\Excel\Facades\Excel;
use sisCamas\Preguntas;

class PreguntasController extends Controller
{
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        if ($request) {
            $query    = trim($request->get('searchText'));
            $pregunta = DB::table('preguntas as p')
                ->join('servicio as s', 'p.ID_SERVICIO', '=', 's.ID_SERVICIO')
                ->select('p.ID_PREGUNTA', 's.DESC_SERVICIO', 'p.DESCRIPCION', 'p.ESTADO')
                ->where('DESCRIPCION', 'LIKE', '%' . $query . '%')
                ->paginate(10);
            return view('pregunta.index', ["pregunta" => $pregunta, "searchText" => $query]);
        }
    }

    public function create()
    {
        $servicios = DB::table('servicio')
            ->where('EST_SERVICIO', '=', 'Activa')->get();
        return view("pregunta.create", ["servicios" => $servicios]);
    }

    public function store(PreguntaFormRequest $request)
    {
        $pre              = new Preguntas;
        $pre->DESCRIPCION = $request->get('descripcion');
        $pre->ESTADO      = 'Activa';
        $pre->ID_SERVICIO = $request->get('idservicio');
        $pre->save();

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'CREAR';
        $audit->OBJETO     = 'PREGUNTA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Creado Correctamente');
        return Redirect::to('pregunta');
    }

    public function show($id)
    {
        return view("pregunta.show", ["pregunta" => Preguntas::findOrFail($id)]);
    }

    public function edit($id)
    {
        $pregunta  = Preguntas::findOrFail($id);
        $servicios = DB::table('servicio')
            ->where('EST_SERVICIO', '=', 'Activa')->get();
        return view("pregunta.edit", ["pregunta" => $pregunta, "servicios" => $servicios]);
    }

    public function update(PreguntaFormRequest $request, $id)
    {
        $pre              = Preguntas::findOrFail($id);
        $pre->DESCRIPCION = $request->get('descripcion');
        $pre->ESTADO      = $request->get('estado');
        $pre->ID_SERVICIO = $request->get('idservicio');
        $pre->update();

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'PREGUNTA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Editado Correctamente');
        return Redirect::to('pregunta');
    }

    public function destroy($id)
    {
        $pre         = Preguntas::findOrFail($id);
        $pre->ESTADO = 'Inactiva';
        $pre->update();

        //INICIO Logs de Auditoria
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'DESHABILITAR';
        $audit->OBJETO     = 'PREGUNTA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $id;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Deshabilitado Correctamente');
        return Redirect::to('pregunta');
    }

}
