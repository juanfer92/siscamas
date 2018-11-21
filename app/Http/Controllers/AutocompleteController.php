<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use sisCamas\Paciente;
use sisCamas\Subunidad;

class AutocompleteController extends Controller
{
    public function index()
    {
        return view('autocomplete.index');
    }

    public function search(Request $request)
    {
        $search   = $request->term;
        $paciente = Paciente::where('CI_PACIENTE', 'LIKE', '%' . $search . '%')
            ->selectRaw('ID_PACIENTE,CONCAT(NOM_PACIENTE," ",APE_PACIENTE) AS fullname, NOM_PACIENTE, APE_PACIENTE, CI_PACIENTE')
            ->get();
        $data = [];

        foreach ($paciente as $key => $value) {
            $data[] = ['id' => $value->ID_PACIENTE, 'value' => $value->fullname, 'NOM_PACIENTE' => $value->NOM_PACIENTE, 'APE_PACIENTE' => $value->APE_PACIENTE, 'CI_PACIENTE' => $value->CI_PACIENTE];
        }
        return response($data);
    }

    public function searchsubunidad(Request $request)
    {
        $search   = $request->term;
        $paciente = DB::table('vsucunisub')
            ->where('subunidad', 'LIKE', '%' . $search . '%')
            ->selectRaw('CONCAT(sucursal,"-",unidad,"-",subunidad) AS fullname,idsuc,sucursal,iduni,unidad,idsubu,subunidad')
            ->get();

        $data = [];

        foreach ($paciente as $key => $value) {
            $data[] = ['id' => $value->idsuc, 'value' => $value->fullname, 'sucursal' => $value->sucursal, 'iduni' => $value->iduni, 'unidad' => $value->unidad, 'idsubu' => $value->idsubu, 'subunidad' => $value->subunidad];
        }
        return response($data);
    }

    public function searchcama(Request $request)
    {
        $search   = $request->term;
        $paciente = DB::table('vsucunisub')
            ->where('subunidad', 'LIKE', '%' . $search . '%')
            ->selectRaw('CONCAT(sucursal,"-",unidad,"-",subunidad) AS fullname,idsuc,sucursal,iduni,unidad,idsubu,subunidad')
            ->get();

        $data = [];

        foreach ($paciente as $key => $value) {
            $data[] = ['id' => $value->idsuc, 'value' => $value->fullname, 'sucursal' => $value->sucursal, 'iduni' => $value->iduni, 'unidad' => $value->unidad, 'idsubu' => $value->idsubu, 'subunidad' => $value->subunidad];
        }
        return response($data);
    }
}
