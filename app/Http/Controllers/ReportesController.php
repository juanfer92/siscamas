<?php

namespace sisCamas\Http\Controllers;

use DB;
//use Maatwebsite\Excel\Facades\Excel;
use Fpdf;
use PDF;

class ReportesController extends Controller
{

    public function index()
    {
        return view('reportes.index');

    }

    public function reportesucursales()
    {
        //obtiene registros de sucursales
        $registrosa = DB::table('sucursales as s')
            ->select('ID_SUCURSAL', 'DESCRIPCION', 'DIR_SUCURSAL', 'TELF_SUCURSAL')
            ->where('EST_SUCURSAL', '=', 'Activo')
            ->orderBy('ID_SUCURSAL')
            ->get();

        $registrosi = DB::table('sucursales as s')
            ->select('ID_SUCURSAL', 'DESCRIPCION', 'DIR_SUCURSAL', 'TELF_SUCURSAL')
            ->where('EST_SUCURSAL', '=', 'Activo')
            ->orderBy('ID_SUCURSAL')
            ->get();

        $pdf = new Fpdf();
        $pdf::AddPage();
        $pdf::Image('http://localhost/logo.png', 10, 10, 35, 17);
        $pdf::Image('http://localhost/cordi.png', 165, 10, 35, 20);
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 15, utf8_decode("Listado Sucursales Activas"), 0, "", "C");
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

        foreach ($registrosa as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_SUCURSAL), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(90, 6, utf8_decode($reg->DIR_SUCURSAL), 1, "", "L", true);
            $pdf::cell(45, 6, utf8_decode($reg->TELF_SUCURSAL), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Cell(0, 20, utf8_decode("Listado Sucursales Inactivas"), 0, "", "C");
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

        foreach ($registrosi as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_SUCURSAL), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(90, 6, utf8_decode($reg->DIR_SUCURSAL), 1, "", "L", true);
            $pdf::cell(45, 6, utf8_decode($reg->TELF_SUCURSAL), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::Output();
        exit;
    }

    public function reporteunidades()
    {
        //obtiene registros de unidades activas e inactivas
        $registrosa = DB::table('unidad as u')
            ->join('sucursales as s', 'u.ID_SUCURSAL', '=', 's.ID_SUCURSAL')
            ->select('u.ID_UNIDAD', 's.DESCRIPCION', 'DESC_UNIDAD')
            ->where('EST_UNIDAD', '=', 'Activo')
            ->orderBy('ID_UNIDAD')
            ->get();

        $registrosi = DB::table('unidad as u')
            ->join('sucursales as s', 'u.ID_SUCURSAL', '=', 's.ID_SUCURSAL')
            ->select('u.ID_UNIDAD', 's.DESCRIPCION', 'u.DESC_UNIDAD')
            ->where('EST_UNIDAD', '=', 'Inactivo')
            ->orderBy('ID_UNIDAD')
            ->get();

        $pdf = new Fpdf();
        $pdf::AddPage();
        $pdf::Image('http://localhost/logo.png', 10, 10, 35, 17);
        $pdf::Image('http://localhost/cordi.png', 165, 10, 35, 20);
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Ln();
        $pdf::Cell(0, 20, utf8_decode("Listado Unidades Activas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(90, 8, utf8_decode("Descripción"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($registrosa as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(90, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::Ln();
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Cell(0, 15, utf8_decode("Listado Unidades Inactivas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(90, 8, utf8_decode("Descripción"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($registrosi as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(90, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::Output();
        exit;
    }

    public function reportesubunidades()
    {
        //obtiene registros de subunidades activas e inactivas
        $registrosa = DB::table('subunidad as s')
            ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
            ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
            ->select('su.DESCRIPCION', 's.ID_SUBUNIDAD', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD as UNIDAD', 's.SECTOR_SUBUNIDAD', 's.PISO_SUBUNIDAD')
            ->where('s.EST_SUBUNIDAD', '=', 'Activo')
            ->orderBy('ID_SUBUNIDAD')
            ->get();

        $registrosi = DB::table('subunidad as s')
            ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
            ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
            ->select('su.DESCRIPCION', 's.ID_SUBUNIDAD', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD as UNIDAD', 's.SECTOR_SUBUNIDAD', 's.PISO_SUBUNIDAD')
            ->where('s.EST_SUBUNIDAD', '=', 'Inactivo')
            ->orderBy('ID_SUBUNIDAD')
            ->get();

        $pdf = new Fpdf();
        $pdf::AddPage();
        $pdf::Image('http://localhost/logo.png', 10, 10, 35, 17);
        $pdf::Image('http://localhost/cordi.png', 165, 10, 35, 20);
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Ln();
        $pdf::Cell(0, 20, utf8_decode("Listado Subnidades Activas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(50, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(50, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Sector"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Piso"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($registrosa as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(50, 6, utf8_decode($reg->UNIDAD), 1, "", "L", true);
            $pdf::cell(50, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->SECTOR_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->PISO_SUBUNIDAD), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::Ln();
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Cell(0, 15, utf8_decode("Listado Subnidades Inactivas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(50, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(50, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Sector"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Piso"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($registrosi as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(50, 6, utf8_decode($reg->UNIDAD), 1, "", "L", true);
            $pdf::cell(50, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->SECTOR_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->PISO_SUBUNIDAD), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::Output();
        exit;
    }

    public function reportetipocama()
    {
        //obtiene registros de tipos de camas activas e inactivas
        $registrosa = DB::table('tipo_cama')
            ->where('EST_TCAMA', '=', 'Activo')
            ->orderBy('ID_TCAMA')
            ->get();

        $registrosi = DB::table('tipo_cama')
            ->where('EST_TCAMA', '=', 'Inactivo')
            ->orderBy('ID_TCAMA')
            ->get();

        $pdf = new Fpdf();
        $pdf::AddPage();
        $pdf::Image('http://localhost/logo.png', 10, 10, 35, 17);
        $pdf::Image('http://localhost/cordi.png', 165, 10, 35, 20);
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Ln();
        $pdf::Cell(0, 20, utf8_decode("Listado Tipos de Camas Activas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(100, 8, utf8_decode("Descripción"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($registrosa as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_TCAMA), 1, "", "L", true);
            $pdf::cell(100, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::Ln();
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Cell(0, 15, utf8_decode("Listado Tipos de Camas Inactivas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(100, 8, utf8_decode("Descripción"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($registrosi as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_TCAMA), 1, "", "L", true);
            $pdf::cell(100, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::Output();
        exit;
    }

    public function reportecamasxunidad()
    {
        //obtiene registros de camas por unidades  libre u ocuapadas
        $registrosd = DB::table('cama as c')
            ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
            ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
            ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
            ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
            ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
            ->select('c.ID_ESTCAM', 'c.ID_CAMA', 'c.COD_CAMA', 'c.OBSER_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
            ->where('c.ID_ESTCAM', '=', 1)
            ->orderBy('DESC_SUBUNIDAD')
            ->get();

        $registroso = DB::table('cama as c')
            ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
            ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
            ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
            ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
            ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
            ->select('c.ID_ESTCAM', 'c.ID_CAMA', 'c.COD_CAMA', 'c.OBSER_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
            ->where('c.ID_ESTCAM', '=', 2)
            ->orderBy('ID_CAMA')
            ->get();

        $pdf = new Fpdf();
        $pdf::AddPage();
        $pdf::Image('http://localhost/logo.png', 10, 10, 35, 17);
        $pdf::Image('http://localhost/cordi.png', 165, 10, 35, 20);
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Ln();
        $pdf::Cell(0, 20, utf8_decode("Listado Camas Disponibles"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(45, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($registrosd as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(45, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::Ln();
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Cell(0, 15, utf8_decode("Listado Camas Ocupadas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(45, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($registroso as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(45, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::Output();
        exit;
    }

    public function reporteneonatologia()
    {
        //obtiene registros de camas por unidades  libre u ocuapadas
        $regneonatologia = DB::table('cama as c')
            ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
            ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
            ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
            ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
            ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
            ->select('c.ID_CAMA', 'c.COD_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
            ->where('s.DESC_SUBUNIDAD', '=', 'Neonatología')
            ->orderBy('ID_CAMA')
            ->get();

            $regdneo = DB::table('cama as c')
                ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
                ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
                ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
                ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
                ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
                ->select('c.ID_ESTCAM', 'c.ID_CAMA', 'c.COD_CAMA', 'c.OBSER_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
                ->where('c.ID_ESTCAM', '=', 1)
                ->where('s.DESC_SUBUNIDAD', '=', 'Neonatología')
                ->orderBy('ID_CAMA')
                ->get();

            $regoneo = DB::table('cama as c')
                ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
                ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
                ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
                ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
                ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
                ->select('c.ID_ESTCAM', 'c.ID_CAMA', 'c.COD_CAMA', 'c.OBSER_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
                ->where('c.ID_ESTCAM', '=', 2)
                ->where('s.DESC_SUBUNIDAD', '=', 'Neonatología')
                ->orderBy('ID_CAMA')
                ->get();
          $totcneo = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          WHERE s.DESC_SUBUNIDAD = "Neonatología"');

          foreach ($totcneo as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneo = $con;
              }
          }

          $totcneod = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
          WHERE s.DESC_SUBUNIDAD = "Neonatología"
          AND c.ID_ESTCAM = 1');

          foreach ($totcneod as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneod = $con;
              }
          }

          $totcneoo = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
          WHERE s.DESC_SUBUNIDAD = "Neonatología"
          AND c.ID_ESTCAM = 2');

          foreach ($totcneoo as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneoo = $con;
              }
          }

        $pdf = new Fpdf();
        $pdf::AddPage();
        $pdf::Image('http://localhost/logo.png', 10, 10, 35, 17);
        $pdf::Image('http://localhost/cordi.png', 165, 10, 35, 20);
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 20);
        $pdf::Ln();
        $pdf::Ln();
        $pdf::Cell(0, 20, utf8_decode("Reporte Camas de Neonatología"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        $pdf::cell(60, 8, utf8_decode("Total de Camas"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Disponibles"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Ocupadas"), 1, "", "L", true);
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);
            $pdf::cell(60, 6, utf8_decode($tneo), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($tneod), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($tneoo), 1, "", "L", true);
            $pdf::Ln();
        $pdf::Ln();
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Cell(0, 20, utf8_decode("Lista de Camas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regneonatologia as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 20, utf8_decode("Camas Disponibles"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regdneo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $totcneoo = DB::select('SELECT count(*) FROM cama c
        join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
        join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
        WHERE s.DESC_SUBUNIDAD = "Neonatología"
        AND c.ID_ESTCAM = 2');

        foreach ($totcneoo as $com) {
            $val = $com;
            foreach ($val as $con) {
                $tneoo = $con;
            }
        }

        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 20, utf8_decode("Camas Ocupadas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regoneo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $hismeo = DB::select('SELECT ch.ID_HCAMA, ch.TRANSFERENCIA, c.COD_CAMA, s.DESC_SUBUNIDAD,p.NOM_PACIENTE,p.APE_PACIENTE,p.CI_PACIENTE,ch.created_at FROM cama_his ch
          JOIN cama c on ch.ID_CAMA = c.ID_CAMA
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join hospitalizacion h on ch.ID_HOSPITALIZACION = h.ID_HOSPITALIZACION
          join pacientes p on h.ID_PACIENTE = p.ID_PACIENTE
          WHERE s.DESC_SUBUNIDAD = "Neonatología"
          order by ch.ID_HCAMA');


        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 20, utf8_decode("Historial Camas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Tipo"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Cod Cama"), 1, "", "L", true);
        $pdf::cell(25, 8, utf8_decode("SubUnidad"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Nombre"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Apellido"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Num Cédula"), 1, "", "L", true);
        $pdf::cell(32, 8, utf8_decode("Fecha Reg"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($hismeo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_HCAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->TRANSFERENCIA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(25, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->NOM_PACIENTE), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->APE_PACIENTE), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->CI_PACIENTE), 1, "", "L", true);
            $pdf::cell(32, 6, utf8_decode($reg->created_at), 1, "", "L", true);
            $pdf::Ln();
        }

        //REPORTE DE UNIDADES CENTRO OBSTETRICO



        $pdf::Output();
        exit;
    }

    public function reportecentroobstetrico()
    {
        //obtiene registros de camas por unidades  libre u ocuapadas
        $regcobstetrico = DB::table('cama as c')
            ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
            ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
            ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
            ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
            ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
            ->select('c.ID_CAMA', 'c.COD_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
            ->where('s.DESC_SUBUNIDAD', '=', 'Centro Obstétrico')
            ->orderBy('ID_CAMA')
            ->get();
            //dd($regneonatologia);

            $regdneo = DB::table('cama as c')
                ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
                ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
                ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
                ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
                ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
                ->select('c.ID_ESTCAM', 'c.ID_CAMA', 'c.COD_CAMA', 'c.OBSER_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
                ->where('c.ID_ESTCAM', '=', 1)
                ->where('s.DESC_SUBUNIDAD', '=', 'Centro Obstétrico')
                ->orderBy('ID_CAMA')
                ->get();

            $regoneo = DB::table('cama as c')
                ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
                ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
                ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
                ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
                ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
                ->select('c.ID_ESTCAM', 'c.ID_CAMA', 'c.COD_CAMA', 'c.OBSER_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
                ->where('c.ID_ESTCAM', '=', 2)
                ->where('s.DESC_SUBUNIDAD', '=', 'Centro Obstétrico')
                ->orderBy('ID_CAMA')
                ->get();

          $totcneo = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          WHERE s.DESC_SUBUNIDAD = "Centro Obstétrico"');

          foreach ($totcneo as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneo = $con;
              }
          }

          $totcneod = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
          WHERE s.DESC_SUBUNIDAD = "Centro Obstétrico"
          AND c.ID_ESTCAM = 1');

          foreach ($totcneod as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneod = $con;
              }
          }

          $totcneoo = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
          WHERE s.DESC_SUBUNIDAD = "Centro Obstétrico"
          AND c.ID_ESTCAM = 2');

          foreach ($totcneoo as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneoo = $con;
              }
          }

        $pdf = new Fpdf();
        $pdf::AddPage();
        $pdf::Image('http://localhost/logo.png', 10, 10, 35, 17);
        $pdf::Image('http://localhost/cordi.png', 165, 10, 35, 20);
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Ln();
        $pdf::Ln();
        $pdf::Cell(0, 20, utf8_decode("Reporte Camas de Centro Obstétrico"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        $pdf::cell(60, 8, utf8_decode("Total de Camas"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Disponibles"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Ocupadas"), 1, "", "L", true);
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);
            $pdf::cell(60, 6, utf8_decode($tneo), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($tneod), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($tneoo), 1, "", "L", true);
            $pdf::Ln();
        $pdf::Ln();
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Cell(0, 20, utf8_decode("Lista de Camas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regcobstetrico as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 20, utf8_decode("Camas Disponibles"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regdneo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $totcneoo = DB::select('SELECT count(*) FROM cama c
        join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
        join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
        WHERE s.DESC_SUBUNIDAD = "Centro Obstétrico"
        AND c.ID_ESTCAM = 2');

        foreach ($totcneoo as $com) {
            $val = $com;
            foreach ($val as $con) {
                $tneoo = $con;
            }
        }

        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 20, utf8_decode("Camas Ocupadas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regoneo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $hismeo = DB::select('SELECT ch.ID_HCAMA, ch.TRANSFERENCIA, c.COD_CAMA, s.DESC_SUBUNIDAD,p.NOM_PACIENTE,p.APE_PACIENTE,p.CI_PACIENTE,ch.created_at FROM cama_his ch
          JOIN cama c on ch.ID_CAMA = c.ID_CAMA
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join hospitalizacion h on ch.ID_HOSPITALIZACION = h.ID_HOSPITALIZACION
          join pacientes p on h.ID_PACIENTE = p.ID_PACIENTE
          WHERE s.DESC_SUBUNIDAD = "Centro Obstétrico"
          order by ch.ID_HCAMA');


        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 20, utf8_decode("Historial Camas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Tipo"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Cod Cama"), 1, "", "L", true);
        $pdf::cell(25, 8, utf8_decode("SubUnidad"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Nombre"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Apellido"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Num Cédula"), 1, "", "L", true);
        $pdf::cell(32, 8, utf8_decode("Fecha Reg"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($hismeo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_HCAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->TRANSFERENCIA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(25, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->NOM_PACIENTE), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->APE_PACIENTE), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->CI_PACIENTE), 1, "", "L", true);
            $pdf::cell(32, 6, utf8_decode($reg->created_at), 1, "", "L", true);
            $pdf::Ln();
        }

        //REPORTE DE UNIDADES CENTRO OBSTETRICO



        $pdf::Output();
        exit;
    }

    public function reportecentrooquirurgico()
    {
        //obtiene registros de camas por unidades  libre u ocuapadas
        $regcobstetrico = DB::table('cama as c')
            ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
            ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
            ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
            ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
            ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
            ->select('c.ID_CAMA', 'c.COD_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
            ->where('s.DESC_SUBUNIDAD', '=', 'Centro Quirúrgico')
            ->orderBy('ID_CAMA')
            ->get();
            //dd($regneonatologia);

            $regdneo = DB::table('cama as c')
                ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
                ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
                ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
                ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
                ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
                ->select('c.ID_ESTCAM', 'c.ID_CAMA', 'c.COD_CAMA', 'c.OBSER_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
                ->where('c.ID_ESTCAM', '=', 1)
                ->where('s.DESC_SUBUNIDAD', '=', 'Centro Quirúrgico')
                ->orderBy('ID_CAMA')
                ->get();

            $regoneo = DB::table('cama as c')
                ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
                ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
                ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
                ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
                ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
                ->select('c.ID_ESTCAM', 'c.ID_CAMA', 'c.COD_CAMA', 'c.OBSER_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
                ->where('c.ID_ESTCAM', '=', 2)
                ->where('s.DESC_SUBUNIDAD', '=', 'Centro Quirúrgico')
                ->orderBy('ID_CAMA')
                ->get();

          $totcneo = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          WHERE s.DESC_SUBUNIDAD = "Centro Quirúrgico"');

          foreach ($totcneo as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneo = $con;
              }
          }

          $totcneod = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
          WHERE s.DESC_SUBUNIDAD = "Centro Quirúrgico"
          AND c.ID_ESTCAM = 1');

          foreach ($totcneod as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneod = $con;
              }
          }

          $totcneoo = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
          WHERE s.DESC_SUBUNIDAD = "Centro Quirúrgico"
          AND c.ID_ESTCAM = 2');

          foreach ($totcneoo as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneoo = $con;
              }
          }

        $pdf = new Fpdf();
        $pdf::AddPage();
        $pdf::Image('http://localhost/logo.png', 10, 10, 35, 17);
        $pdf::Image('http://localhost/cordi.png', 165, 10, 35, 20);
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Ln();
        $pdf::Ln();
        $pdf::Cell(0, 20, utf8_decode("Reporte Camas de Centro Quirúrgico"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        $pdf::cell(60, 8, utf8_decode("Total de Camas"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Disponibles"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Ocupadas"), 1, "", "L", true);
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);
            $pdf::cell(60, 6, utf8_decode($tneo), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($tneod), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($tneoo), 1, "", "L", true);
            $pdf::Ln();
        $pdf::Ln();
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Cell(0, 20, utf8_decode("Lista de Camas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regcobstetrico as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 20, utf8_decode("Camas Disponibles"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regdneo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $totcneoo = DB::select('SELECT count(*) FROM cama c
        join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
        join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
        WHERE s.DESC_SUBUNIDAD = "Centro Quirúrgico"
        AND c.ID_ESTCAM = 2');

        foreach ($totcneoo as $com) {
            $val = $com;
            foreach ($val as $con) {
                $tneoo = $con;
            }
        }

        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 20, utf8_decode("Camas Ocupadas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regoneo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $hismeo = DB::select('SELECT ch.ID_HCAMA, ch.TRANSFERENCIA, c.COD_CAMA, s.DESC_SUBUNIDAD,p.NOM_PACIENTE,p.APE_PACIENTE,p.CI_PACIENTE,ch.created_at FROM cama_his ch
          JOIN cama c on ch.ID_CAMA = c.ID_CAMA
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join hospitalizacion h on ch.ID_HOSPITALIZACION = h.ID_HOSPITALIZACION
          join pacientes p on h.ID_PACIENTE = p.ID_PACIENTE
          WHERE s.DESC_SUBUNIDAD = "Centro Quirúrgico"
          order by ch.ID_HCAMA');


        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 20, utf8_decode("Historial Camas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Tipo"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Cod Cama"), 1, "", "L", true);
        $pdf::cell(25, 8, utf8_decode("SubUnidad"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Nombre"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Apellido"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Num Cédula"), 1, "", "L", true);
        $pdf::cell(32, 8, utf8_decode("Fecha Reg"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($hismeo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_HCAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->TRANSFERENCIA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(25, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->NOM_PACIENTE), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->APE_PACIENTE), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->CI_PACIENTE), 1, "", "L", true);
            $pdf::cell(32, 6, utf8_decode($reg->created_at), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::Output();
        exit;
    }

    public function reportecuidadointensivosneonatales()
    {
        //obtiene registros de camas por unidades  libre u ocuapadas
        $regcobstetrico = DB::table('cama as c')
            ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
            ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
            ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
            ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
            ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
            ->select('c.ID_CAMA', 'c.COD_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
            ->where('s.DESC_SUBUNIDAD', '=', 'Cuidados Intensivos Neonatales')
            ->orderBy('ID_CAMA')
            ->get();
            //dd($regneonatologia);

            $regdneo = DB::table('cama as c')
                ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
                ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
                ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
                ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
                ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
                ->select('c.ID_ESTCAM', 'c.ID_CAMA', 'c.COD_CAMA', 'c.OBSER_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
                ->where('c.ID_ESTCAM', '=', 1)
                ->where('s.DESC_SUBUNIDAD', '=', 'Cuidados Intensivos Neonatales')
                ->orderBy('ID_CAMA')
                ->get();

            $regoneo = DB::table('cama as c')
                ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
                ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
                ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
                ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
                ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
                ->select('c.ID_ESTCAM', 'c.ID_CAMA', 'c.COD_CAMA', 'c.OBSER_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
                ->where('c.ID_ESTCAM', '=', 2)
                ->where('s.DESC_SUBUNIDAD', '=', 'Cuidados Intensivos Neonatales')
                ->orderBy('ID_CAMA')
                ->get();

          $totcneo = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          WHERE s.DESC_SUBUNIDAD = "Cuidados Intensivos Neonatales"');

          foreach ($totcneo as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneo = $con;
              }
          }

          $totcneod = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
          WHERE s.DESC_SUBUNIDAD = "Cuidados Intensivos Neonatales"
          AND c.ID_ESTCAM = 1');

          foreach ($totcneod as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneod = $con;
              }
          }

          $totcneoo = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
          WHERE s.DESC_SUBUNIDAD = "Cuidados Intensivos Neonatales"
          AND c.ID_ESTCAM = 2');

          foreach ($totcneoo as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneoo = $con;
              }
          }

        $pdf = new Fpdf();
        $pdf::AddPage();
        $pdf::Image('http://localhost/logo.png', 10, 10, 35, 17);
        $pdf::Image('http://localhost/cordi.png', 165, 10, 35, 20);
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 16);
        $pdf::Ln();
        $pdf::Ln();
        $pdf::Cell(0, 20, utf8_decode("Reporte Camas de Cuidados Intensivos Neonatales"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        $pdf::cell(60, 8, utf8_decode("Total de Camas"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Disponibles"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Ocupadas"), 1, "", "L", true);
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);
            $pdf::cell(60, 6, utf8_decode($tneo), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($tneod), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($tneoo), 1, "", "L", true);
            $pdf::Ln();
        $pdf::Ln();
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);
        $pdf::Cell(0, 20, utf8_decode("Lista de Camas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regcobstetrico as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 20, utf8_decode("Camas Disponibles"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regdneo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $totcneoo = DB::select('SELECT count(*) FROM cama c
        join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
        join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
        WHERE s.DESC_SUBUNIDAD = "Cuidados Intensivos Neonatales"
        AND c.ID_ESTCAM = 2');

        foreach ($totcneoo as $com) {
            $val = $com;
            foreach ($val as $con) {
                $tneoo = $con;
            }
        }

        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 20, utf8_decode("Camas Ocupadas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regoneo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $hismeo = DB::select('SELECT ch.ID_HCAMA, ch.TRANSFERENCIA, c.COD_CAMA, s.DESC_SUBUNIDAD,p.NOM_PACIENTE,p.APE_PACIENTE,p.CI_PACIENTE,ch.created_at FROM cama_his ch
          JOIN cama c on ch.ID_CAMA = c.ID_CAMA
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join hospitalizacion h on ch.ID_HOSPITALIZACION = h.ID_HOSPITALIZACION
          join pacientes p on h.ID_PACIENTE = p.ID_PACIENTE
          WHERE s.DESC_SUBUNIDAD = "Cuidados Intensivos Neonatales"
          order by ch.ID_HCAMA');


        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 18);

        $pdf::Cell(0, 20, utf8_decode("Historial Camas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Tipo"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Cod Cama"), 1, "", "L", true);
        $pdf::cell(25, 8, utf8_decode("SubUnidad"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Nombre"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Apellido"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Num Cédula"), 1, "", "L", true);
        $pdf::cell(32, 8, utf8_decode("Fecha Reg"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($hismeo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_HCAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->TRANSFERENCIA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(25, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->NOM_PACIENTE), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->APE_PACIENTE), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->CI_PACIENTE), 1, "", "L", true);
            $pdf::cell(32, 6, utf8_decode($reg->created_at), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::Output();
        exit;
    }

    public function reportecuidadointensivosmaternal()
    {
        //obtiene registros de camas por unidades  libre u ocuapadas
        $regcobstetrico = DB::table('cama as c')
            ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
            ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
            ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
            ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
            ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
            ->select('c.ID_CAMA', 'c.COD_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
            ->where('s.DESC_SUBUNIDAD', '=', 'Cuidados Intensivos Maternos')
            ->orderBy('ID_CAMA')
            ->get();
            //dd($regneonatologia);

            $regdneo = DB::table('cama as c')
                ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
                ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
                ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
                ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
                ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
                ->select('c.ID_ESTCAM', 'c.ID_CAMA', 'c.COD_CAMA', 'c.OBSER_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
                ->where('c.ID_ESTCAM', '=', 1)
                ->where('s.DESC_SUBUNIDAD', '=', 'Cuidados Intensivos Maternos')
                ->orderBy('ID_CAMA')
                ->get();

            $regoneo = DB::table('cama as c')
                ->join('subunidad as s', 'c.ID_SUBUNIDAD', '=', 's.ID_SUBUNIDAD')
                ->join('unidad as u', 's.ID_UNIDAD', '=', 'u.ID_UNIDAD')
                ->join('sucursales as su', 'u.ID_SUCURSAL', '=', 'su.ID_SUCURSAL')
                ->join('tipo_cama as tc', 'c.ID_TCAMA', '=', 'tc.ID_TCAMA')
                ->join('estado_cama as ec', 'c.ID_ESTCAM', '=', 'ec.ID_ESTCAM')
                ->select('c.ID_ESTCAM', 'c.ID_CAMA', 'c.COD_CAMA', 'c.OBSER_CAMA', 's.DESC_SUBUNIDAD', 'u.DESC_UNIDAD', 'su.DESCRIPCION', 'tc.DESC_TCAMA')
                ->where('c.ID_ESTCAM', '=', 2)
                ->where('s.DESC_SUBUNIDAD', '=', 'Cuidados Intensivos Maternos')
                ->orderBy('ID_CAMA')
                ->get();

          $totcneo = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          WHERE s.DESC_SUBUNIDAD = "Cuidados Intensivos Maternos"');

          foreach ($totcneo as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneo = $con;
              }
          }

          $totcneod = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
          WHERE s.DESC_SUBUNIDAD = "Cuidados Intensivos Maternos"
          AND c.ID_ESTCAM = 1');

          foreach ($totcneod as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneod = $con;
              }
          }

          $totcneoo = DB::select('SELECT count(*) FROM cama c
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
          WHERE s.DESC_SUBUNIDAD = "Cuidados Intensivos Maternos"
          AND c.ID_ESTCAM = 2');

          foreach ($totcneoo as $com) {
              $val = $com;
              foreach ($val as $con) {
                  $tneoo = $con;
              }
          }

        $pdf = new Fpdf();
        $pdf::AddPage();
        $pdf::Image('http://localhost/logo.png', 10, 10, 35, 17);
        $pdf::Image('http://localhost/cordi.png', 165, 10, 35, 20);
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 14);
        $pdf::Ln();
        $pdf::Ln();
        $pdf::Cell(0, 20, utf8_decode("Reporte Camas de Cuidados Intensivos Maternos"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        $pdf::cell(60, 8, utf8_decode("Total de Camas"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Disponibles"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Ocupadas"), 1, "", "L", true);
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);
            $pdf::cell(60, 6, utf8_decode($tneo), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($tneod), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($tneoo), 1, "", "L", true);
            $pdf::Ln();
        $pdf::Ln();
        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 14);
        $pdf::Cell(0, 20, utf8_decode("Lista de Camas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regcobstetrico as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 14);

        $pdf::Cell(0, 20, utf8_decode("Camas Disponibles"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regdneo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $totcneoo = DB::select('SELECT count(*) FROM cama c
        join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
        join estado_cama e on c.ID_ESTCAM = e.ID_ESTCAM
        WHERE s.DESC_SUBUNIDAD = "Cuidados Intensivos Maternos"
        AND c.ID_ESTCAM = 2');

        foreach ($totcneoo as $com) {
            $val = $com;
            foreach ($val as $con) {
                $tneoo = $con;
            }
        }

        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 14);

        $pdf::Cell(0, 20, utf8_decode("Camas Ocupadas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Sucursal"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Unidad"), 1, "", "L", true);
        $pdf::cell(40, 8, utf8_decode("Subunidad"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Codigo"), 1, "", "L", true);
        $pdf::cell(60, 8, utf8_decode("Tipo Cama"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($regoneo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_CAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->DESCRIPCION), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_UNIDAD), 1, "", "L", true);
            $pdf::cell(40, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(60, 6, utf8_decode($reg->DESC_TCAMA), 1, "", "L", true);
            $pdf::Ln();
        }

        $hismeo = DB::select('SELECT ch.ID_HCAMA, ch.TRANSFERENCIA, c.COD_CAMA, s.DESC_SUBUNIDAD,p.NOM_PACIENTE,p.APE_PACIENTE,p.CI_PACIENTE,ch.created_at FROM cama_his ch
          JOIN cama c on ch.ID_CAMA = c.ID_CAMA
          join subunidad s on c.ID_SUBUNIDAD = s.ID_SUBUNIDAD
          join hospitalizacion h on ch.ID_HOSPITALIZACION = h.ID_HOSPITALIZACION
          join pacientes p on h.ID_PACIENTE = p.ID_PACIENTE
          WHERE s.DESC_SUBUNIDAD = "Cuidados Intensivos Maternos"
          order by ch.ID_HCAMA');


        $pdf::SetTextColor(35, 56, 113);
        $pdf::SetFont('Arial', 'B', 14);

        $pdf::Cell(0, 20, utf8_decode("Historial Camas"), 0, "", "C");
        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(206, 246, 245); // establece el color del fondo de la celda
        $pdf::SetFont('Arial', 'B', 10);
        //El ancho de las columnas debe de sumar promedio 190
        $pdf::cell(5, 8, utf8_decode("Id"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Tipo"), 1, "", "L", true);
        $pdf::cell(20, 8, utf8_decode("Cod Cama"), 1, "", "L", true);
        $pdf::cell(25, 8, utf8_decode("SubUnidad"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Nombre"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Apellido"), 1, "", "L", true);
        $pdf::cell(30, 8, utf8_decode("Num Cédula"), 1, "", "L", true);
        $pdf::cell(32, 8, utf8_decode("Fecha Reg"), 1, "", "L", true);

        $pdf::Ln();
        $pdf::SetTextColor(0, 0, 0); // Establece el color del texto
        $pdf::SetFillColor(255, 255, 255); // establece el color del fondo de la celda
        $pdf::SetFont("Arial", "", 9);

        foreach ($hismeo as $reg) {
            $pdf::cell(5, 6, utf8_decode($reg->ID_HCAMA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->TRANSFERENCIA), 1, "", "L", true);
            $pdf::cell(20, 6, utf8_decode($reg->COD_CAMA), 1, "", "L", true);
            $pdf::cell(25, 6, utf8_decode($reg->DESC_SUBUNIDAD), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->NOM_PACIENTE), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->APE_PACIENTE), 1, "", "L", true);
            $pdf::cell(30, 6, utf8_decode($reg->CI_PACIENTE), 1, "", "L", true);
            $pdf::cell(32, 6, utf8_decode($reg->created_at), 1, "", "L", true);
            $pdf::Ln();
        }

        $pdf::Output();
        exit;
    }

    if (
    ) {
    if (condition) {
      // code...
    }
    }
}
