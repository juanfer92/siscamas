@extends ('layouts.admin')
@section ('contenido')
<!-- <a href="{{ route('sucursal.index') }}" align="right"> <button class="btn btn-outline-dark">Regresar</button> </a> -->
<div class="row">
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    <h3>Nueva Sucursal</h3>
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
          <input type="text" name="descripcion" class="form-control" placeholder=" Ejm: Sucursal #" required>
        </div>
        <div class="form-group">
          <label for="direccion">Dirección</label>
          <input type="text" name="direccion" class="form-control" placeholder="Ejm: Eloy Alfaro y..">
        </div>
        <div class="form-group">
          <label for="telefono">Teléfono</label>
          <input type="text" name="telefono" class="form-control" placeholder="Ejm: 022997XXX..">
        </div>
        <div class="form-group">
          <label>Matriz/Sucursal</label>
            <select name="tipo" class="form-control">
              <option value="Sucursal">Sucursal</option>
              <option value="Matriz">Matriz</option>
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
