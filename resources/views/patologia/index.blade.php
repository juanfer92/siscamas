@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
 <h3>Listado Patologias
  @can('patologia.create')
          <a href="{{ route('patologia.create') }}"> <button class="btn btn-success btn-xs"><i class="fa fa-plus-circle" aria-hidden="true"></i> &nbsp Nuevo</button></a>
  @endcan
</h3>
<ol class="breadcrumb">
  <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
  <li class="active">Quirofano</li>
</ol>
</section>
    <div class="">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">

        @include('patologia.search')
      </div>

    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="table-responsive">

          <table class="table table-striped table-bordered table-condensed table-hover">
            <thead>
              <th bgcolor= "#fbd341">Id</th>
              <th bgcolor= "#fbd341">Patología</th>
              <th bgcolor= "#fbd341">Patología aplicada a: </th>
              <th bgcolor= "#fbd341">Estado </th>
              <th bgcolor= "#fbd341">Opciones</th>
            </thead>
            @foreach ($tpatologia as $pat)
            <tr>
              <td>{{ $pat->ID_PATOLOGIA}}</td>
              <td>{{ $pat->DESC_PATOLOGIA}}</td>
              <td>{{ $pat->TPACIENTE}}</td>
              <td>{{ $pat->EST_PATOLOGIA}}</td>
              <td>
                @can('patologia.show')
                <a href="{{route('patologia.show',$pat->ID_PATOLOGIA)}}"> <button class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i></button></a>
                @endcan
                @can('patologia.edit')
                <a href="{{route('patologia.edit',$pat->ID_PATOLOGIA)}}"> <button class="btn btn-warning"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                @endcan
                @can('patologia.destroy')
                <a href="" data-target="#modal-delete-{{$pat->ID_PATOLOGIA}}" data-toggle="modal"> <button class="btn btn-danger" title="Deshabilitar">
                    <i class="fa fa-power-off" aria-hidden="true"></i>
                  </button>
                </a>
                @endcan
              </td>
            </tr>
            @include('patologia.modal')
            @endforeach
          </table>
        </div>
        {{$tpatologia->render()}}
      </div>
    </div>
    </div>
@endsection
