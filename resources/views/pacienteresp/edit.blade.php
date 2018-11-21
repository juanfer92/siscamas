@extends ('layouts.admin')
@section ('contenido')
<div class="row">
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    <h3>Editar Datos del Paciente</h3>
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
    {!!Form::model($pacientes,['method'=>'PUT','route'=>['paciente.update',$pacientes->ID_PACIENTE]])!!}
    {{Form::token()}}

<div class="row">
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    <div class="form-group">
      <label for="nombres">Nombres</label>
      <input style="text-transform: uppercase;" type="text" name="nombres" value="{{$pacientes->NOM_PACIENTE}}"  class="form-control" placeholder="Ejm: Juan Fernando">
    </div>
    <div class="form-group">
      <label for="apellidos">Apellidos</label>
      <input style="text-transform: uppercase;" type="text" name="apellidos" value="{{$pacientes->APE_PACIENTE}}" class="form-control" placeholder="Ejm: Criollo Tupiza">
    </div>
    <div class="form-group">
      <label for="ci">Documento de Indetidad</label>
      <input style="text-transform: uppercase;" type="text" name="ci" value="{{$pacientes->CI_PACIENTE}}" class="form-control" placeholder="Ejm: 17220XXXXX">
    </div>
    <div class="form-group">
      <label for="ci">Direccion</label>
      <input style="text-transform: uppercase;" type="text" name="direccion" value="{{$pacientes->DIR_PACIENTE}}" class="form-control" placeholder="Ejm: Zambiza, Amxx Nxx y Benaxxxx">
    </div>
    <div class="form-group">
      <label for="ci">Email</label>
      <input style="text-transform: lowercase;" type="text" name="email" value="{{$pacientes->EMAIL_PACIENTE}}" class="form-control" placeholder="Ejm: correo@dominio.com">
    </div>

    </div>
    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">

      <div class="form-group">
        <label for="ci">Nombre de Contacto 1</label>
        <input style="text-transform: uppercase;" type="text" name="contacto1" value="{{$pacientes->NOM_FAMILIAR1}}" class="form-control" placeholder="Ejm: Gustavo">
      </div>
      <div class="form-group">
        <label for="ci">Numero de Contacto 1</label>
        <input style="text-transform: uppercase;" type="text" name="telefono1" value="{{$pacientes->TELF_CONTACTO1}}" class="form-control" placeholder="Ejm: 099XXXXX">
      </div>
      <div class="form-group">
        <label for="ci">Nombre de Contacto 2</label>
        <input style="text-transform: uppercase;" type="text" name="contacto2" value="{{$pacientes->NOM_FAMILIAR2}}" class="form-control" placeholder="Ejm: Juan">
      </div>
      <div class="form-group">
        <label for="ci">Numero de Contacto 2</label>
        <input style="text-transform: uppercase;" type="text" name="telefono2" value="{{$pacientes->TELF_CONTACTO2}}" class="form-control" placeholder="Ejm: 099XXXXX">
      </div>
    </div>

</div>
    <div class="form-group">
      <button class="btn btn-primary" type="submit">Guardar</button>
      <button class="btn btn-danger" type="reset">Cancelar</button>
    </div>
    {!!Form::close()!!}

@endsection
