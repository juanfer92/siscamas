@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h3><i class="fa fa-plus-circle" aria-hidden="true"></i> Nueva Unidad</h3>
    <ol class="breadcrumb">
      <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="/unidad"><i class="fa fa-reply"></i> Unidad</a></li>
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
    {!!Form::open(['route'=>'unidad.store'])!!}
    {{Form::token()}}
    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
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
          <input type="text" name="descripcion" class="form-control" placeholder="Ingrese la dirección.." value="{{ old('descripcion') }}">
        </div>
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
