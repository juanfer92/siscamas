@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h3><i class="fa fa-plus-circle" aria-hidden="true"></i> Nuevo Hospital</h3>
    <ol class="breadcrumb">
      <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="/hospital"><i class="fa fa-reply"></i> Hospital</a></li>
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

    {!!Form::open(['route'=>'hospital.store'])!!}
    {{Form::token()}}
    <div class="form-group">
      <label for="nombre">Nombre</label>
      <input type="text" name="nombre" class="form-control" placeholder="Nombre.." value="{{ old('nombre')}}">
    </div>
    <div class="form-group">
      <label for="ruc">RUC</label>
      <input type="text" name="ruc" class="form-control" placeholder="RUC.." value="{{ old('ruc')}}">
    </div>
    <div class="form-group">
      <label for="reg_msp_hospital">Reg. MSP</label>
      <input type="text" name="reg_msp_hospital" class="form-control" placeholder="Registro Ministerio Salud Publica.." value="{{ old('reg_msp_hospital')}}">
    </div>
    <div class="form-group">
      <label for="direccion">Dirección</label>
      <input type="text" name="direccion" class="form-control" placeholder="Dirección.." value="{{ old('direccion')}}">
    </div>
    <div class="form-group">
      <label for="telefono">telefono</label>
      <input type="text" name="telefono" class="form-control" placeholder="Teléfono.." value="{{ old('telefono')}}">
    </div>
    <div class="form-group">
      <button class="btn btn-primary" type="submit">Guardar</button>
      <button class="btn btn-danger" type="reset">Cancelar</button>
    </div>
    {!!Form::close()!!}
  </div>
</div>
@endsection
