<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use sisCamas\Auditoria;
//use Illuminate\Support\Facades\Input; //Para subir imagen
use sisCamas\Hospital;
use sisCamas\Http\Requests\HospitalFormRequest;
use Alert;

class HospitalController extends Controller
{
    public function __construct()
    {

    }

    public function index(Request $request)  {
        if ($request) {
            $query      = trim($request->get('searchText'));
            $hospitales = DB::table('hospital')
                ->where('NOM_HOSPITAL', 'LIKE', '%' . $query . '%')
                ->paginate(8);
            return view('hospital.index', ["hospitales" => $hospitales, "searchText" => $query]);
        }
    }

    public function create()
    {
        return view("hospital.create");
    }

    public function store(HospitalFormRequest $request)
    {
        $hospital                   = new Hospital;
        $hospital->NOM_HOSPITAL     = $request->get('nombre');
        $hospital->RUC_HOSPITAL     = $request->get('ruc');
        $hospital->REG_MSP_HOSPITAL = $request->get('reg_msp_hospital');
        $hospital->DIR_HOSPITAL     = $request->get('direccion');
        $hospital->TELF_HOSPITAL    = $request->get('telefono');
        $hospital->EST_HOSPITAL     = 'Activo';
        $hospital->save();
        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'CREAR';
        $audit->OBJETO     = 'HOSPITAL';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        Alert::success('Registro Creado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('hospital')->with('info', 'Hospital Creada con Éxito');
    }

    public function show($id)
    {
        return view("hospital.show", ["hospital" => Hospital::findOrFail($id)]);
    }

    public function edit($id)
    {
        return view("hospital.edit", ["hospital" => Hospital::findOrFail($id)]);
    }

    public function update(HospitalFormRequest $request, $id)
    {
        $hospital                   = Hospital::findOrFail($id);
        $hospital->NOM_HOSPITAL     = $request->get('nombre');
        $hospital->RUC_HOSPITAL     = $request->get('ruc');
        $hospital->REG_MSP_HOSPITAL = $request->get('reg_msp_hospital');
        $hospital->DIR_HOSPITAL     = $request->get('direccion');
        $hospital->TELF_HOSPITAL    = $request->get('telefono');
        $hospital->EST_HOSPITAL     = $request->get('estado');
        $hospital->update();
        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'HOSPITAL';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        Alert::success('Registro Actualizado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('hospital');
    }

    public function destroy($id)
    {
        $hospital               = Hospital::findOrFail($id);
        $hospital->EST_HOSPITAL = 'Inactiva';
        $hospital->update();
        //INICIO Logs de Auditoria
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'DESHABILITAR';
        $audit->OBJETO     = 'HOSPITAL';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $id;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        Alert::success('Registro Deshabilitado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('hospital');
    }

}
