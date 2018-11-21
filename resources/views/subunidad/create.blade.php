@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h3><i class="fa fa-plus-circle" aria-hidden="true"></i> Nueva Sub-Unidad</h3>
    <ol class="breadcrumb">
      <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="/subunidad"><i class="fa fa-reply"></i> SubUnidad</a></li>
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
    {!!Form::open(['route'=>'subunidad.store'])!!}
    {{Form::token()}}
    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <div class="form-group">
          <label>Selecione la unidad a la que pertenece</label>
          <select name="idunidad" class="form-control selectpicker" data-live-search="true">
              @foreach($unidades as $uni)
              <option value="{{$uni->ID_UNIDAD}}">{{$uni->Sucursal}} - {{$uni->DESC_UNIDAD}}</option>
              @endforeach
          </select>
        </div>
        <div class="form-group">
          <label for="descripcion">Descripción de SubUnidad</label>
          <input type="text" name="descripcion" class="form-control" placeholder="Ingrese la Sub Unidad..">
        </div>
        <div class="form-group">
          <label>Area</label>
          <select name="sector" class="form-control">
            <option value="Norte">Norte</option>
            <option value="Sur">Sur</option>
          </select>
        </div>
        <div class="form-group">
          <label>Piso</label>
          <select name="piso" class="form-control">
            <option value="Primer_Piso">Primer Piso</option>
            <option value="Segundo_Piso">Segundo Piso</option>
            <option value="Tercer_Piso">Tercer Piso</option>
          </select>
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
