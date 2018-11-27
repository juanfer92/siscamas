<?php

namespace sisCamas\Http\Controllers;

use DB;
use Illuminate\Database\Eloquent\Model;
use sisCamas\Http\Controllers\Controller;
use TJGazel\Toastr\Facades\Toastr;
use Alert;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $buena = DB::select('SELECT COUNT(*) as valor FROM servicio AS s
          JOIN preguntas AS p ON s.ID_SERVICIO = p.ID_SERVICIO
          JOIN encuesta_reg AS er ON p.ID_PREGUNTA = er.ID_PREGUNTA
          where er.VALOR = "Buena"');

        foreach ($buena as $com) {
            $val = $com;
            foreach ($val as $con) {
                $valf = $con;
            }
        }

        $regular = DB::select('SELECT COUNT(*) as valor FROM servicio AS s
          JOIN preguntas AS p ON s.ID_SERVICIO = p.ID_SERVICIO
          JOIN encuesta_reg AS er ON p.ID_PREGUNTA = er.ID_PREGUNTA
          where er.VALOR = "Regular"');

        foreach ($regular as $com) {
            $val = $com;
            foreach ($val as $con) {
                $valfr = $con;
            }
        }

        $mala = DB::select('SELECT COUNT(*) as valor FROM servicio AS s
          JOIN preguntas AS p ON s.ID_SERVICIO = p.ID_SERVICIO
          JOIN encuesta_reg AS er ON p.ID_PREGUNTA = er.ID_PREGUNTA
          where er.VALOR = "Mala"');

        foreach ($mala as $com) {
            $val = $com;
            foreach ($val as $con) {
                $valfm = $con;
            }
        }

        //dd($valab);
        $chartjs = app()->chartjs
            ->name('pieChartTest')
            ->type('pie')
            ->size(['width' => 400, 'height' => 200])
            ->labels(['Buena', 'Regular', 'Mala'])
            ->datasets([
                [
                    'backgroundColor'      => ['#00A65A', '#F39C12 ', '#F46854'],
                    'hoverBackgroundColor' => ['#00A65A ', '#F39C12 ', '#F46854 '],
                    'data'                 => [$valf, $valfr, $valfm],
                ],
            ])
            ->options([]);


        $alib = DB::select('SELECT COUNT(*) from servicio s
          inner join preguntas p on s.ID_SERVICIO = p.ID_SERVICIO
          inner join encuesta_reg r on p.ID_PREGUNTA = r.ID_PREGUNTA
          where r.VALOR = "Buena" and s.ID_SERVICIO = 1');

        foreach ($alib as $com) {
            $val = $com;
            foreach ($val as $con) {
                $valab = $con;
            }
        }

        $alir = DB::select('SELECT COUNT(*) from servicio s
            inner join preguntas p on s.ID_SERVICIO = p.ID_SERVICIO
            inner join encuesta_reg r on p.ID_PREGUNTA = r.ID_PREGUNTA
            where r.VALOR = "Regular" and s.ID_SERVICIO = 1');

        foreach ($alir as $com) {
            $val = $com;
            foreach ($val as $con) {
                $valar = $con;
            }
        }

        $alim = DB::select('SELECT COUNT(*) from servicio s
              inner join preguntas p on s.ID_SERVICIO = p.ID_SERVICIO
              inner join encuesta_reg r on p.ID_PREGUNTA = r.ID_PREGUNTA
              where r.VALOR = "Mala" and s.ID_SERVICIO = 1');

        foreach ($alim as $com) {
            $val = $com;
            foreach ($val as $con) {
                $valam = $con;
            }
        }

        //reporte de enfermeria

        $limb = DB::select('SELECT COUNT(*) from servicio s
          inner join preguntas p on s.ID_SERVICIO = p.ID_SERVICIO
          inner join encuesta_reg r on p.ID_PREGUNTA = r.ID_PREGUNTA
          where r.VALOR = "Buena" and s.ID_SERVICIO = 2');

        foreach ($limb as $com) {
            $val = $com;
            foreach ($val as $con) {
                $vlimb = $con;
            }
        }

        $limr = DB::select('SELECT COUNT(*) from servicio s
            inner join preguntas p on s.ID_SERVICIO = p.ID_SERVICIO
            inner join encuesta_reg r on p.ID_PREGUNTA = r.ID_PREGUNTA
            where r.VALOR = "Regular" and s.ID_SERVICIO = 2');

        foreach ($limr as $com) {
            $val = $com;
            foreach ($val as $con) {
                $vlimr = $con;
            }
        }

        $limm = DB::select('SELECT COUNT(*) from servicio s
              inner join preguntas p on s.ID_SERVICIO = p.ID_SERVICIO
              inner join encuesta_reg r on p.ID_PREGUNTA = r.ID_PREGUNTA
              where r.VALOR = "Mala" and s.ID_SERVICIO = 2');

        foreach ($limm as $com) {
            $val = $com;
            foreach ($val as $con) {
                $vlimm = $con;
            }
        }
        //reporte de Limpieza

        $enferb = DB::select('SELECT COUNT(*) from servicio s
                inner join preguntas p on s.ID_SERVICIO = p.ID_SERVICIO
                inner join encuesta_reg r on p.ID_PREGUNTA = r.ID_PREGUNTA
                where r.VALOR = "Buena" and s.ID_SERVICIO = 3');

        foreach ($enferb as $com) {
            $val = $com;
            foreach ($val as $con) {
                $venferb = $con;
            }
        }

        $enferr = DB::select('SELECT COUNT(*) from servicio s
                  inner join preguntas p on s.ID_SERVICIO = p.ID_SERVICIO
                  inner join encuesta_reg r on p.ID_PREGUNTA = r.ID_PREGUNTA
                  where r.VALOR = "Regular" and s.ID_SERVICIO = 3');

        foreach ($enferr as $com) {
            $val = $com;
            foreach ($val as $con) {
                $venferr = $con;
            }
        }

        $enferm = DB::select('SELECT COUNT(*) from servicio s
                    inner join preguntas p on s.ID_SERVICIO = p.ID_SERVICIO
                    inner join encuesta_reg r on p.ID_PREGUNTA = r.ID_PREGUNTA
                    where r.VALOR = "Mala" and s.ID_SERVICIO = 3');

        foreach ($enferm as $com) {
            $val = $com;
            foreach ($val as $con) {
                $venferm = $con;
            }
        }

        $chartjs2 = app()->chartjs
            ->name('lineChartTest')
            ->type('bar')
            ->size(['width' => 400, 'height' => 200])
            ->labels(['Alimentación', 'Limpieza', 'Enfermería'])
            ->datasets([
                [
                    "label"                     => "Buena",
                    'backgroundColor'           => ['#00A65A', '#00A65A ', '#00A65A'],
                    'borderColor'               => "#E6D9FF",
                    "pointBorderColor"          => "#E6D9FF",
                    "pointBackgroundColor"      => "#E6D9FF",
                    "pointHoverBackgroundColor" => "#E6D9FF",
                    "pointHoverBorderColor"     => "#E6D9FF",
                    'data'                      => [$valab, $vlimb, $venferb],
                ],
                [
                    "label"                     => "Regular",
                    'backgroundColor'           => ['#F39C12', '#F39C12 ', '#F39C12'],
                    'borderColor'               => "#E6D9FF",
                    "pointBorderColor"          => "#E6D9FF",
                    "pointBackgroundColor"      => "#E6D9FF",
                    "pointHoverBackgroundColor" => "#E6D9FF",
                    "pointHoverBorderColor"     => "#E6D9FF",
                    'data'                      => [$valar, $vlimr, $venferr],
                ]
                ,
                [
                    "label"                     => "Mala",
                    'backgroundColor'           => ['#F46854', '#F46854 ', '#F46854'],
                    'borderColor'               => "#E6D9FF",
                    "pointBorderColor"          => "#E6D9FF",
                    "pointBackgroundColor"      => "#E6D9FF",
                    "pointHoverBackgroundColor" => "#E6D9FF",
                    "pointHoverBorderColor"     => "#E6D9FF",
                    'data'                      => [$valam, $vlimm, $venferm],
                ],
            ])
            ->options([]);

            //reporte de Tipos de partos
            $normal = DB::select('SELECT count(*) from hospitalizacion
                where TPARTO = "Normal"');

            foreach ($normal as $com) {
                $val = $com;
                foreach ($val as $con) {
                    $pn = $con;
                }
            }

            $cesarea = DB::select('SELECT count(*) from hospitalizacion
                where TPARTO = "Cesarea"');

            foreach ($cesarea as $com) {
                $val = $com;
                foreach ($val as $con) {
                    $pc = $con;
                }
            }

            $aborto = DB::select('SELECT count(*) from hospitalizacion
                where TPARTO = "Aborto"');

            foreach ($aborto as $com) {
                $val = $com;
                foreach ($val as $con) {
                    $pa = $con;
                }
            }

            //dd($valab);
            $chartjs3 = app()->chartjs
            ->name('lineChartParto')
            ->type('horizontalBar')
            ->size(['width' => 400, 'height' => 200])
            ->labels(['Parto Normal', 'Cesárea', 'Aborto'])
            ->datasets([
                [
                    "label"                     => "Normal",
                    'backgroundColor'           => ['#A9FF96'],
                    'borderColor'               => "#E6D9FF",
                    "pointBorderColor"          => "#E6D9FF",
                    "pointBackgroundColor"      => "#E6D9FF",
                    "pointHoverBackgroundColor" => "#E6D9FF",
                    "pointHoverBorderColor"     => "#E6D9FF",
                    'data'                      => [$pn],
                ],
                [
                    "label"                     => "Cesarea",
                    'backgroundColor'           => ['#F5E56A'],
                    'borderColor'               => "#E6D9FF",
                    "pointBorderColor"          => "#E6D9FF",
                    "pointBackgroundColor"      => "#E6D9FF",
                    "pointHoverBackgroundColor" => "#E6D9FF",
                    "pointHoverBorderColor"     => "#E6D9FF",
                    'data'                      => [$pc],
                ]
                ,
                [
                    "label"                     => "Aborto",
                    'backgroundColor'           => ['#FF7474'],
                    'borderColor'               => "#E6D9FF",
                    "pointBorderColor"          => "#E6D9FF",
                    "pointBackgroundColor"      => "#E6D9FF",
                    "pointHoverBackgroundColor" => "#E6D9FF",
                    "pointHoverBorderColor"     => "#E6D9FF",
                    'data'                      => [$pa],
                ],
            ])
            ->options([]);

            $adolecente = DB::select('SELECT count(*) from pacientes p where p.EDAD_PACIENTE <=19');

            foreach ($adolecente as $com) {
                $val = $com;
                foreach ($val as $con) {
                    $ea = $con;
                }
            }

            $adultos = DB::select('SELECT count(*) from pacientes p where p.EDAD_PACIENTE >19 and p.EDAD_PACIENTE <= 34');

            foreach ($adultos as $com) {
                $val = $com;
                foreach ($val as $con) {
                    $en = $con;
                }
            }

            $adultos2 = DB::select('SELECT count(*) from pacientes p where p.EDAD_PACIENTE >= 35');

            foreach ($adultos2 as $com) {
                $val = $com;
                foreach ($val as $con) {
                    $en2 = $con;
                }
            }
            //dd($ea);
            $chartjs4 = app()->chartjs
            ->name('pieChartTest2')
            ->type('doughnut')
            ->size(['width' => 400, 'height' => 200])
            ->labels(['Adolecentes', 'Normales', 'Riesgoso'])
            ->datasets([
                [
                    'backgroundColor' => ['#FF6384', '#36A2EB'],
                    'hoverBackgroundColor' => ['#FF6384', '#36A2EB'],
                    'data' => [$ea, $en,$en2]
                ]
            ])
            ->options([]);

            $numpaciente = DB::table('totpacientes')->get();



        return view('home', compact('numpaciente', 'chartjs', 'chartjs2', 'chartjs3', 'chartjs4'));
    }

}
