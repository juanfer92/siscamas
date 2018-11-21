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

    {!!Form::model($patologia,['method'=>'PUT','route'=>['patologia.update',$patologia->ID_PATOLOGIA]])!!}
    {{Form::token()}}
<div class="row">
  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <!-- <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr> -->
    <div class="form-group">
      <label for="nombre">Descripcion de Patología:</label>
      <input type="text" name="descripcion" class="form-control" placeholder="Patología.." value="{{$patologia->DESC_PATOLOGIA}}">
    </div>
    <div class="form-group">
      <label for="nombre">Sintomas:</label>
      <textarea type="text" name="sintoma" class="form-control">{{$patologia->SINTOMA}}</textarea>
    </div>
    <div class="form-group">
      <label for="nombre">Diagnóstico:</label>
      <textarea type="text" name="diagnostico" class="form-control" placeholder="Diagnóstico..">{{$patologia->DIAGNOSTICO}}</textarea>
    </div>
    <div class="form-group">
      <label for="nombre">Procedimiento:</label>
      <textarea type="text" name="procedimiento" class="form-control" placeholder="Procedimiento..">{{$patologia->PROCEDIMIENTO}}</textarea>
    </div>
    <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;">
    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
        <div class="form-group">
            <label>
                Asginado a:
            </label>
            <label class="radio-inline">
                <input value="Maternal" name="tpaciente" type="radio">
                    Maternal
                </input>
            </label>
            <label class="radio-inline">
                <input value="Neonato" name="tpaciente" type="radio">
                    Neonato
                </input>
            </label>
        </div>
    </div>
    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
        <div class="form-group">
            <label>
                Estado:
            </label>
            <label class="radio-inline">
                <input value="Activa" name="estado" type="radio">
                    Activa
                </input>
            </label>
            <label class="radio-inline">
                <input value="Inactiva" name="estado" type="radio">
                    Inactiva
                </input>
            </label>
        </div>
    </div>
  </div>


    <div class="form-group">
      <button class="btn btn-primary" type="submit">Guardar</button>
      <button class="btn btn-danger" type="reset">Cancelar</button>
    </div>
      </div>
    {!!Form::close()!!}
    @endsection
