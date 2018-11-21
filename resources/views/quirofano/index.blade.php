@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
 <h3>Listado Ingresos a Quirofano
  @can('quirofano.create')
          <a href="{{ route('quirofano.create') }}"> <button class="btn btn-success btn-xs"><i class="fa fa-plus-circle" aria-hidden="true"></i> &nbsp Nuevo</button></a>
          <!-- <button type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal">
            <i class="ion-eye" aria-hidden="true"></i>
            Ver Camas Disponibles
          </button> -->
  @endcan
</h3>
<ol class="breadcrumb">
  <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
  <li class="active">Quirofano</li>
</ol>
</section>
    <div class="">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">

        @include('quirofano.search')
      </div>

    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="table-responsive">

          <table class="table table-striped table-bordered table-condensed table-hover">
            <thead>
              <th bgcolor= "#fbd341">Id</th>
              <th bgcolor= "#fbd341">Nombres Apellidos</th>
              <th bgcolor= "#fbd341">Estado</th>
              <th bgcolor= "#fbd341">Hora Inicio</th>
              <th bgcolor= "#fbd341">Hora Fin</th>
              <th bgcolor= "#fbd341">Opciones</th>
            </thead>
            @foreach ($quirofanos as $qui)
            <tr>
              <td>{{ $qui->ID_QUIRIFANO}}</td>
              <td>{{ $qui->NOM_PACIENTE.' '.$qui->APE_PACIENTE}}</td>
              <td>{{ $qui->ESTADO}}</td>
              <td>{{ $qui->HORA_INICIO}}</td>
              <td>{{ $qui->HORA_FIN}}</td>
              <td>
                @can('quirofano.show')
                <a href="#"> <button class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i></button></a>
                @endcan
                @can('quirofano.edit')
                <a href="{{route('quirofano.edit',$qui->ID_QUIRIFANO)}}"> <button class="btn btn-warning"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                @endcan
                {{-- @can('quirofano.destroy')
                <a href="" data-target="#modal-delete-{{$qui->ID_QUIRIFANO}}" data-toggle="modal"> <button class="btn btn-danger" title="Deshabilitar">
                    <i class="fa fa-power-off" aria-hidden="true"></i>
                  </button>
                </a>
                @endcan --}}
              </td>
            </tr>
            @include('quirofano.modal')
            @endforeach
          </table>
        </div>
        {{$quirofanos->render()}}
      </div>
    </div>

@endsection
@section('scripts')
<script src="{{asset('js/JsBarcode.all.min.js')}}"></script>
<script src="{{asset('js/jquery.PrintArea.js')}}"></script>
<script>
$(document).ready(function(){
    $("tr").each(function(){
        $(this).children("td").each(function(){
            switch ($(this).html()) {
                case 'Ingreso':
                    $(this).css("background-color", "#a7d129");
                break;
                case 'Egreso':
                    $(this).css("background-color", "#fd5f00");
                break;
            }
        })
    })
});
</script>
@stop
