@extends ('layouts.admin')
@section ('contenido')
    <div class="">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <h3>Listado de Pacientes
          @can('paciente.create')
          <a href="{{ route('paciente.create') }}">
            <button class="btn btn-success">Ingresos Paciente &nbsp &nbsp &nbsp</button>
          </a>
          @endcan
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
            <i class="ion-eye" aria-hidden="true"></i>
            Camas
          </button>
        </h3>

        @include('paciente.search')
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="table-responsive">
          @foreach ($numpaciente as $npac)
          <i class="fa fa-bar-chart" aria-hidden="true"></i><span>Total Pacientes: {{$npac->numtocpac}} &nbsp</span>
          <i class="fa fa-check-circle" aria-hidden="true"></i><span>Ingresos: {{$npac->numtocpaci }} &nbsp</span>
          <i class="fa fa-check-square-o" aria-hidden="true"></i><span>Egresos: {{$npac->numtocpace }} &nbsp</span>
          @endforeach
          <table class="table table-striped table-bordered table-condensed table-hover">
            <thead>
              <th bgcolor= "#fbd341">Id</th>
              <th bgcolor= "#fbd341">Nombres</th>
              <th bgcolor= "#fbd341">Apellidos</th>
              <th bgcolor= "#fbd341">IDN</th>
              <th bgcolor= "#fbd341">Estado</th>
              <th bgcolor= "#fbd341">F Ingreso</th>
              <th bgcolor= "#fbd341">F Egreso</th>
              <th bgcolor= "#fbd341">Opciones</th>
            </thead>
            @foreach ($pacientes as $pac)
            <tr>
              <td>{{ $pac->ID_PACIENTE}}</td>
              <td>{{ $pac->NOM_PACIENTE}}</td>
              <td>{{ $pac->APE_PACIENTE}}</td>
              <td>{{ $pac->CI_PACIENTE}}</td>
              <td >{{ $pac->EST_INGRE_EGRESO}}</td>
              <td>{{ $pac->FECHA_INGRESO}}</td>
              <td>{{ $pac->FECHA_EGRESO}}</td>
              <td>
                @can('paciente.edit')
                <a href="{{route('paciente.edit',$pac->ID_PACIENTE)}}"> <button class="btn btn-info"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button></a>
                @endcan
                @can('paciente.destroy')
                <a href="" data-target="#modal-delete-{{$pac->ID_PACIENTE}}" data-toggle="modal"> <button class="btn btn-danger">Eliminar</button></a>
                @endcan
              </td>
            </tr>
            @include('paciente.modal')
            @endforeach
          </table>
        </div>
        {{$pacientes->render()}}
      </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Modal title</h4>
          </div>
          <div class="modal-body">

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
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
