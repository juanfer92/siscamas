@extends ('layouts.admin')
@section ('contenido')
    <div class="">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <h3>Listado de Unidades<a href="unidad/create"> <button class="btn btn-success">Nueva</button></a> </h3>
        @include('hospital.unidad.search')
      </div>
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
                <a href="{{URL::action('UnidadController@edit',$uni->ID_UNIDAD)}}"> <button class="btn btn-info">Editar</button></a>
                <a href="" data-target="#modal-delete-{{$uni->ID_UNIDAD}}" data-toggle="modal"> <button class="btn btn-danger">Eliminar</button></a>
              </td>
            </tr>
            @include('hospital.unidad.modal')
            @endforeach
          </table>
        </div>
        {{$unidades->render()}}
      </div>
    </div>
@endsection
