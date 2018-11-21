@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h1>
      <h2><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Editar Datos:  {{$unidad->DESC_UNIDAD}}</h2>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="/unidad"><i class="fa fa-reply"></i> Unidad</a></li>
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
    {!!Form::model($unidad,['method'=>'PUT','route'=>['unidad.update',$unidad->ID_UNIDAD]])!!}
    {{Form::token()}}
    <div class="form-group">
      <label>Seleccione la Sucursal a la que pertenece la unidad</label>
      <select name="idsucursal" class="form-control selectpicker" data-live-search="true">
          @foreach($sucursales as $suc)
          <option value="{{$suc->ID_SUCURSAL}}">{{$suc->DESCRIPCION}} - {{$suc->DIR_SUCURSAL}}</option>
          @endforeach
      </select>
    </div>
    <div class="form-group">
      <label for="descripcion">Nombre de la Unidad</label>
      <input type="text" name="descripcion" class="form-control" value="{{$unidad->DESC_UNIDAD}}" placeholder="Ingrese la descripcion..">
    </div>
    <div class="form-group">
      <label>Estado</label>
      <div class="custom-control custom-radio">
        <input type="radio" class="form-check-input" value="Activo" name="estado" required>
        <label class="form-check-label" for="customControlValidation3">Activo</label>
        <br>
        <input type="radio" class="form-check-input" value="Inactiva" name="estado" required>
        <label class="form-check-label" for="customControlValidation3">Inactivo</label>
      </div>
    </div>
    <div class="form-group">
      <button class="btn btn-primary" type="submit">Guardar</button>
      <button class="btn btn-danger" type="reset">Cancelar</button>
    </div>
    {!!Form::close()!!}
  </div>
</div>
@endsection
