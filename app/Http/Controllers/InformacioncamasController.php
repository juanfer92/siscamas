<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use sisCamas\Subunidad;

class InformacioncamasController extends Controller
{

    public function index(Request $request)
    {
        $subunidades = Subunidad::where('EST_SUBUNIDAD', '=', 'Activo')->get();
        return view('infocamas.index', ["subunidades" => $subunidades]);
    }

    public function show($id)
    {

        $cabecera = DB::table('subunidad as s')
            ->join('cama as c', 's.ID_SUBUNIDAD', '=', 'c.ID_SUBUNIDAD')
            ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
            ->select('s.DESC_SUBUNIDAD')
            ->where('s.ID_SUBUNIDAD', '=', $id)
            ->first();

              if ($cabecera == null) {
                echo "<br>";
              echo "<center><h2>No Existe Camas Asignadas a esta UNIDAD</h2></center>";
              }else {
        foreach ($cabecera as $com) {
            $valor = $com;
        }
        $detalles = DB::table('cama as c')
            ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
            ->join('detalle_hospitalizacion as dh', 'c.ID_CAMA', '=', 'dh.ID_CAMA')
            ->join('hospitalizacion as h', 'dh.ID_HOSPITALIZACION', '=', 'h.ID_HOSPITALIZACION')
            ->join('pacientes as p', 'h.ID_PACIENTE', '=', 'p.ID_PACIENTE')
            ->select('c.COD_CAMA', 'p.NOM_PACIENTE', 'p.NOM_PACIENTE1', 'p.APE_PACIENTE', 'p.APE_PACIENTE1')
            ->whereRaw('h.EST_HOSPITALIZACION= "Ingreso" and s.DESC_SUBUNIDAD = ?', [$valor])
            ->get();

        return view("infocamas.show", compact('cabecera', 'detalles'));
          }
    }

}
