@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
  <h3><i class="fa fa-plus-circle" aria-hidden="true"></i> Nuevo Quirofano</h3>
  <ol class="breadcrumb">
    <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
    <li><a href="/paciente"><i class="fa fa-reply"></i> Quirofano</a></li>
    <li class="active">Crear</li>
  </ol>
</section>
<div class="row">
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    @if (count($errors)>0)
    <div class="alert alert-danger">
      <ul>
        @foreach ($errors->all() as $error)
        <li>{{$error}}</li>
        @endforeach
      </ul>
    </div>
    @endif
  </div>
</div>
<div class="form-group">
  {!!Form::open(['route'=>'quirofano.store'])!!}
  {{Form::token()}}
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
      <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;">Datos Personales</hr>
      <div class="form-group">
        <label>Seleccione Paciente</label>
        <select name="idpaciente" class="form-control selectpicker" data-live-search="true">
            @foreach($pacientes as $pac)
            <option value="{{$pac->ID_PACIENTE}}">{{$pac->NOM_PACIENTE.' '.$pac->APE_PACIENTE.' '.$pac->CI_PACIENTE}}</option>
            @endforeach
        </select>
      </div>
      <div class="form-group">
<label for="example-date-input" class="col-2 col-form-label">Date</label>
<div class="col-10">
<input class="form-control" type="date" name="fecha" value="2018-11-01" id="example-date-input">
</div>
</div>
                <div class="form-group">
                  <label for="example-time-input" class="col-2 col-form-label">Hora Inicio</label>
                  <div class="col-10">
                    <input class="form-control" type="time" name="horai" value="00:00:00" id="example-time-input">
                  </div>
                </div>
                <div class="form-group">
                  <label for="example-time-input" class="col-2 col-form-label">Hora Fin</label>
                  <div class="col-10">
                    <input class="form-control" type="time" name="horaf" value="23:00:00" id="example-time-input">
                  </div>
                </div>

      </div>
    </div>
  </div>
  <div class="form-group">
    <button class="btn btn-primary" type="submit">Guardar</button>
    <button class="btn btn-danger" type="reset">Cancelar</button>
  </div>
  {!!Form::close()!!}
  @endsection
  @section('scripts')
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
    $('#tags').autocomplete({
      source: "{{URL::to('autocomplete-searchsubunidad')}}",
  // minLength: 2,
  select:function(key,value)
  {
    console.log(value)
    $('#idsuc').val(value.item.id)
    $('#sucursal').val(value.item.sucursal)
    $('#iduni').val(value.item.iduni)
    $('#unidad').val(value.item.unidad)
    $('#idsubu').val(value.item.idsubu)
    $('#subunidad').val(value.item.subunidad)
  }
});
</script>

<script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
</script>

@endsection
