@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
  <h1>
    <h2><i class="fa fa-hospital-o" aria-hidden="true"></i> Hospital
      @can('sucursal.create')
      <a href="{{ route('hospital.create') }}"><button class="btn btn-success btn-xs"><i class="fa fa-plus-circle" aria-hidden="true"></i> &nbsp Nuevo</button></a>
      @endcan
    </h2>
  </h1>
  <ol class="breadcrumb">
    <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
    <li class="active">Hospital</li>
  </ol>
</section>
<div class="">
  <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
    @include('hospital.search')
  </div>
</div>
<div class="row">
  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="table-responsive">
      <table class="table table-striped table-bordered table-condensed table-hover">
        <thead>
          <th bgcolor= "#fbd341">Id</th>
          <th bgcolor= "#fbd341">Nombre</th>
          <th bgcolor= "#fbd341">Ruc</th>
          <th bgcolor= "#fbd341">Reg MSP</th>
          <th bgcolor= "#fbd341">Dirección</th>
          <th bgcolor= "#fbd341">Teléfono</th>
          <th bgcolor= "#fbd341">Estado</th>
          <th bgcolor= "#fbd341">Opciones</th>
        </thead>
        @foreach ($hospitales as $hos)
        <tr>
          <td>{{ $hos->ID_HOSPITAL}}</td>
          <td>{{ $hos->NOM_HOSPITAL}}</td>
          <td>{{ $hos->RUC_HOSPITAL}}</td>
          <td>{{ $hos->REG_MSP_HOSPITAL}}</td>
          <td>{{ $hos->DIR_HOSPITAL}}</td>
          <td>{{ $hos->TELF_HOSPITAL}}</td>
          <td>{{ $hos->EST_HOSPITAL}}</td>
          <td>
            @can('hospital.show')
                <a href="{{route('hospital.show',$hos->ID_HOSPITAL)}}"> <button class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i></button></a>
                @endcan
            @can('hospital.edit')
            <a href="{{route('hospital.edit',$hos->ID_HOSPITAL)}}"> <button class="btn btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
            @endcan
            @can('hospital.destroy')
            <a href="" data-target="#modal-delete-{{$hos->ID_HOSPITAL}}" data-toggle="modal"><button class="btn btn-danger" title="Deshabilitar"><i class="fa fa-power-off" aria-hidden="true"></i></button></a>
            @endcan
          </td>
        </tr>
        @include('hospital.modal')
        @endforeach
      </table>
    </div>
    {{$hospitales->render()}}
  </div>
</div>
@endsection
