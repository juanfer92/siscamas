@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h3><i class="fa fa-plus-circle" aria-hidden="true"></i> Nueva Pregunta</h3>
    <ol class="breadcrumb">
      <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="/pregunta"><i class="fa fa-reply"></i> Pregunta</a></li>
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
    {!!Form::open(['route'=>'pregunta.store'])!!}
    {{Form::token()}}
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <div class="form-group">
                    <label>Servicio</label>
                    <select name="idservicio" class="form-control selectpicker" data-live-search="true">
                        @foreach($servicios as $ser)
                        <option value="{{$ser->ID_SERVICIO}}">{{$ser->DESC_SERVICIO}}</option>
                        @endforeach
                    </select>
                  </div>
        <div class="form-group">
          <label for="descripcion">Descripción</label>
          <input type="text" name="descripcion" class="form-control" placeholder=" Ejm: Pregunta de comida" required>
        </div>
      <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr>
    <div class="form-group">
      <button class="btn btn-primary" type="submit">Guardar</button>
      <button class="btn btn-danger" type="reset">Cancelar</button>
    </div>
    </div>
</div>

    {!!Form::close()!!}

@endsection
