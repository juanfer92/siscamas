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
use sisCamas\Hospitalizacion;
use sisCamas\Http\Requests\HospitalizacionFormRequest;
use sisCamas\Paciente;
use sisCamas\Patologia;

class HospitalizacionController extends Controller
{
    public function __construct()
    {

    }

    public function index(Request $request)
    {
        if ($request) {
            $query = trim($request->get('searchText'));

            $hospitalizaciones = DB::table('hospitalizacion as h')
                ->join('pacientes as p', 'h.ID_PACIENTE', '=', 'p.ID_PACIENTE')
                ->join('detalle_hospitalizacion as dh', 'h.ID_HOSPITALIZACION', '=', 'dh.ID_HOSPITALIZACION')
                ->select('h.ID_HOSPITALIZACION', 'p.NOM_PACIENTE', 'p.NOM_PACIENTE1', 'h.TPARTO', 'p.APE_PACIENTE', 'p.APE_PACIENTE1', 'p.CI_PACIENTE', 'h.EST_HOSPITALIZACION', 'h.FECHA_INGRESO', 'h.FECHA_EGRESO')
                ->where('p.APE_PACIENTE', 'LIKE', '%' . $query . '%')
                ->orderBy('h.ID_HOSPITALIZACION', 'desc')
                ->groupBy('h.ID_HOSPITALIZACION', 'p.NOM_PACIENTE', 'p.NOM_PACIENTE1', 'h.TPARTO', 'p.APE_PACIENTE', 'p.APE_PACIENTE1', 'p.CI_PACIENTE', 'h.EST_HOSPITALIZACION', 'h.FECHA_INGRESO', 'h.FECHA_EGRESO')
                ->paginate(7);

            return view('hospitalizacion.index', ["hospitalizaciones" => $hospitalizaciones, "searchText" => $query]);
        }
    }

    public function create()
    {
        $pacientes  = DB::select('SELECT * FROM PACIENTES where ASIG_PACIENTE = 0');

        $patologiam = Patologia::where('TPACIENTE', '=', 'Maternal')->get();
        $patologian = Patologia::where('TPACIENTE', '=', 'Neonato')->get();
        $camas      = DB::table('cama as c')
            ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
            ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
            ->join('subunidad as sub', 'c.ID_SUBUNIDAD', '=', 'sub.ID_SUBUNIDAD')
            ->join('unidad as u', 'sub.ID_UNIDAD', '=', 'U.ID_UNIDAD')
            ->join('sucursales as suc', 'U.ID_SUCURSAL', '=', 'SUC.ID_SUCURSAL')
            ->select('c.ID_CAMA', 'c.COD_CAMA', DB::raw('CONCAT(suc.DESCRIPCION," ",u.DESC_UNIDAD," ",sub.DESC_SUBUNIDAD) as Ubicacion'), 'tc.DESC_TCAMA as descripcion')
            ->where('ec.DESC_ESTCAM', '=', 'Disponible')
            ->get();

        return view("hospitalizacion.create", ["pacientes" => $pacientes, "camas" => $camas, "patologiam" => $patologiam, "patologian" => $patologian]);
    }

    public function store(HospitalizacionFormRequest $request)
    {

        try {
            DB::beginTransaction();
            $hospi                      = new Hospitalizacion;
            $hospi->ID_PACIENTE         = $request->get('idpaciente');
            $hospi->ID_PATOLOGIA        = $request->get('idpatologiam');
            $hospi->TPARTO              = $request->get('parto');
            $mytime                     = Carbon::now('America/Lima');
            $hospi->FECHA_INGRESO       = $mytime->toDateTimeString();
            $hospi->EST_HOSPITALIZACION = 'Ingreso';
            $hospi->save();
            $idpaciete = $request->get('idpaciente');
            //dd($idpaciete);
            Paciente::where('ID_PACIENTE', $idpaciete)->update(['ASIG_PACIENTE' => 1]);
            $idcama       = $request->get('idcama');
            $idpatologian = $request->get('idpatologian');
            $observacion  = $request->get('observacion');

            $cont = 0;

            while ($cont < count($idcama)) {
                $dethos                     = new DetalleHospitalizacion;
                $dethos->ID_HOSPITALIZACION = $hospi->ID_HOSPITALIZACION;
                $dethos->ID_CAMA            = $idcama[$cont];
                $dethos->ID_PATOLOGIA       = $idpatologian[$cont];
                $dethos->OBSERVACION        = $observacion[$cont];
                $dethos->save();
                //Graba en el Cama His Historial de Camas Asignadas
                Cama::where('ID_CAMA', $idcama[$cont])->update(['ID_ESTCAM' => 2]);
                $chis                     = new Camahis;
                $chis->ID_HOSPITALIZACION = $hospi->ID_HOSPITALIZACION;
                $mytime                   = Carbon::now('America/Lima');
                $chis->FECHA_ESTADO       = $mytime->toDateTimeString();
                $chis->ID_CAMA            = $idcama[$cont];
                $chis->save();
                $cont = $cont + 1;
            }
            DB::commit();

        } catch (\Exception $e) {
            DB::rollback();
        }

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'INGRESO';
        $audit->OBJETO     = 'HOSPITALIZACION';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Creado Correctamente');
        return Redirect::to('hospitalizacion');
    }

    public function show($id)
    {
        $hospitalizado = DB::table('hospitalizacion as h')
            ->join('pacientes as p', 'h.ID_PACIENTE', '=', 'p.ID_PACIENTE')
            ->join('detalle_hospitalizacion as dh', 'h.ID_HOSPITALIZACION', '=', 'dh.ID_HOSPITALIZACION')
            ->join('patologia as pt', 'h.ID_PATOLOGIA', '=', 'pt.ID_PATOLOGIA')
            ->select('p.ID_PACIENTE', 'p.NOM_PACIENTE', 'p.NOM_PACIENTE1', 'p.APE_PACIENTE', 'p.APE_PACIENTE1', 'p.CI_PACIENTE', 'p.uuid', 'p.DIR_PACIENTE', 'p.TEL_PACIENTE', 'p.CEL_PACIENTE', 'p.EMAIL_PACIENTE', 'h.EST_HOSPITALIZACION', 'h.FECHA_INGRESO', 'h.FECHA_EGRESO', 'pt.DESC_PATOLOGIA')
            ->where('h.ID_HOSPITALIZACION', '=', $id)
            ->first();

        $detalles = DB::table('detalle_hospitalizacion as d')
            ->join('cama as c', 'd.ID_CAMA', '=', 'c.ID_CAMA')
            ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
            //->join('patologia as pt', 'd.ID_PATOLOGIA', '=', 'pt.ID_PATOLOGIA')
            ->select('c.COD_CAMA', 'tc.DESC_TCAMA')
            ->where('d.ID_HOSPITALIZACION', '=', $id)
            ->get();
        return view("hospitalizacion.show", compact('hospitalizado', 'detalles'));

    }

    public function destroy(Request $request, $id)
    {

        $hospitalizado = DB::table('hospitalizacion as h')
            ->join('pacientes as p', 'h.ID_PACIENTE', '=', 'p.ID_PACIENTE')
            ->join('detalle_hospitalizacion as dh', 'h.ID_HOSPITALIZACION', '=', 'dh.ID_HOSPITALIZACION')
            ->select('p.ID_PACIENTE')
            ->where('h.ID_HOSPITALIZACION', '=', $id)
            ->first();

        $detalles = DB::table('detalle_hospitalizacion as d')
            ->join('cama as c', 'd.ID_CAMA', '=', 'c.ID_CAMA')
            ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
            ->select('c.ID_CAMA')
            ->where('d.ID_HOSPITALIZACION', '=', $id)
            ->get();
        foreach ($hospitalizado as $com) {
            $val = $com;
        }

        $encuesta = DB::table('pacientes')->where('ID_PACIENTE', '=', $val)->value('reg_encuesta');

        if ($encuesta == 1) {
            $hospi                      = Hospitalizacion::findOrFail($id);
            $mytime                     = Carbon::now('America/Lima');
            $hospi->FECHA_EGRESO        = $mytime->toDateTimeString();
            $hospi->EST_HOSPITALIZACION = 'Egreso';
            $hospi->update();
            $cont = 0;
            //Cambia estados de Paciente
            foreach ($hospitalizado as $com) {
                $paciente = Paciente::findOrFail($com);

                $paciente->FECHA_EGRESO     = date("Y-m-d H:i:s");
                $paciente->EST_INGRE_EGRESO = 'Egreso';
                $paciente->update();
            }

            //fin estados de paciente

            foreach ($detalles as $com) {
                Cama::where('ID_CAMA', $com->ID_CAMA)->update(['ID_ESTCAM' => 1]);
            }

            //INICIO Logs de Auditoria
            $input             = serialize($request->all());
            $audit             = new Auditoria;
            $idUser            = \Auth::user()->id;
            $idname            = \Auth::user()->name;
            $audit->ID_USUARIO = $idUser;
            $audit->USUARIO    = $idname;
            $audit->ACCION     = 'EGRESO';
            $audit->OBJETO     = 'HOSPITALIZACION';
            $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
            $audit->SENTENCIA  = $input;
            $ip                = $_SERVER['HTTP_USER_AGENT'];
            $audit->NAVEGADOR  = $ip;
            $audit->FECHA      = date("Y-m-d H:i:s");
            $audit->save();
            //FIN Logs de Auditoria

            session()->flash('flash_message', 'El Egreso del Paciente se realizo correctamente, las camas estan disponibles');
        } else {
            session()->flash('flash_message', 'No se puede realizar el Egreso del paciente aun no ha llenado la encuesta');
        }

        return Redirect::to('hospitalizacion');
    }

}
