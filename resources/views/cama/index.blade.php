@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
   
    <h2>
        Listado de Camas
          @can('cama.create')
        <a href="{{ route('cama.create') }}">
            <button class="btn btn-success btn-xs">
                <i aria-hidden="true" class="fa fa-plus-circle">
                </i>
                Nuevo
            </button>
        </a>
        @endcan
    </h2>
    <ol class="breadcrumb">
        <li>
            <a href="/home">
                <i class="fa fa-dashboard">
                </i>
                Inicio
            </a>
        </li>
        <li class="active">
            Camas
        </li>
    </ol>
</section>
<div class="">
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <h3>
        </h3>
        @include('cama.search')
    </div>
</div>
<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-condensed table-hover">
                <thead>
                    <th bgcolor="#fbd341">
                        Id
                    </th>
                    <th bgcolor="#fbd341">
                        Cama Asignada a
                    </th>
                    <th bgcolor="#fbd341">
                        Cama Tipo
                    </th>
                    <th bgcolor="#fbd341">
                        Imagen
                    </th>
                    <th bgcolor="#fbd341">
                        Estado
                    </th>
                    <th bgcolor="#fbd341">
                        Código
                    </th>
                    <th bgcolor="#fbd341">
                        Opciones
                    </th>
                </thead>
                @foreach ($camas as $cam)
                <tr>
                    <td>
                        {{ $cam->ID_CAMA}}
                    </td>
                    <td>
                        {{ $cam->DESCRIPCION}} {{ $cam->UNIDAD}} {{ $cam->Descripcion1}}
                    </td>
                    <td>
                        {{ $cam->Descripcion2}}
                    </td>
                    <td>
                        <img alt="" class="img-thumbnail" height="100px" src="{{asset('/imagenes/tipocama/'.$cam->imagen)}}" width="100px">
                        </img>
                    </td>
                    <td>
                        {{ $cam->Estado }}
                    </td>
                    <td>
                        {{ $cam->COD_CAMA}}
                    </td>
                    <td>
                        @can('cama.show')
                        <a href="#">
                            <button class="btn btn-info">
                                <i aria-hidden="true" class="fa fa-eye">
                                </i>
                            </button>
                        </a>
                        @endcan
                @can('cama.edit')
                        <a href="{{route('cama.edit',$cam->ID_CAMA)}}">
                            <button class="btn btn-info">
                                <i aria-hidden="true" class="fa fa-pencil-square-o">
                                </i>
                            </button>
                        </a>
                        @endcan
                @can('cama.destroy')
                        <a data-target="#modal-delete-{{$cam->ID_CAMA}}" data-toggle="modal" href="">
                            <button class="btn btn-danger" title="Deshabilitar">
                                <i aria-hidden="true" class="fa fa-power-off">
                                </i>
                            </button>
                        </a>
                        @endcan
                    </td>
                </tr>
                @include('cama.modal')
            @endforeach
            </table>
        </div>
        {{$camas->render()}}
    </div>
</div>
@endsection
