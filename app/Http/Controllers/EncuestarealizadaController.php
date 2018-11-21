<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class EncuestarealizadaController extends Controller
{
    public function index(Request $request)
    {
        if ($request) {
            $query     = trim($request->get('searchText'));
            $encuestas = DB::table('pacientes as p')
                ->select('p.ID_PACIENTE', 'p.NOM_PACIENTE', 'p.APE_PACIENTE', 'p.CI_PACIENTE')
                ->where('p.reg_encuesta', '=', '1')
                ->paginate(7);

            return view('encuestarealizada.index', ["encuestas" => $encuestas, "searchText" => $query]);
        }
    }

    public function show($id)
    {
        $cabecera = DB::table('encuesta_reg as er')
            ->join('preguntas as pre', 'er.ID_PREGUNTA', '=', 'pre.ID_PREGUNTA')
            ->join('pacientes as p', 'er.ID_PACIENTE', '=', 'p.ID_PACIENTE')
            ->select('p.NOM_PACIENTE', 'p.APE_PACIENTE', 'p.NOM_PACIENTE1', 'p.APE_PACIENTE1', 'p.CI_PACIENTE', 'p.uuid', 'er.updated_at')
            ->where('p.ID_PACIENTE', '=', $id)
            ->first();

        $detalles = DB::table('encuesta_reg as er')
            ->join('preguntas as pre', 'er.ID_PREGUNTA', '=', 'pre.ID_PREGUNTA')
            ->join('pacientes as p', 'er.ID_PACIENTE', '=', 'p.ID_PACIENTE')
            ->select('pre.ID_PREGUNTA', 'pre.DESCRIPCION', 'er.valor', 'p.NOM_PACIENTE', 'p.APE_PACIENTE')
            ->where('p.ID_PACIENTE', '=', $id)
            ->get();

        return view("encuestarealizada.show", compact('detalles', 'cabecera'));
    }

}
