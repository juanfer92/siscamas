@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
 <h3><i class="fa fa-puzzle-piece" aria-hidden="true"></i>Listado Servicios
  @can('servicio.create')
  <a href="{{ route('servicio.create') }}"> <button class="btn btn-success btn-xs"><i class="fa fa-plus-circle" aria-hidden="true"></i> &nbsp Nuevo</button></a>

  @endcan
</h3>
<ol class="breadcrumb">
  <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
  <li class="active">Servicios</li>
</ol>
</section>
<div class="">
  <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
    @include('servicio.search')
  </div>
</div>
<div class="row">
  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="table-responsive">
      <table class="table table-striped table-bordered table-condensed table-hover">
        <thead>
          <th bgcolor= "#fbd341">Id</th>
          <th bgcolor= "#fbd341">Descripción</th>
          <th bgcolor= "#fbd341">Estado</th>
          <th bgcolor= "#fbd341">Opciones</th>
        </thead>
        @foreach ($servicio as $ser)
        <tr>
          <td>{{ $ser->ID_SERVICIO}}</td>
          <td>{{ $ser->DESC_SERVICIO}}</td>
          <td>{{ $ser->EST_SERVICIO}}</td>
          <td>
                 @can('servicio.show')
                <a href="{{route('servicio.show',$ser->ID_SERVICIO)}}"> <button class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i></button></a>
                @endcan
                @can('servicio.edit')
                <a href="{{route('servicio.edit',$ser->ID_SERVICIO)}}"> <button class="btn btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                @endcan
                @can('servicio.destroy')
                <a href="" data-target="#modal-delete-{{$ser->ID_SERVICIO}}" data-toggle="modal">
                  <button class="btn btn-danger" title="Deshabilitar">
                    <i class="fa fa-power-off" aria-hidden="true"></i>
                  </button>
                </a>
                @endcan
              </td>
            </tr>
            @include('servicio.modal')
            @endforeach
          </table>
        </div>
        {{$servicio->render()}}
      </div>
    </div>
    @endsection
