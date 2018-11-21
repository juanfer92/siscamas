@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
 <h2>Listado de Sub-Unidades
          @can('subunidad.create')
          <a href="{{ route('subunidad.create') }}"> <button class="btn btn-success btn-xs"><i class="fa fa-plus-circle" aria-hidden="true"></i> &nbsp Nuevo</button></a>
  @endcan
</h2>
<ol class="breadcrumb">
  <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
  <li class="active">SubUnidades</li>
</ol>
</section>
    <div class="">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        @include('subunidad.search')
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-condensed table-hover" >
            <thead>
              <th bgcolor= "#fbd341">ID</th>
              <th bgcolor= "#fbd341">Ubicación</th>
              <th bgcolor= "#fbd341">Unidad</th>
              <th bgcolor= "#fbd341">Subunidad</th>
              <th bgcolor= "#fbd341">Locación</th>
              <th bgcolor= "#fbd341">Estado</th>
              <th bgcolor= "#fbd341">Opciones</th>
            </thead>
            @foreach ($subunidades as $subu)
            <tr>
              <td>{{ $subu->ID_SUBUNIDAD}}</td>
              <td>{{ $subu->DESCRIPCION}}</td>
              <td>{{ $subu->UNIDAD}}</td>
              <td>{{ $subu->DESC_SUBUNIDAD}}</td>
              <td>{{ $subu->PISO_SUBUNIDAD}} - Area: {{ $subu->SECTOR_SUBUNIDAD}}</td>
              <td>{{ $subu->EST_SUBUNIDAD}}</td>
              <td>
                @can('subunidad.show')
                <a href="{{route('subunidad.show',$subu->ID_SUBUNIDAD)}}"><button class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i></button></a>
                @endcan
                @can('subunidad.edit')
                <a href="{{route('subunidad.edit',$subu->ID_SUBUNIDAD)}}"> <button class="btn btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                @endcan
                @can('subunidad.destroy')
                <a href="" data-target="#modal-delete-{{$subu->ID_SUBUNIDAD}}" data-toggle="modal"> <button class="btn btn-danger" title="Deshabilitar">
                    <i class="fa fa-power-off" aria-hidden="true"></i>
                  </button>
                </a>
                @endcan
              </td>
            </tr>
            @include('subunidad.modal')
            @endforeach
          </table>
        </div>
        {{$subunidades->render()}}
      </div>
    </div>
@endsection
