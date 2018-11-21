@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h1>
      <h2><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Editar Datos:  {{$sucursal->DESCRIPCION}}</h2>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="/sucursal"><i class="fa fa-reply"></i> Sucursal</a></li>
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

    {!!Form::model($sucursal,['method'=>'PUT','route'=>['sucursal.update',$sucursal->ID_SUCURSAL]])!!}
    {{Form::token()}}
    <div class="form-group">
      <label>Hospital</label>
      <select name="idhospital" class="form-control selectpicker" data-live-search="true">
          @foreach($hospitales as $hos)
          <option value="{{$hos->ID_HOSPITAL}}">{{$hos->NOM_HOSPITAL}}</option>
          @endforeach
      </select>
    </div>
    <div class="form-group">
      <label for="descripcion">Descripción</label>
      <input type="text" name="descripcion" class="form-control" value="{{$sucursal->DESCRIPCION}}" placeholder=" Ejm: Sucursal #">
    </div>
    <div class="form-group">
      <label for="direccion">Dirección</label>
      <input type="text" name="direccion" class="form-control" value="{{$sucursal->DIR_SUCURSAL}}" placeholder="Ejm: Eloy Alfaro y..">
    </div>
    <div class="form-group">
      <label for="telefono">Teléfono</label>
      <input type="text" name="telefono" class="form-control" value="{{$sucursal->TELF_SUCURSAL}}" placeholder="Ejm: 022997XXX..">
    </div>
    <!-- <div class="form-group">
      <label>Tipo</label>
      <select name="tipo" class="form-control">
        <option value="Sucursal">Sucursal</option>
        <option value="Matriz">Matriz</option>
      </select>
    </div> -->
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
