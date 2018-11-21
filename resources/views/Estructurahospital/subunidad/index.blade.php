@extends ('layouts.admin')
@section ('contenido')
    <div class="">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <h3>Listado de Sub-Unidades<a href="subunidad/create"> <button class="btn btn-success">Nueva</button></a> </h3>
        @include('hospital.subunidad.search')
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-condensed table-hover" >
            <thead>
              <th bgcolor= "#fbd341">ID</th>
              <th bgcolor= "#fbd341">Unidad</th>
              <th bgcolor= "#fbd341">Subunidad</th>
              <th bgcolor= "#fbd341">Locación</th>
              <th bgcolor= "#fbd341">Opciones</th>
            </thead>
            @foreach ($subunidades as $subu)
            <tr>
              <td>{{ $subu->ID_SUBUNIDAD}}</td>
              <td>{{ $subu->UNIDAD}}</td>
              <td>{{ $subu->DESC_SUBUNIDAD}}</td>
              <td>{{ $subu->PISO_SUBUNIDAD}} - Area: {{ $subu->SECTOR_SUBUNIDAD}}</td>
              <td>
                <a href="{{URL::action('SubunidadController@edit',$subu->ID_SUBUNIDAD)}}"> <button class="btn btn-info">Editar</button></a>
                <a href="" data-target="#modal-delete-{{$subu->ID_SUBUNIDAD}}" data-toggle="modal"> <button class="btn btn-danger">Eliminar</button></a>
              </td>
            </tr>
            @include('hospital.subunidad.modal')
            @endforeach
          </table>
        </div>
        {{$subunidades->render()}}
      </div>
    </div>
@endsection
