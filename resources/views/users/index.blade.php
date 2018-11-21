@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
 <h3>Listado Usuarios
  @can('sucursal.create')
  <a href="{{ route('users.create') }}"> <button class="btn btn-success btn-xs"><i class="fa fa-plus-circle" aria-hidden="true"></i> &nbsp Nuevo</button></a>
  @endcan
</h3>
<ol class="breadcrumb">
  <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
  <li class="active">Usuarios</li>
</ol>
</section>
    <div class="">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        @include('users.search')
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-condensed table-hover">
            <thead>
              <th bgcolor= "#fbd341">Id</th>
              <th bgcolor= "#fbd341">Nombre</th>
              <th bgcolor= "#fbd341">Email</th>
              <th bgcolor= "#fbd341">Opciones</th>
            </thead>
            @foreach ($usuarios as $usu)
            <tr>
              <td>{{ $usu->id}}</td>
              <td>{{ $usu->name}}</td>
              <td>{{ $usu->email}}</td>
              <td>
                @can('users.show')
                <a href="#"> <button class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i></button></a>
                @endcan
                @can('users.edit')
                <a href="{{route('users.edit',$usu->id)}}"> 
                <button class="btn btn-info">
                  <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                </button>
              </a>
                @endcan
                @can('users.destroy')
                <a href="" data-target="#modal-delete-{{$usu->id}}" data-toggle="modal"> <button class="btn btn-danger" title="Deshabilitar"><i class="fa fa-power-off" aria-hidden="true"></i></button></a>
                @endcan
              </td>
            </tr>
            @include('users.modal')
            @endforeach
          </table>
        </div>
        {{$usuarios->render()}}
      </div>
    </div>
@endsection
