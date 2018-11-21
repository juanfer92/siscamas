@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
 <h3><i class="fa fa-puzzle-piece" aria-hidden="true"></i>Listado Preguntas
  @can('pregunta.create')
  <a href="{{ route('pregunta.create') }}"> <button class="btn btn-success btn-xs"><i class="fa fa-plus-circle" aria-hidden="true"></i> &nbsp Nuevo</button></a>

  @endcan
</h3>
<ol class="breadcrumb">
  <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
  <li class="active">Preguntas</li>
</ol>
</section>
<div class="">
  <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
    @include('pregunta.search')
  </div>
</div>
<div class="row">
  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="table-responsive">
      <table class="table table-striped table-bordered table-condensed table-hover">
        <thead>
          <th bgcolor= "#fbd341">Id</th>
          <th bgcolor= "#fbd341">Servico</th>
          <th bgcolor= "#fbd341">Pregunta</th>
          <th bgcolor= "#fbd341">Estado</th>
          <th bgcolor= "#fbd341">Opciones</th>
        </thead>
        @foreach ($pregunta as $pre)
        <tr>
          <td>{{ $pre->ID_PREGUNTA}}</td>
          <td>{{ $pre->DESC_SERVICIO}}</td>
          <td>{{ $pre->DESCRIPCION}}</td>
          <td>{{ $pre->ESTADO}}</td>
          <td>
                 @can('pregunta.show')
                <a href="{{route('pregunta.show',$pre->ID_PREGUNTA)}}"> <button class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i></button></a>
                @endcan
                @can('pregunta.edit')
                <a href="{{route('pregunta.edit',$pre->ID_PREGUNTA)}}"> <button class="btn btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                @endcan
                @can('pregunta.destroy')
                <a href="" data-target="#modal-delete-{{$pre->ID_PREGUNTA}}" data-toggle="modal">
                  <button class="btn btn-danger" title="Deshabilitar">
                    <i class="fa fa-power-off" aria-hidden="true"></i>
                  </button>
                </a>
                @endcan
              </td>
            </tr>
            @include('pregunta.modal')
            @endforeach
          </table>
        </div>
        {{$pregunta->render()}}
      </div>
    </div>
    @endsection
