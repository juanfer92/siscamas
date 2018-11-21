@extends ('layouts.admin')
@section ('contenido')
    <div class="">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <h3>Estados de Camas<a href="estadocama/create"> <button class="btn btn-success">Nuevo</button> </a> </h3>
        @include('hospital.estadocama.search')
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-condensed table-hover">
            <thead>
              <th bgcolor= "#fbd341">ID</th>
              <th bgcolor= "#fbd341">Descripción</th>
              <th bgcolor= "#fbd341">Imagen</th>
              <th bgcolor= "#fbd341">Estado</th>
              <th bgcolor= "#fbd341">Opciones</th>
            </thead>
            @foreach ($estcamas as $estc)
            <tr>
              <td>{{ $estc->ID_ESTCAM}}</td>
              <td>{{ $estc->DESC_ESTCAM}}</td>
              <td>
                <img src="{{asset('/imagenes/estadocama/'.$estc->IMG_ESTCAMA)}}" alt="{{ $estc->DESC_ESTCAM}}" height="100px" width="100px" class="img-thumbnail">
              </td>
              <td>{{ $estc->EST_ESTCAMA}}</td>
              <td>
                <a href="{{URL::action('EstadocamaController@edit',$estc->ID_ESTCAM)}}"> <button class="btn btn-info">Editar</button></a>
                <a href="" data-target="#modal-delete-{{$estc->ID_ESTCAM}}" data-toggle="modal"> <button class="btn btn-danger">Eliminar</button></a>
              </td>
            </tr>
            @include('hospital.estadocama.modal')
            @endforeach
          </table>
        </div>
        {{$estcamas->render()}}
      </div>
    </div>
@endsection
