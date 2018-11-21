@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h3><i class="fa fa-puzzle-piece" aria-hidden="true"></i>Listado Encuestas Realizadas
    </h3>
    <ol class="breadcrumb">
        <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
        <li class="active">Encuestas</li>
    </ol>
</section>
<div class="">
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
    @include('encuestarealizada.search')
    </div>
</div>
<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div id="ID" class="table-responsive">
            <table class="table table-striped table-bordered table-condensed table-hover">
                <thead>
                    <th bgcolor="#fbd341">Id</th>
                    <th bgcolor="#fbd341">Nombre</th>
                    <th bgcolor="#fbd341">Apellido</th>
                    <th bgcolor="#fbd341">DNI</th>
                    <th bgcolor="#fbd341">Opciones</th>
                </thead>
                @foreach ($encuestas as $pre)
                <tr>
                    <td>{{ $pre->ID_PACIENTE}}</td>
                    <td>{{ $pre->NOM_PACIENTE}}</td>
                    <td>{{ $pre->APE_PACIENTE}}</td>
                    <td>{{ $pre->CI_PACIENTE}}</td>
                    <td>
                        @can('encuestarealizada.show')
                        <a href="{{route('encuestarealizada.show',$pre->ID_PACIENTE)}}"> <button class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i></button></a>@endcan
                    </td>
                </tr>
    @include('encuesta.modal') @endforeach
            </table>
        </div>
        {{$encuestas->render()}}
    </div>
</div>
@endsection
