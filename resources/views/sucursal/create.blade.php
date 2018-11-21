@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h3><i class="fa fa-plus-circle" aria-hidden="true"></i> Nueva Sucursal</h3>
    <ol class="breadcrumb">
      <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="/sucursal"><i class="fa fa-reply"></i> Sucursal</a></li>
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
    {!!Form::open(['route'=>'sucursal.store'])!!}
    {{Form::token()}}
    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
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
          <input type="text" name="descripcion" class="form-control" placeholder=" Ejm: Sucursal #"  value="{{ old('descripcion') }}">
        </div>
        <div class="form-group">
          <label for="direccion">Dirección</label>
          <input type="text" name="direccion" class="form-control" placeholder="Ejm: Eloy Alfaro y.." value="{{ old('direccion') }}">
        </div>
        <div class="form-group">
          <label for="telefono">Teléfono</label>
          <input type="text" name="telefono" class="form-control" placeholder="Ejm: 022997XXX.." value="{{ old('telefono') }}">
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
