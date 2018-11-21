@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h3><i class="fa fa-plus-circle" aria-hidden="true"></i> Nueva Estado de Cama</h3>
    <ol class="breadcrumb">
      <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="/estadocama"><i class="fa fa-reply"></i> Estados de Camas</a></li>
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
    {!!Form::open(['route'=>'estadocama.store','files'=>'true'])!!}
    {{Form::token()}}
    <div class="form-group">
      <label for="descripcion">Descripción</label>
      <input type="text" name="descripcion" class="form-control"  placeholder="Estado cama..">
    </div>
    <div class="form-group">
      <label for="imagen">Imagen de estado Cama</label>
      <input type="file" name="imagen" class="form-control">
    </div>
    <div class="form-group">
      <button class="btn btn-primary" type="submit">Guardar</button>
      <button class="btn btn-danger" type="reset">Cancelar</button>
    </div>
    {!!Form::close()!!}
  </div>
</div>
@endsection
