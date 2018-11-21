  @extends ('layouts.admin')
  @section ('contenido')
  <section class="content-header">
    <h1>
      <h2><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Editar Datos:  {{$hospital->NOM_HOSPITAL}}</h2>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="/hospital"><i class="fa fa-reply"></i> hospital</a></li>
      <li class="active">Editar</li>
    </ol>
  </section>
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
      @if (count($errors)>0)
      <div class="alert alert-danger">
        <ul>
          @foreach ($errors->all() as $error)
          <li>{{$error}}</li>
          @endforeach
        </ul>
      </div>
      @endif

      {!!Form::model($hospital,['method'=>'PUT','route'=>['hospital.update',$hospital->ID_HOSPITAL]])!!}
      {{Form::token()}}
      <div class="form-group">
        <label for="nombre">Nombre</label>
        <input type="text" name="nombre" class="form-control" value="{{$hospital->NOM_HOSPITAL}}" placeholder="Nombre..">
      </div>
      <div class="form-group">
        <label for="ruc">RUC</label>
        <input type="text" name="ruc" class="form-control" value="{{$hospital->RUC_HOSPITAL}}" placeholder="RUC..">
      </div>
      <div class="form-group">
        <label for="reg_msp_hospital">Reg. MSP</label>
        <input type="text" name="reg_msp_hospital" class="form-control" value="{{$hospital->REG_MSP_HOSPITAL}}" placeholder="Registro Ministerio Salud Publica..">
      </div>
      <div class="form-group">
        <label for="direccion">Dirección</label>
        <input type="text" name="direccion" class="form-control" value="{{$hospital->DIR_HOSPITAL}}" placeholder="Dirección..">
      </div>
      <div class="form-group">
        <label for="telefono">telefono</label>
        <input type="text" name="telefono" class="form-control" value="{{$hospital->TELF_HOSPITAL}}" placeholder="Teléfono..">
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
