@extends ('layouts.admin')
@section ('contenido')

<div class="row">
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    <h3><i class="fa fa-hospital-o" aria-hidden="true"></i> Ingreso de Paciente </h3>

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
    {!!Form::open(['route'=>'paciente.store'])!!}
    {{Form::token()}}
    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <div class="form-group">
          <label for="nombres">Nombres</label>
          <input style="text-transform: uppercase;" type="text" name="nombres" class="form-control" placeholder="Ejm: Juan Fernando">
        </div>
        <div class="form-group">
          <label for="apellidos">Apellidos</label>
          <input style="text-transform: uppercase;" type="text" name="apellidos" class="form-control" placeholder="Ejm: Criollo Tupiza">
        </div>
        <div class="form-group">
          <label for="ci">Documento de Indetidad</label>
          <input style="text-transform: uppercase;" type="text" name="ci" class="form-control" placeholder="Ejm: 17220XXXXX">
        </div>
        <div class="form-group">
          <label for="ci">Direccion</label>
          <input style="text-transform: uppercase;" type="text" name="direccion" class="form-control" placeholder="Ejm: Zambiza, Amxx Nxx y Benaxxxx">
        </div>
        <div class="form-group">
          <label for="ci">Email</label>
          <input style="text-transform: lowercase;" type="text" name="email" class="form-control" placeholder="Ejm: correo@dominio.com">
        </div>

        </div>
        <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">

          <div class="form-group">
            <label for="ci">Nombre de Contacto 1</label>
            <input style="text-transform: uppercase;" type="text" name="contacto1" class="form-control" placeholder="Ejm: Gustavo">
          </div>
          <div class="form-group">
            <label for="ci">Numero de Contacto 1</label>
            <input style="text-transform: uppercase;" type="text" name="telefono1" class="form-control" placeholder="Ejm: 099XXXXX">
          </div>
          <div class="form-group">
            <label for="ci">Nombre de Contacto 2</label>
            <input style="text-transform: uppercase;" type="text" name="contacto2" class="form-control" placeholder="Ejm: Juan">
          </div>
          <div class="form-group">
            <label for="ci">Numero de Contacto 2</label>
            <input style="text-transform: uppercase;" type="text" name="telefono2" class="form-control" placeholder="Ejm: 099XXXXX">
          </div>
        </div>

    </div>
    <div class="form-group">
      <button class="btn btn-primary" type="submit">Guardar</button>
      <button class="btn btn-danger" type="reset">Cancelar</button>
    </div>
    {!!Form::close()!!}
@stop
