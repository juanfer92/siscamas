@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h2>
        Historial de Camas
    </h2>
    <ol class="breadcrumb">
        <li>
            <a href="/home">
                <i class="fa fa-dashboard">
                </i>
                Inicio
            </a>
        </li>
        <li class="active">
            Historial Camas
        </li>
    </ol>
</section>
<div class="">
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <h3>
        </h3>
        @include('camahis.search')
    </div>
</div>
<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-condensed table-hover">
                <thead>
                    <th bgcolor="#fbd341">
                        Id
                    </th>
                    <th bgcolor="#fbd341">
                        Codigo Cama
                    </th>
                    <th bgcolor="#fbd341">
                        Paciente
                    </th>
                    <th bgcolor="#fbd341">
                        IDN
                    </th>
                    <th bgcolor="#fbd341">
                        Fecha Ingreso
                    </th>
                    <th bgcolor="#fbd341">
                        Fecha Egreso
                    </th>
                    <th bgcolor="#fbd341">
                        Opciones
                    </th>
                </thead>
                @foreach ($camahis as $cam)
                <tr>
                    <td>
                        {{ $cam->ID_HCAMA}}
                    </td>
                    <td>
                        {{ $cam->COD_CAMA}}
                    </td>
                    <td>
                        {{ $cam->NOM_PACIENTE}} {{ $cam->APE_PACIENTE}}
                    </td>
                    <td>
                        {{ $cam->CI_PACIENTE}}
                    </td>
                    <td>
                        {{ $cam->FECHA_INGRESO}}
                    </td>
                    <td>
                        {{ $cam->FECHA_EGRESO}}
                    </td>
                    <td>
                        @can('camahis.show')
                        <a href="{{route('camahis.show',$cam->ID_HCAMA)}}">
                            <button class="btn btn-info">
                                <i aria-hidden="true" class="fa fa-eye">
                                </i>
                            </button>
                        </a>
                        @endcan
                    </td>
                </tr>
                @endforeach
            </table>
        </div>
        {{$camahis->render()}}
    </div>
</div>
@endsection
