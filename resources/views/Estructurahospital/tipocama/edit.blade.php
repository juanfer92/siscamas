@extends ('layouts.admin')
@section ('contenido')
<div class="row">
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    <h3>Editar Tipo de Cama:</h3>

    @if (count($errors)>0)
    <div class="alert alert-danger">
      <ul>
        @foreach ($errors->all() as $error)
        <li>{{$error}}</li>
        @endforeach
      </ul>
    </div>
    @endif

    {!!Form::model($tipocama,['method'=>'PATCH','route'=>['tipocama.update',$tipocama->ID_TCAMA],'files'=>'true'])!!}
    {{Form::token()}}
    <div class="form-group">
      <label for="descripcion">Descripción</label>
      <input type="text" name="descripcion" class="form-control" value="{{$tipocama->DESC_TCAMA}}">
    </div>
    <div class="form-group">
      <label for="imagen">Imagen Tipo de Cama</label>
      <input type="file" name="imagen" class="form-control">
      @if(($tipocama->IMG_TCAMA)!="")
        <img src="{{asset('imagenes/tipocama/'.$tipocama->IMG_TCAMA)}}" height="300px" width="300px">
      @endif
    </div>
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
