<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use sisCamas\Encuesta;
use sisCamas\Http\Requests\EncuestaFormRequest;
//use Maatwebsite\Excel\Facades\Excel;
use sisCamas\Paciente;

class EncuestaController extends Controller
{
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        if ($request) {
            $query = trim($request->get('searchText'));

            $encuestas = DB::table('pacientes as p')
                ->select('p.ID_PACIENTE', 'p.NOM_PACIENTE', 'p.APE_PACIENTE', 'p.CI_PACIENTE')
                ->where('p.reg_encuesta', '=', '0')
                ->paginate(7);

            return view('encuesta.index', ["encuestas" => $encuestas, "searchText" => $query]);
        }
    }

    public function show($id)
    {
        return view("encuesta.show", ["encuestas" => Encuesta::findOrFail($id)]);
    }

    public function edit($id)
    {
        $pacientes = Paciente::findOrFail($id);
        $preguntas = DB::table('preguntas')
            ->where('ESTADO', '=', 'Activa')->get();

        return view("encuesta.edit", ["pacientes" => $pacientes, "preguntas" => $preguntas]);
    }

    public function update(EncuestaFormRequest $request, $id)
    {
        $paciente               = Paciente::findOrFail($id);
        $paciente->reg_encuesta = '1';
        $paciente->save();

        $idpregunta = $request->get('idpregunta');
        $valor      = $request->get('valor');
        $tope       = $request->get('tope');
        $cont       = 0;

        while ($cont < count($idpregunta)) {
            $encuesta              = new Encuesta;
            $encuesta->ID_PACIENTE = $id;
            $encuesta->ID_PREGUNTA = $idpregunta[$cont];
            $encuesta->VALOR       = $valor[$cont];
            $encuesta->save();
            $cont = $cont + 1;
        }

        session()->flash('flash_message', 'Encuesta Realizada Correctamente');
        return redirect()->away('http://localhost/');
    }

}
