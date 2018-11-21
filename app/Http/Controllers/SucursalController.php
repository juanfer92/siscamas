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
use sisCamas\Http\Requests\SucursalFormRequest;
use sisCamas\Sucursal;

class SucursalController extends Controller
{

    public function __construct()
    {

    }

    public function index(Request $request)
    {
        if ($request) {
            $query      = trim($request->get('searchText'));
            $sucursales = DB::table('sucursales')
                ->where('DESCRIPCION', 'LIKE', '%' . $query . '%')
                ->orwhere('DIR_SUCURSAL', 'LIKE', '%' . $query . '%')
                ->orwhere('TELF_SUCURSAL', 'LIKE', '%' . $query . '%')
                ->paginate(7);
            return view('sucursal.index', ["sucursales" => $sucursales, "searchText" => $query]);
        }
    }

    public function create()
    {
        $hospitales = DB::table('hospital')
            ->where('EST_HOSPITAL', '=', 'Activo')->get();
        return view("sucursal.create", ["hospitales" => $hospitales]);
    }

    public function store(SucursalFormRequest $request)
    {
        $sucursal                = new Sucursal;
        $sucursal->ID_HOSPITAL   = $request->get('idhospital');
        $sucursal->DESCRIPCION   = $request->get('descripcion');
        $sucursal->DIR_SUCURSAL  = $request->get('direccion');
        $sucursal->TELF_SUCURSAL = $request->get('telefono');
        $sucursal->TIPO          = $request->get('tipo');
        $sucursal->EST_SUCURSAL  = 'Activo';
        $sucursal->save();

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'CREAR';
        $audit->OBJETO     = 'SUCURSAL';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Creado Correctamente');
        return Redirect::to('sucursal');
    }

    public function show($id)
    {
        return view("sucursal.show", ["sucursal" => Sucursal::findOrFail($id)]);
    }
    public function edit($id)
    {
        $sucursal   = Sucursal::findOrFail($id);
        $hospitales = DB::table('hospital')
            ->where('EST_HOSPITAL', '=', 'Activo')->get();
        return view("sucursal.edit", ["sucursal" => $sucursal, "hospitales" => $hospitales]);
    }

    public function update(SucursalFormRequest $request, $id)
    {
        $sucursal                = Sucursal::findOrFail($id);
        $sucursal->ID_HOSPITAL   = $request->get('idhospital');
        $sucursal->DESCRIPCION   = $request->get('descripcion');
        $sucursal->DIR_SUCURSAL  = $request->get('direccion');
        $sucursal->TELF_SUCURSAL = $request->get('telefono');
        $sucursal->TIPO          = $request->get('tipo');
        $sucursal->EST_SUCURSAL  = $request->get('estado');
        $sucursal->update();

        //INICIO Logs de Auditoria
        $input             = serialize($request->all());
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'ACTUALIZAR';
        $audit->OBJETO     = 'SUCURSAL';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $input;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Editado Correctamente');
        return Redirect::to('sucursal');
    }

    public function destroy($id)
    {
        $sucursal               = Sucursal::findOrFail($id);
        $sucursal->EST_SUCURSAL = 'Inactivo';
        $sucursal->update();

        //INICIO Logs de Auditoria
        $audit             = new Auditoria;
        $idUser            = \Auth::user()->id;
        $idname            = \Auth::user()->name;
        $audit->ID_USUARIO = $idUser;
        $audit->USUARIO    = $idname;
        $audit->ACCION     = 'DESHABILITAR';
        $audit->OBJETO     = 'SUCURSAL';
        $audit->EQUIPO     = gethostbyaddr($_SERVER['REMOTE_ADDR']);
        $audit->SENTENCIA  = $id;
        $ip                = $_SERVER['HTTP_USER_AGENT'];
        $audit->NAVEGADOR  = $ip;
        $audit->FECHA      = date("Y-m-d H:i:s");
        $audit->save();
        //FIN Logs de Auditoria

        session()->flash('flash_message', 'Registro Deshabilitado Correctamente');
        return Redirect::to('sucursal');
    }

    public function reporte()
    {
        //obtiene registros
        $registros = DB::table('sucursales as s')
            ->select('ID_SUCURSAL', 'DESCRIPCION', 'DIR_SUCURSAL', 'TELF_SUCURSAL')
            ->orderBy('ID_SUCURSAL')
            ->get();
        $pdf = new Fpdf();
        $pdf::AddPage();
        $pdf::Image('http://localhost/logo.png', 10, 10, 35, 17);
        $pdf::Image('http://localhost/cordi.png', 165, 10, 35, 20);
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 15, utf8_decode("Listado Sucursales"), 0, "", "C");
        $pdf::Ln();
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Descripción"), 1, "", "L", true);
        $pdf::cell(90, 8, utf8_decode("Dirección"), 1, "", "L", true);
        $pdf::cell(45, 8, utf8_decode("Teléfono"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($registros as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_SUCURSAL), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(90, 6, utf8_decode($reg->DIR_SUCURSAL), 1, "", "L", true);
            $pdf::cell(45, 6, utf8_decode($reg->TELF_SUCURSAL), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::Output();
        exit;

    }

    public function excel()
    {
        return Excel::download(new UsersExport, 'users.xlsx');
    }

    //fin controller
}
