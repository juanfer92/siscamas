<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use sisCamas\Auditoria;
use sisCamas\Estadocama;
use sisCamas\Http\Requests\EstadocamaFormRequest;

class EstadocamaController extends Controller
{

    public function __construct()
    {

    }

    public function index(Request $request)
    {
        if ($request) {
            $query    = trim($request->get('searchText'));
            $estcamas = DB::table('estado_cama')
                ->where('DESC_ESTCAM', 'LIKE', '%' . $query . '%')
                ->paginate(3);

            return view('estadocama.index', ["estcamas" => $estcamas, "searchText" => $query]);
        }
    }

    public function create()
    {

        return view("estadocama.create");

    }

    public function store(EstadocamaFormRequest $request)
    {
        $estcamas              = new Estadocama;
        $estcamas->DESC_ESTCAM = $request->get('descripcion');

        if (Input::hasFile('imagen')) {
            $file = Input::file('imagen');
            $file->move(public_path() . '/imagenes/estadocama/', $file->getClientOriginalName());
            $estcamas->IMG_ESTCAMA = $file->getClientOriginalName();
        }

        $estcamas->EST_ESTCAMA = 'Activo';
        $estcamas->save();
        //INICIO Logs de Auditoria
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'CREAR';
        $audit->OBJETO     = 'ESTADO DE CAMA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = 'Se a creado un nuevo estado.';
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Creado Correctamente');
        return Redirect::to('estadocama');
    }

    public function show($id)
    {
        return view("estadocama.show", ["estcamas" => Estadocama::findOrFail($id)]);
    }

    public function edit($id)
    {

        return view("estadocama.edit", ["estcamas" => Estadocama::findOrFail($id)]);
    }

    public function update(EstadocamaFormRequest $request, $id)
    {
        $estcamas              = Estadocama::findOrFail($id);
        $estcamas->DESC_ESTCAM = $request->get('descripcion');
        if (Input::hasFile('imagen')) {
            $file = Input::file('imagen');
            $file->move(public_path() . '/imagenes/estadocama/', $file->getClientOriginalName());
            $estcamas->IMG_ESTCAMA = $file->getClientOriginalName();
        }
        $estcamas->EST_ESTCAMA = $request->get('estado');
        $estcamas->update();
        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'ESTADO DE CAMA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Editado Correctamente');
        return Redirect::to('estadocama');
    }

    public function destroy($id)
    {
        $estcamas              = Estadocama::findOrFail($id);
        $estcamas->EST_ESTCAMA = 'Inactivo';
        $estcamas->update();
        //INICIO Logs de Auditoria
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'DESHABILITAR';
        $audit->OBJETO     = 'ESTADO DE CAMA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $id;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Deshabilitado Correctamente');
        return Redirect::to('estadocama');
    }
}
