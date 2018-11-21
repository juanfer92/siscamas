@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
  <h3><i class="fa fa-plus-circle" aria-hidden="true"></i> Nuevo Usuario</h3>
  <ol class="breadcrumb">
    <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
    <li><a href="/users"><i class="fa fa-reply"></i> Usuarios</a></li>
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
{!!Form::open(['route'=>'users.store'])!!}
{{Form::token()}}
<div class="row">
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    <div class="form-group row">
      <label for="name" class="col-md-4 col-form-label text-md-right">Nombre y Apellido</label>

      <div class="col-md-6">
        <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus>

        @if ($errors->has('name'))
        <span class="invalid-feedback" role="alert">
          <strong>{{ $errors->first('name') }}</strong>
        </span>
        @endif
      </div>
    </div>

    <div class="form-group row">
      <label for="email" class="col-md-4 col-form-label text-md-right">Correo Electrónico</label>

      <div class="col-md-6">
        <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

        @if ($errors->has('email'))
        <span class="invalid-feedback" role="alert">
          <strong>{{ $errors->first('email') }}</strong>
        </span>
        @endif
      </div>
    </div>

    <div class="form-group row">
      <label for="password" class="col-md-4 col-form-label text-md-right">Password</label>

      <div class="col-md-6">
        <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

        @if ($errors->has('password'))
        <span class="invalid-feedback" role="alert">
          <strong>{{ $errors->first('password') }}</strong>
        </span>
        @endif
      </div>
    </div>
    <div class="form-group row">
      <label for="password-confirm" class="col-md-4 col-form-label text-md-right">Confirmar Password</label>

      <div class="col-md-6">
        <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
      </div>
    </div>
    <div class="form-group row">
      <label for="roles" class="col-md-4 col-form-label text-md-right">Seleccione Roles Asignados</label>
      <ul>
        @foreach($roles as $rol)
        <li>
          <label>
            {{Form::checkbox('roles[]',$rol->id, null)}}
            {{$rol->name}}
            <!-- <em>{{$rol->description ?: 'Sin Descripción'}}</em> -->
          </label>
        </li>
        @endforeach
      </ul>
    </div>
  </div>
</div>
<div class="row">
<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
  <label>Seleccione la Sucursal a la que pertenece la unidad</label>
  <select name="idsucursal" class="form-control selectpicker" data-live-search="true">
    @foreach($sucursales as $suc)
    <option value="{{$suc->ID_SUCURSAL}}">{{$suc->DESCRIPCION}} - {{$suc->DIR_SUCURSAL}}</option>
    @endforeach
  </select>
</div>
</div>
<div class="row">
  <div class="form-group">
    <button class="btn btn-primary" type="submit">Guardar</button>
    <button class="btn btn-danger" type="reset">Cancelar</button>
  </div>
</div>

  {!!Form::close()!!}

@endsection
