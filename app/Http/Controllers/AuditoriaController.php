<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Http\Request;
use sisCamas\Auditoria;

class AuditoriaController extends Controller
{
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        if ($request) {
            $query     = trim($request->get('searchText'));
            $auditoria = DB::table('auditoria')
                ->where('USUARIO', 'LIKE', '%' . $query . '%')
                ->orwhere('ACCION', 'LIKE', '%' . $query . '%')
                ->orwhere('OBJETO', 'LIKE', '%' . $query . '%')
                ->orwhere('FECHA', 'LIKE', '%' . $query . '%')
                ->paginate(7);

            return view('auditoria.index', ["auditoria" => $auditoria, "searchText" => $query]);
        }
    }

    public function show(Auditoria $aut, $id)
    {
        return view("auditoria.show", ["aut" => Auditoria::findOrFail($id)]);
    }
}
