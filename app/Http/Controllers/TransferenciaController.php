<?php

namespace sisCamas\Http\Controllers;

use Carbon\Carbon;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use sisCamas\Auditoria;
use sisCamas\Cama;
use sisCamas\Camahis;
use sisCamas\DetalleHospitalizacion;
use sisCamas\Http\Requests\TransferenciaFormRequest;
use sisCamas\Transferencia;

class TransferenciaController extends Controller
{
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        if ($request) {
            $query = trim($request->get('searchText'));

            $tranferencias = DB::table('hospitalizacion as h')
                ->join('pacientes as p', 'h.ID_PACIENTE', '=', 'p.ID_PACIENTE')
                ->join('detalle_hospitalizacion as dh', 'h.ID_HOSPITALIZACION', '=', 'dh.ID_HOSPITALIZACION')
                ->join('cama as c', 'dh.ID_CAMA', '=', 'c.ID_CAMA')
                ->select('dh.ID_DET_HOSPITALIZACION', 'p.NOM_PACIENTE', 'p.APE_PACIENTE', 'p.CI_PACIENTE', 'c.COD_CAMA', 'h.EST_HOSPITALIZACION')
                ->where('h.EST_HOSPITALIZACION', '=', 'Ingreso')
            //->where('p.EST_INGRE_EGRESO','=','Ingreso')
                ->where('p.APE_PACIENTE', 'LIKE', '%' . $query . '%')
                ->paginate(7);
            //dd($tranferencias);

            return view('transferencia.index', ["tranferencias" => $tranferencias, "searchText" => $query]);
        }
    }

    public function edit($id)
    {

        $detalles = DB::table('detalle_hospitalizacion as d')
            ->join('hospitalizacion as h', 'd.ID_HOSPITALIZACION', '=', 'h.ID_HOSPITALIZACION')
            ->join('pacientes as p', 'h.ID_PACIENTE', '=', 'p.ID_PACIENTE')
            ->join('cama as c', 'd.ID_CAMA', '=', 'c.ID_CAMA')
            ->join('subunidad as sub', 'c.ID_SUBUNIDAD', '=', 'sub.ID_SUBUNIDAD')
            ->join('unidad as uni', 'sub.ID_UNIDAD', '=', 'uni.ID_UNIDAD')
            ->join('sucursales as suc', 'uni.ID_SUCURSAL', '=', 'suc.ID_SUCURSAL')
            ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
            //->join('patologia as pt', 'd.ID_PATOLOGIA', '=', 'pt.ID_PATOLOGIA')
            ->select('d.ID_DET_HOSPITALIZACION', 'h.ID_HOSPITALIZACION', 'p.ID_PACIENTE', 'p.NOM_PACIENTE', 'p.NOM_PACIENTE1', 'p.APE_PACIENTE', 'p.APE_PACIENTE1', 'p.CI_PACIENTE', 'sub.DESC_SUBUNIDAD', 'uni.DESC_UNIDAD', 'suc.DESCRIPCION', 'c.ID_CAMA', 'c.COD_CAMA', 'tc.DESC_TCAMA')
            ->where('d.ID_DET_HOSPITALIZACION', '=', $id)
            ->first();

        $camas = DB::table('cama as c')
            ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
            ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
            ->join('subunidad as sub', 'c.ID_SUBUNIDAD', '=', 'sub.ID_SUBUNIDAD')
            ->join('unidad as u', 'sub.ID_UNIDAD', '=', 'U.ID_UNIDAD')
            ->join('sucursales as suc', 'U.ID_SUCURSAL', '=', 'SUC.ID_SUCURSAL')
            ->select('c.ID_CAMA', 'c.COD_CAMA', DB::raw('CONCAT(suc.DESCRIPCION," ",u.DESC_UNIDAD," ",sub.DESC_SUBUNIDAD) as Ubicacion'), 'tc.DESC_TCAMA as descripcion')
            ->where('ec.DESC_ESTCAM', '=', 'Disponible')
            ->get();

        return view("transferencia.edit", compact('detalles', 'camas'));

    }

    public function update(TransferenciaFormRequest $request, $id)
    {

        //dd($request);
        $transfer          = DetalleHospitalizacion::findOrFail($id);
        $transfer->ID_CAMA = $request->get('idncama');
        $transfer->update();

        $valor1          = $request->get('idncama');
        $cama            = Cama::findOrFail($valor1);
        $cama->ID_ESTCAM = '2';
        $cama->update();

        $valor           = $request->get('idcama');
        $cama            = Cama::findOrFail($valor);
        $cama->ID_ESTCAM = '1';
        $cama->update();

        $chis                     = new Camahis;
        $chis->ID_CAMA            = $request->get('idncama');
        $chis->ID_HOSPITALIZACION = $request->get('idhospita');
        $chis->TRANSFERENCIA      = "Tranferencia";
        $mytime                   = Carbon::now('America/Lima');
        $chis->FECHA_ESTADO       = $mytime->toDateTimeString();
        $chis->save();

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'TRANSFERENCIA';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Transferencia Realizada Correctamente');
        return Redirect::to('transferencia');
    }

}
