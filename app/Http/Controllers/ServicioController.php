<?php

namespace sisCamas\Http\Controllers;

use DB;
use Excel;
use Fpdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use sisCamas\Auditoria;
use sisCamas\Exports\UsersExport;
//use Maatwebsite\Excel\Facades\Excel;
use sisCamas\Http\Requests\ServicioFormRequest;
use sisCamas\Servicio;
use Alert;

class ServicioController extends Controller
{

    public function __construct()
    {
        //$this->middleware('auth');
    }

    public function index(Request $request)
    {
        if ($request) {
            $query    = trim($request->get('searchText'));
            $servicio = DB::table('servicio')
                ->where('DESC_SERVICIO', 'LIKE', '%' . $query . '%')
                ->paginate(7);
            return view('servicio.index', ["servicio" => $servicio, "searchText" => $query]);
        }
    }

    public function create()
    {
        return view("servicio.create");
    }

    public function store(ServicioFormRequest $request)
    {
        $servicio                = new Servicio;
        $servicio->DESC_SERVICIO = $request->get('descripcion');
        $servicio->EST_SERVICIO  = 'Activa';
        $servicio->save();
        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'CREAR';
        $audit->OBJETO     = 'SERVICIO';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        Alert::success('Registro Creado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('servicio');
    }

    public function show($id)
    {
        return view("servicio.show", ["servicio" => Servicio::findOrFail($id)]);
    }
    public function edit($id)
    {
        $servicio = Servicio::findOrFail($id);
        return view("servicio.edit", ["servicio" => $servicio]);
    }

    public function update(ServicioFormRequest $request, $id)
    {
        $servicio                = Servicio::findOrFail($id);
        $servicio->DESC_SERVICIO = $request->get('descripcion');
        $servicio->EST_SERVICIO  = $request->get('estado');
        $servicio->update();
        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'SERVICIO';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        Alert::success('Registro Actualizado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('servicio');
    }

    public function destroy($id)
    {
        $servicio               = Servicio::findOrFail($id);
        $servicio->EST_SERVICIO = 'Inactiva';
        $servicio->update();

        //INICIO Logs de Auditoria
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'DESHABILITAR';
        $audit->OBJETO     = 'SERVICIO';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $id;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        Alert::success('Registro Deshabilitado Con Éxito', ' Mensaje de Confirmación');
        return Redirect::to('servicio');
    }

    public function reporte()
    {
        //obtiene registros
        $registros = DB::table('servicio as s')
            ->select('ID_SERVICIO', 'DESC_SERVICIO', 'EST_SERVICIO')
            ->orderBy('ID_SERVICIO')
            ->get();
        $pdf = new Fpdf();
        $pdf::AddPage();
        $pdf::Image('http://localhost/logo.png', 10, 10, 35, 17);
        $pdf::Image('http://localhost/cordi.png', 165, 10, 35, 20);
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 15, utf8_decode("Listado Servicios"), 0, "", "C");
        $pdf::Ln();
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Descripción"), 1, "", "L", true);
        $pdf::cell(90, 8, utf8_decode("Estado"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($registros as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_SERVICIO), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SERVICIO), 1, "", "L", true);
            $pdf::cell(90, 6, utf8_decode($reg->EST_SERVICIO), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::Output();
        exit;

    }

    public function excel()
    {
        return Excel::download(new UsersExport, 'users.xlsx');
    }

}
