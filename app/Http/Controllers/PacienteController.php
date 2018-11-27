<?php

namespace sisCamas\Http\Controllers;

use Carbon\Carbon;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Str;
use sisCamas\Auditoria;
use sisCamas\Http\Requests\PacienteFormRequest;
use sisCamas\Paciente;
use Alert;

class PacienteController extends Controller
{
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        if ($request) {
            $query     = trim($request->get('searchText'));
            $pacientes = DB::table('pacientes')
                ->where('APE_PACIENTE', 'LIKE', '%' . $query . '%')
                ->paginate(10);

            return view('paciente.index', ["pacientes" => $pacientes, "searchText" => $query]);
        }
    }

    public function create()
    {

        return view("paciente.create");
    }

    public function store(PacienteFormRequest $request)
    {
        $paciente                   = new Paciente;
        $idsuc                      = \Auth::user()->ID_SUCURSAL;
        $paciente->ID_SUCURSAL      = $idsuc;
        $paciente->uuid             = Str::uuid();
        $paciente->NOM_PACIENTE     = $request->get('nombres');
        $paciente->NOM_PACIENTE1    = $request->get('nombres1');
        $paciente->APE_PACIENTE     = $request->get('apellidos');
        $paciente->APE_PACIENTE1    = $request->get('apellidos1');
        $paciente->CI_PACIENTE      = $request->get('CI_PACIENTE');
        $paciente->NAC_PACIENTE     = $request->get('nacionalidad');
        $paciente->EDAD_PACIENTE    = $request->get('edad');
        $paciente->TSAN_PACIENTE    = $request->get('tsangre');
        $paciente->DIR_PACIENTE     = $request->get('direccion');
        $paciente->TEL_PACIENTE     = $request->get('telefono');
        $paciente->CEL_PACIENTE     = $request->get('celular');
        $paciente->EMAIL_PACIENTE   = $request->get('email');
        $paciente->NOM_FAMILIAR1    = $request->get('contacto1');
        $paciente->TELF_CONTACTO1   = $request->get('telefono1');
        $paciente->NOM_FAMILIAR2    = $request->get('contacto2');
        $paciente->TELF_CONTACTO2   = $request->get('telefono2');
        $paciente->EST_INGRE_EGRESO = 'Ingreso';
        $paciente->reg_encuesta     = 0;
        $paciente->ASIG_PACIENTE     = 0;
        $paciente->FECHA_INGRESO    = date("Y-m-d H:i:s");
        $paciente->save();
        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'CREAR';
        $audit->OBJETO     = 'PACIENTE';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        Alert::success('Registro Creado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('paciente');
    }

    public function show($id)
    {
        return view("paciente.show", ["paciente" => Paciente::findOrFail($id)]);
    }

    public function edit($id)
    {
        return view("paciente.edit", ["pacientes" => Paciente::findOrFail($id)]);
    }

    public function update(PacienteFormRequest $request, $id)
    {

        $paciente                 = Paciente::findOrFail($id);
        $paciente->NOM_PACIENTE   = $request->get('nombres');
        $paciente->NOM_PACIENTE1  = $request->get('nombres1');
        $paciente->APE_PACIENTE   = $request->get('apellidos');
        $paciente->APE_PACIENTE1  = $request->get('apellidos1');
        $paciente->CI_PACIENTE    = $request->get('CI_PACIENTE');
        $paciente->NAC_PACIENTE   = $request->get('nacionalidad');
        $paciente->EDAD_PACIENTE  = $request->get('edad');
        $paciente->TSAN_PACIENTE  = $request->get('tsangre');
        $paciente->DIR_PACIENTE   = $request->get('direccion');
        $paciente->TEL_PACIENTE   = $request->get('telefono');
        $paciente->CEL_PACIENTE   = $request->get('celular');
        $paciente->EMAIL_PACIENTE = $request->get('email');
        $paciente->NOM_FAMILIAR1  = $request->get('contacto1');
        $paciente->TELF_CONTACTO1 = $request->get('telefono1');
        $paciente->NOM_FAMILIAR2  = $request->get('contacto2');
        $paciente->TELF_CONTACTO2 = $request->get('telefono2');
        $validador                = $request->get('reingreso');

        if ($validador == "Ingreso") {
            $paciente->EST_INGRE_EGRESO = $request->get('reingreso');
            $mytime                     = Carbon::now('America/Lima');
            $paciente->FECHA_INGRESO    = $mytime->toDateTimeString();
            $paciente->FECHA_EGRESO     = null;
            $paciente->reg_encuesta     = 0;
            $paciente->ASIG_PACIENTE     = 0;
            echo "ingreso";
        }

        Alert::success('Registro Actualizado Con Éxito', ' Mensaje de Confirmación');
        $paciente->update();

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'PACIENTE';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        return Redirect::to('paciente');
    }

    public function destroy($id)
    {
        $paciente = Paciente::findOrFail($id);
        return Redirect::to('paciente')->with('info', 'Paciente Desactivada Con Éxito');
    }
}
