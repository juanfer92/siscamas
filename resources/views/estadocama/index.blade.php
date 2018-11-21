@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
 <h2>Listado de Estado de Camas
          @can('estadocama.create')
          <a href="{{ route('estadocama.create') }}"><button class="btn btn-success btn-xs"><i class="fa fa-plus-circle" aria-hidden="true"></i> &nbsp Nuevo</button></a>
  @endcan
</h2>
<ol class="breadcrumb">
  <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
  <li class="active">Estados de Camas</li>
</ol>
</section>
    <div class="">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
         @include('estadocama.search')
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
                 @can('estadocama.show')
                  <a href="{{route('estadocama.show',$estc->ID_ESTCAM)}}"> <button class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i></button></a>
                @endcan
                @can('estadocama.edit')
                <a href="{{route('estadocama.edit',$estc->ID_ESTCAM)}}"><button class="btn btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                @endcan
                @can('estadocama.destroy')
                <a href="" data-target="#modal-delete-{{$estc->ID_ESTCAM}}" data-toggle="modal"><button class="btn btn-danger" title="Deshabilitar">
                    <i class="fa fa-power-off" aria-hidden="true"></i>
                  </button>
                </a>
                @endcan
              </td>
            </tr>
            @include('estadocama.modal')
            @endforeach
          </table>
        </div>
        {{$estcamas->render()}}
      </div>
    </div>
@endsection
