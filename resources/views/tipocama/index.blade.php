@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
 <h2>Listado de Tipos de Camas
          @can('unidad.create')
          <a href="{{ route('tipocama.create') }}"> <button class="btn btn-success btn-xs"><i class="fa fa-plus-circle" aria-hidden="true"></i> &nbsp Nuevo</button></a>
  @endcan
</h2>
<ol class="breadcrumb">
  <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
  <li class="active">Unidades</li>
</ol>
</section>
    <div class="">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">

        @include('tipocama.search')
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
                @can('tipocama.show')
                <a href="{{route('tipocama.show',$tc->ID_TCAMA)}}"> <button class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i></button></a>
                @endcan
                @can('tipocama.edit')
                <a href="{{route('tipocama.edit',$tc->ID_TCAMA)}}"> <button class="btn btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                @endcan
                @can('tipocama.destroy')
                <a href="" data-target="#modal-delete-{{$tc->ID_TCAMA}}" data-toggle="modal"> <button class="btn btn-danger" title="Deshabilitar">
                    <i class="fa fa-power-off" aria-hidden="true"></i>
                  </button>
                </a>
                @endcan
              </td>
            </tr>
            @include('tipocama.modal')
            @endforeach
          </table>
        </div>
        {{$tcamas->render()}}
      </div>
    </div>
@endsection
