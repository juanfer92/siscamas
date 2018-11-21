<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class CamahisController extends Controller
{
    public function index(Request $request)
    {
        if ($request) {
            $query   = trim($request->get('searchText'));
            $camahis = DB::table('cama_his as ch')
                ->join('cama as c', 'ch.ID_CAMA', '=', 'c.ID_CAMA')
                ->join('hospitalizacion as h', 'ch.ID_HOSPITALIZACION', '=', 'h.ID_HOSPITALIZACION')
                ->join('pacientes as p', 'h.ID_PACIENTE', '=', 'p.ID_PACIENTE')
                ->select('ch.ID_HCAMA', 'c.COD_CAMA', 'p.NOM_PACIENTE', 'p.APE_PACIENTE', 'p.CI_PACIENTE', 'h.FECHA_INGRESO', 'h.FECHA_EGRESO')
                ->where('c.COD_CAMA', 'LIKE', '%' . $query . '%')
                ->orWhere('p.APE_PACIENTE', 'LIKE', '%' . $query . '%')
                ->orWhere('p.CI_PACIENTE', 'LIKE', '%' . $query . '%')
                ->orWhere('h.FECHA_INGRESO', 'LIKE', '%' . $query . '%')
                ->orderBy('ch.ID_HCAMA', 'desc')
                ->paginate(7);

            return view('camahis.index', ["camahis" => $camahis, "searchText" => $query]);
        }
    }

    public function show($id)
    {
        $camahis = DB::table('cama_his as ch')
            ->join('cama as c', 'ch.ID_CAMA', '=', 'c.ID_CAMA')
            ->join('hospitalizacion as h', 'ch.ID_HOSPITALIZACION', '=', 'h.ID_HOSPITALIZACION')
            ->join('pacientes as p', 'h.ID_PACIENTE', '=', 'p.ID_PACIENTE')
            ->select('ch.ID_HCAMA', 'c.COD_CAMA', 'p.NOM_PACIENTE', 'p.APE_PACIENTE', 'p.CI_PACIENTE', 'h.FECHA_INGRESO', 'h.FECHA_EGRESO')
            ->where('ch.ID_HCAMA', '=', $id)
            ->first();

        return view("camahis.show", compact('camahis'));
    }

}
