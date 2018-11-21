@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h3><i class="fa fa-plus-circle" aria-hidden="true"></i> Nueva Encuesta</h3>
    <ol class="breadcrumb">
      <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="/encuesta"><i class="fa fa-reply"></i> Encuesta</a></li>
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
    {!!Form::open(['route'=>'encuesta.store'])!!}
    {{Form::token()}}
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
            <div class="form-group">

                        @foreach($preguntas as $ser)
                        <label value="{{$ser->ID_PREGUNTA}}">{{$ser->DESCRIPCION}}</label>
                        <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="{{$ser->ID_PREGUNTA}}" value="1">
                                <label class="form-check-label" for="inlineRadio1">1</label>
                              </div>
                              <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="{{$ser->ID_PREGUNTA}}" value="2">
                                <label class="form-check-label" for="inlineRadio2">2</label>
                              </div>
                        @endforeach
                  </div>
      <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr>
    <div class="form-group">
      <button class="btn btn-primary" type="submit">Guardar</button>
      <button class="btn btn-danger" type="reset">Cancelar</button>
    </div>
    </div>
</div>

    {!!Form::close()!!}

@endsection
