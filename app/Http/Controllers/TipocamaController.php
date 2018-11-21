<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use sisCamas\Auditoria;
use sisCamas\Http\Requests\TipocamaFormRequest;
use sisCamas\Tipocama;

class TipocamaController extends Controller
{
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        if ($request) {
            $query  = trim($request->get('searchText'));
            $tcamas = DB::table('tipo_cama')
                ->where('DESC_TCAMA', 'LIKE', '%' . $query . '%')
                ->paginate(4);
            return view('tipocama.index', ["tcamas" => $tcamas, "searchText" => $query]);
        }
    }

    public function create()
    {

        return view("tipocama.create");

    }

    public function store(TipocamaFormRequest $request)
    {
        $tcama             = new Tipocama;
        $tcama->DESC_TCAMA = $request->get('descripcion');

        if (Input::hasFile('imagen')) {
            $file = Input::file('imagen');
            $file->move(public_path() . '/imagenes/tipocama/', $file->getClientOriginalName());
            $tcama->IMG_TCAMA = $file->getClientOriginalName();
        }

        $tcama->EST_TCAMA = 'Activo';
        $tcama->save();

        //INICIO Logs de Auditoria
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'CREAR';
        $audit->OBJETO     = 'TIPO DE CAMA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = 'SE CREO UN NUEVO TIPO DE CAMA';
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Creado Correctamente');
        return Redirect::to('tipocama');
    }

    public function show($id)
    {
        return view("tipocama.show", ["tipocama" => Tipocama::findOrFail($id)]);
    }

    public function edit($id)
    {

        return view("tipocama.edit", ["tipocama" => Tipocama::findOrFail($id)]);
    }

    public function update(TipocamaFormRequest $request, $id)
    {
        $tcama             = Tipocama::findOrFail($id);
        $tcama->DESC_TCAMA = $request->get('descripcion');
        if (Input::hasFile('imagen')) {
            $file = Input::file('imagen');
            $file->move(public_path() . '/imagenes/tipocama/', $file->getClientOriginalName());
            $tcama->IMG_TCAMA = $file->getClientOriginalName();
        }
        $tcama->EST_TCAMA = $request->get('estado');
        $tcama->update();

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'TIPO DE CAMA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Editado Correctamente');
        return Redirect::to('tipocama');
    }

    public function destroy($id)
    {
        $tcama            = Tipocama::findOrFail($id);
        $tcama->EST_TCAMA = 'Inactivo';
        $tcama->update();

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
        return Redirect::to('tipocama');
    }
}
