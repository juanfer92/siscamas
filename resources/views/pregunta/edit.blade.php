@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h1>
      <h2><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Editar Datos:  {{$pregunta->DESCRIPCION}}</h2>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="/pregunta"><i class="fa fa-reply"></i> Servicio</a></li>
      <li class="active">Editar</li>
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

    {!!Form::model($pregunta,['method'=>'PUT','route'=>['pregunta.update',$pregunta->ID_SERVICIO]])!!}
    {{Form::token()}}
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
      <input type="text" name="descripcion" class="form-control" value="{{$pregunta->DESCRIPCION}}" placeholder=" Ejm: Servicio #">
    </div>
    <div class="form-group">
      <label>Estado</label>
      <input type=radio name="estado" value="Activa" {{ $pregunta->ESTADO == 'Activa' ? 'checked' : ''}}>Activa</option>
      <input type=radio name="estado" value="Inactiva" {{ $pregunta->ESTADO == 'Inactiva' ? 'checked' : ''}}>Inactiva</option>
    </div>
    <div class="form-group">
      <button class="btn btn-primary" type="submit">Guardar</button>
      <button class="btn btn-danger" type="reset">Cancelar</button>
    </div>
    {!!Form::close()!!}
  </div>
</div>
@endsection
