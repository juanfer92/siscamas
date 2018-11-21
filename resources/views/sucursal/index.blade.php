@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
 <h3><i class="fa fa-braille" aria-hidden="true"></i>Listado Sucursales
  @can('sucursal.create')
  <a href="{{ route('sucursal.create') }}"> <button class="btn btn-success btn-xs"><i class="fa fa-plus-circle" aria-hidden="true"></i> &nbsp Nuevo</button></a>
  <!-- <a href="{{url('reportesucursales')}}" target="_blank"> <button class="btn btn-warning btn-xs"><i class="fa fa-file-pdf-o" aria-hidden="true"></i> &nbsp Reporte</button></a>
  <a href="{{ route('sucursales.excel') }}" target="_blank"> <button class="btn btn-warning btn-xs"><i class="fa fa-file-excel-o" aria-hidden="true"></i> &nbsp Reporte</button></a> -->
  @endcan
</h3>
<ol class="breadcrumb">
  <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
  <li class="active">Sucursales</li>
</ol>
</section>
<div class="">
  <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
    @include('sucursal.search')
  </div>
</div>
<div class="row">
  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="table-responsive">
      <table class="table table-striped table-bordered table-condensed table-hover">
        <thead>
          <th bgcolor= "#fbd341">Id</th>
          <th bgcolor= "#fbd341">Sucursal</th>
          <th bgcolor= "#fbd341">Direccion</th>
          <th bgcolor= "#fbd341">Teléfono</th>
          <!-- <th bgcolor= "#fbd341">Matriz/Sucursal</th> -->
          <th bgcolor= "#fbd341">Estado</th>
          <th bgcolor= "#fbd341">Opciones</th>
        </thead>
        @foreach ($sucursales as $suc)
        <tr>
          <td>{{ $suc->ID_SUCURSAL}}</td>
          <td>{{ $suc->DESCRIPCION}}</td>
          <td>{{ $suc->DIR_SUCURSAL}}</td>
          <td>{{ $suc->TELF_SUCURSAL}}</td>
          <!-- <td>{{ $suc->TIPO}}</td> -->
          <td>{{ $suc->EST_SUCURSAL}}</td>
          <td>
                 @can('sucursal.show')
                <a href="{{route('sucursal.show',$suc->ID_SUCURSAL)}}"> <button class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i></button></a>
                @endcan
                @can('sucursal.edit')
                <a href="{{route('sucursal.edit',$suc->ID_SUCURSAL)}}"> <button class="btn btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                @endcan
                @can('sucursal.destroy')
                <a href="" data-target="#modal-delete-{{$suc->ID_SUCURSAL}}" data-toggle="modal">
                  <button class="btn btn-danger" title="Deshabilitar">
                    <i class="fa fa-power-off" aria-hidden="true"></i>
                  </button>
                </a>
                @endcan
              </td>
            </tr>
            @include('sucursal.modal')
            @endforeach
          </table>
        </div>
        {{$sucursales->render()}}
      </div>
    </div>
    @endsection
