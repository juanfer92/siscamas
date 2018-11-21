@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h2>
        <i aria-hidden="true" class="fa fa-medkit">
        </i>
        Hospitalización y Asignación de Camas
          @can('hospitalizacion.create')
        <a href="{{ route('hospitalizacion.create') }}">
            <button class="btn btn-success btn-xs">
                <i aria-hidden="true" class="fa fa-plus-circle">
                </i>
                Nuevo Ingreso
            </button>
        </a>
        @endcan
        @can('encuesta.index')
            <a href="{{route('encuesta.index')}}">
              <button class="btn btn-warning btn-xs">
                  <i class="fa fa-question" aria-hidden="true"></i>
                  Encuestas Pendientes
              </button>
        </a>
    @endcan
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
            Hospitalización
        </li>
    </ol>
</section>
<div class="">
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <h3>
        </h3>
        @include('hospitalizacion.search')
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
                        Cama Asignada a
                    </th>
                    <th bgcolor="#fbd341">
                        DNI
                    </th>
                    <th bgcolor="#fbd341">
                        T. Parto
                    </th>
                    <th bgcolor="#fbd341">
                        Estado
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
                @foreach ($hospitalizaciones as $hos)
                <tr>
                    <td>
                        {{ $hos->ID_HOSPITALIZACION}}
                    </td>
                    <td>
                        {{ $hos->NOM_PACIENTE.' '.$hos->NOM_PACIENTE1.' '.$hos->APE_PACIENTE.' '.$hos->APE_PACIENTE1}}
                    </td>
                    <td>
                        {{ $hos->CI_PACIENTE}}
                    </td>
                    <td>
                        {{ $hos->TPARTO}}
                    </td>
                    <td>
                        {{ $hos->EST_HOSPITALIZACION}}
                    </td>
                    <td>
                        {{ $hos->FECHA_INGRESO}}
                    </td>
                    <td>
                        {{ $hos->FECHA_EGRESO}}
                    </td>
                    <td>
                        @can('roles.show')
                        <a href="{{route('hospitalizacion.show',$hos->ID_HOSPITALIZACION)}}">
                            <button class="btn btn-info">
                                <i aria-hidden="true" class="fa fa-eye">
                                </i>
                            </button>
                        </a>
                        @endcan
                <!-- @can('hospitalizacion.edit')
                        <a href="#">
                            <button class="btn btn-warning">
                                <i aria-hidden="true" class="fa fa-retweet">
                                </i>
                            </button>
                        </a>
                        @endcan -->
                @can('hospitalizacion.destroy')
                        <a data-target="#modal-delete-{{$hos->ID_HOSPITALIZACION}}" data-toggle="modal" href="">
                            <button class="btn btn-danger" title="Deshabilitar">
                                <i aria-hidden="true" class="fa fa-sign-out">
                                </i>
                            </button>
                        </a>
                        @endcan
                    </td>
                </tr>
                @include('hospitalizacion.modal')
            @endforeach
            </table>
        </div>
        {{$hospitalizaciones->render()}}
    </div>
</div>
@endsection
@section('scripts')
<script src="{{asset('js/JsBarcode.all.min.js')}}"></script>
<script src="{{asset('js/jquery.PrintArea.js')}}"></script>
<script>
$(document).ready(function(){
    $("tr").each(function(){
        $(this).children("td").each(function(){
            switch ($(this).html()) {
                case 'Ingreso':
                    $(this).css("background-color", "#a7d129");
                break;
                case 'Egreso':
                    $(this).css("background-color", "#fd5f00");
                break;
            }
        })
    })
});
</script>
@stop
