<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use sisCamas\Auditoria;
use sisCamas\Http\Requests\PatologiaFormRequest;
use sisCamas\Patologia;

class PatologiaController extends Controller
{
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        if ($request) {
            $query      = trim($request->get('searchText'));
            $tpatologia = DB::table('patologia')->where('DESC_PATOLOGIA', 'LIKE', '%' . $query . '%')
                ->paginate(10);
            return view('patologia.index', ["tpatologia" => $tpatologia, "searchText" => $query]);
        }
    }

    public function create()
    {
        return view("patologia.create");
    }

    public function store(PatologiaFormRequest $request)
    {
        $pato                 = new Patologia;
        $pato->DESC_PATOLOGIA = $request->get('descripcion');
        $pato->SINTOMA        = $request->get('sintoma');
        $pato->DIAGNOSTICO    = $request->get('diagnostico');
        $pato->PROCEDIMIENTO  = $request->get('procedimiento');
        $pato->TPACIENTE      = $request->get('tpaciente');
        $pato->EST_PATOLOGIA  = 'Activa';
        $pato->save();
        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'CREAR';
        $audit->OBJETO     = 'PATOLOGÍA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Creado Correctamente');
        return Redirect::to('patologia');
    }

    public function show($id)
    {
        return view("patologia.show", ["patologia" => Patologia::findOrFail($id)]);
    }

    public function edit($id)
    {

        return view("patologia.edit", ["patologia" => Patologia::findOrFail($id)]);
    }

    public function update(PatologiaFormRequest $request, $id)
    {
        $pato                 = Patologia::findOrFail($id);
        $pato->DESC_PATOLOGIA = $request->get('descripcion');
        $pato->SINTOMA        = $request->get('sintoma');
        $pato->DIAGNOSTICO    = $request->get('diagnostico');
        $pato->PROCEDIMIENTO  = $request->get('procedimiento');
        $pato->TPACIENTE      = $request->get('tpaciente');
        $pato->EST_PATOLOGIA  = $request->get('estado');
        $pato->update();
        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'PATOLOGÍA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Editado Correctamente');
        return Redirect::to('patologia');
    }

    public function destroy($id)
    {
        $pato                = Patologia::findOrFail($id);
        $pato->EST_PATOLOGIA = 'Inactivo';
        $pato->update();
        //INICIO Logs de Auditoria
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'DESHABILITAR';
        $audit->OBJETO     = 'PATOLOGÍA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $id;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Deshabilitado Correctamente');
        return Redirect::to('patologia');
    }
}
