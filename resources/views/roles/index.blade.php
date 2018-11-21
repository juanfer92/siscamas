@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
 <h3>Listado Roles
  @can('roles.create')
  <a href="{{ route('roles.create') }}"> <button class="btn btn-success btn-xs"><i class="fa fa-plus-circle" aria-hidden="true"></i> &nbsp Nuevo</button></a>
  @endcan
</h3>
<ol class="breadcrumb">
  <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
  <li class="active">Roles</li>
</ol>
</section>
    <div class="">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        @include('roles.search')
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-condensed table-hover">
            <thead>
              <th bgcolor= "#fbd341">Id</th>
              <th bgcolor= "#fbd341">Rol</th>
              <th bgcolor= "#fbd341">Descripción</th>
              <th bgcolor= "#fbd341">Opciones</th>
            </thead>
            @foreach ($roles as $rol)
            <tr>
              <td>{{ $rol->id}}</td>
              <td>{{ $rol->name}}</td>
              <td>{{ $rol->description}}</td>
              <td>
                @can('roles.show')
                <a href="{{route('roles.show',$rol->id)}}"> <button class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i></button></a>
                @endcan
                @can('roles.edit')
                <a href="{{route('roles.edit',$rol->id)}}"> <button class="btn btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                @endcan
                @can('roles.destroy')
                <a href="" data-target="#modal-delete-{{$rol->id}}" data-toggle="modal"> <button class="btn btn-danger" title="Deshabilitar">
                    <i class="fa fa-power-off" aria-hidden="true"></i>
                  </button>
                </a>
                @endcan
              </td>
            </tr>
            @include('roles.modal')
            @endforeach
          </table>
        </div>
        {{$roles->render()}}
      </div>
    </div>
@endsection
