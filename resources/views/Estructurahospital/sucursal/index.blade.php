@extends ('layouts.admin')
@section ('contenido')
    <div class="">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <h3>Listado Sucursales<a href="sucursal/create"> <button class="btn btn-success">Nueva</button> </a> </h3>
        @include('hospital.sucursal.search')
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
              <th bgcolor= "#fbd341">Matriz/Sucursal</th>
              <th bgcolor= "#fbd341">Estado</th>
              <th bgcolor= "#fbd341">Opciones</th>
            </thead>
            @foreach ($sucursales as $suc)
            <tr>
              <td>{{ $suc->ID_SUCURSAL}}</td>
              <td>{{ $suc->DESCRIPCION}}</td>
              <td>{{ $suc->DIR_SUCURSAL}}</td>
              <td>{{ $suc->TELF_SUCURSAL}}</td>
              <td>{{ $suc->TIPO}}</td>
              <td>{{ $suc->EST_SUCURSAL}}</td>
              <td>
                <a href="{{URL::action('SucursalController@edit',$suc->ID_SUCURSAL)}}"> <button class="btn btn-info">Editar</button></a>
                <a href="" data-target="#modal-delete-{{$suc->ID_SUCURSAL}}" data-toggle="modal"> <button class="btn btn-danger">Eliminar</button></a>
              </td>
            </tr>
            @include('hospital.sucursal.modal')
            @endforeach
          </table>
        </div>
        {{$sucursales->render()}}
      </div>
    </div>
@endsection
