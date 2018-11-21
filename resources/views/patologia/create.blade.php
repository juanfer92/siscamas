@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
  <h3><i class="fa fa-plus-circle" aria-hidden="true"></i> Nueva Patología</h3>
  <ol class="breadcrumb">
    <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
    <li><a href="/patologia"><i class="fa fa-reply"></i> Patología</a></li>
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
  {!!Form::open(['route'=>'patologia.store'])!!}
  {{Form::token()}}
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
      <!-- <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr> -->
      <div class="form-group">
        <label for="nombre">Descripcion de Patología:</label>
        <input type="text" name="descripcion" class="form-control" placeholder="Patología.." value="{{ old('descripcion')}}">
      </div>
      <div class="form-group">
        <label for="nombre">Sintomas:</label>
        <textarea type="text" name="sintoma" class="form-control" placeholder="Sintomas.." value="{{ old('descripcion')}}"></textarea>
      </div>
      <div class="form-group">
        <label for="nombre">Diagnóstico:</label>
        <textarea type="text" name="diagnostico" class="form-control" placeholder="Diagnóstico.." value="{{ old('descripcion')}}"></textarea>
      </div>
      <div class="form-group">
        <label for="nombre">Procedimiento:</label>
        <textarea type="text" name="procedimiento" class="form-control" placeholder="Procedimiento.." value="{{ old('descripcion')}}"></textarea>
      </div>
      <div class="form-group">
        <label for="nombre">Procedimiento:</label>
        <select name="tpaciente" class="form-control form-control-sm">
          <option>Maternal</option>
          <option>Neonato</option>
        </select>
      </div>

    </div>
  </div>
  <div class="form-group">
    <button class="btn btn-primary" type="submit">Guardar</button>
    <button class="btn btn-danger" type="reset">Cancelar</button>
  </div>
  {!!Form::close()!!}
  @endsection
