@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
 <h2>Listado de Unidades
          @can('unidad.create')
          <a href="{{ route('unidad.create') }}"> <button class="btn btn-success btn-xs"><i class="fa fa-plus-circle" aria-hidden="true"></i> &nbsp Nuevo</button></a>
  @endcan
</h2>
<ol class="breadcrumb">
  <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
  <li class="active">Unidades</li>
</ol>
</section>
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        @include('unidad.search')
      </div>
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-condensed table-hover" >
            <thead>
              <th bgcolor= "#fbd341">ID</th>
              <th bgcolor= "#fbd341">Descripcion</th>
              <th bgcolor= "#fbd341">Sucursal</th>
              <th bgcolor= "#fbd341">Estado</th>
              <th bgcolor= "#fbd341">Opciones</th>
            </thead>
            @foreach ($unidades as $uni)
            <tr>
              <td>{{ $uni->ID_UNIDAD}}</td>
              <td>{{ $uni->DESC_UNIDAD}}</td>
              <td>{{ $uni->Sucursal}} - {{ $uni->Direccion}} </td>
              <td>{{ $uni->EST_UNIDAD}}</td>
              <td>
                @can('tipocama.show')
                <a href="{{route('unidad.show',$uni->ID_UNIDAD)}}"> <button class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i></button></a>
                @endcan
                @can('unidad.edit')
                <a href="{{route('unidad.edit',$uni->ID_UNIDAD)}}"> <button class="btn btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                @endcan
                @can('unidad.destroy')
                <a href="" data-target="#modal-delete-{{$uni->ID_UNIDAD}}" data-toggle="modal">  <button class="btn btn-danger" title="Deshabilitar">
                    <i class="fa fa-power-off" aria-hidden="true"></i>
                  </button>
                </a>
                @endcan
              </td>
            </tr>
            @include('unidad.modal')
            @endforeach
          </table>
        </div>
        {{$unidades->render()}}
      </div>
    </div>
@endsection
