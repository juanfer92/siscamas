@extends ('layouts.admin')
@section ('contenido')
    <div class="">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <h3>Tipos de Camas<a href="tipocama/create"> <button class="btn btn-success">Nuevo</button> </a> </h3>
        @include('hospital.tipocama.search')
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
            @foreach ($tcamas as $tc)
            <tr>
              <td>{{ $tc->ID_TCAMA}}</td>
              <td>{{ $tc->DESC_TCAMA}}</td>
              <td>
                <img src="{{asset('/imagenes/tipocama/'.$tc->IMG_TCAMA)}}" alt="{{ $tc->DESC_TCAMA}}" height="100px" width="100px" class="img-thumbnail">
              </td>
              <td>{{ $tc->EST_TCAMA}}</td>
              <td>
                <a href="{{URL::action('TipocamaController@edit',$tc->ID_TCAMA)}}"> <button class="btn btn-info">Editar</button></a>
                <a href="" data-target="#modal-delete-{{$tc->ID_TCAMA}}" data-toggle="modal"> <button class="btn btn-danger">Eliminar</button></a>
              </td>
            </tr>
            @include('hospital.tipocama.modal')
            @endforeach
          </table>
        </div>
        {{$tcamas->render()}}
      </div>
    </div>
@endsection
