@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h1>
      <h2><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Editar Datos:  {{$role->name}}</h2>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="/roles"><i class="fa fa-reply"></i> Rol</a></li>
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

    {!!Form::model($role,['method'=>'PUT','route'=>['roles.update',$role->id]])!!}
    {{Form::token()}}

      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="form-group">
          <label for="name">Nombre</label>
          <input type="text" name="name" class="form-control" value="{{ $role->name }}" required>
        </div>
        <div class="form-group">
          <label for="slug">URL Amigable</label>
          <input type="text" name="slug" class="form-control" value="{{ $role->slug }}" required>
        </div>
        <div class="form-group">
          <label for="description">Descripcion</label>
          <input type="textarea" name="description" class="form-control" value="{{ $role->description }}" >
        </div>

        <div class="form-group">
          <h3>Permiso Especial</h3>
          <div class="form-group">
            <label>{{ Form::radio('special','all-access')}} Acceso total al sistema.</label>
            <label>{{ Form::radio('special','no-access')}} Ningun acceso al sistema.</label>
          </div>
        </div>
        <hr>
        <div class="form-group row">
          <h3>Lista de Permisos</h3>
          <ul>
            @foreach($permissions as $permission)
              <li>
                <label>
                  {{Form::checkbox('permissions[]',$permission->id, null)}}
                  {{$permission->name}}
                  <em>({{$permission->description ?: 'Sin Descripción'}})</em>

                </label>
              </li>
            @endforeach
          </ul>
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
