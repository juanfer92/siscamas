@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h3>
        <i aria-hidden="true" class="fa fa-plus-circle">
        </i> Nueva Asignacion de Cama
    </h3>
    <ol class="breadcrumb">
        <li>
            <a href="/home">
                <i class="fa fa-dashboard">
                </i>
                Inicio
            </a>
        </li>
        <li>
            <a href="/hospitalizacion">
                <i class="fa fa-reply">
                </i>
                Hopitalización
            </a>
        </li>
        <li class="active">
            Asignar Cama
        </li>
    </ol>
</section>
<div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        @if (count($errors)>0)
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                <li>
                    {{$error}}
                </li>
                @endforeach
            </ul>
        </div>
        @endif
    </div>
</div>
{!!Form::open(['route'=>'hospitalizacion.store'])!!} {{Form::token()}}
<div class="row">
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <div class="form-group">
            <label>
                Seleccione el Paciente:
            </label>
            <select class="form-control selectpicker" data-live-search="true" id="idpaciente" name="idpaciente">
                @foreach($pacientes as $pac)
                <option value="{{$pac->ID_PACIENTE}}">
                    {{$pac->NOM_PACIENTE.' '.$pac->NOM_PACIENTE1.' '.$pac->APE_PACIENTE.' '.$pac->APE_PACIENTE1.' '.$pac->CI_PACIENTE}}
                </option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
        <div class="form-group">
            <label>
                Seleccione el Patología de la Madre:
            </label>
            <select class="form-control selectpicker" data-live-search="true" id="idpatologiam" name="idpatologiam">
                @foreach($patologiam as $pm)
                <option value="{{$pm->ID_PATOLOGIA}}">
                    {{$pm->DESC_PATOLOGIA}}
                </option>
                @endforeach
            </select>
        </div>
    </div>
</div>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    <div class="form-group">
        <label>
            Tipo de Parto:
        </label>
        <label class="radio-inline">
            <input name="parto" type="radio" value="Normal" required>
                Parto Normal
            </input>
        </label>
        <label class="radio-inline">
            <input name="parto" type="radio" value="Cesarea" required>
                Cesarea
            </input>
        </label>
        <label class="radio-inline">
            <input name="parto" type="radio" value="Aborto" required>
                Aborto
            </input>
        </label>
    </div>
</div>
<!-- <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    <div class="form-group">
        <label>
            Numero de Hijos:
        </label>
        <label class="radio-inline">
            <input  name="optradio" type="radio">
                Uno
            </input>
        </label>
        <label class="radio-inline">
            <input  name="optradio" type="radio">
                Gemelos
            </input>
        </label>
        <label class="radio-inline">
            <input name="optradio" type="radio">
                Trillizos
            </input>
        </label>
    </div>
</div> -->
<hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="form-group">
        <label>
                Seleccione Camas Asignadas a la Madre y al Hijo
            </label>
        <select class="form-control selectpicker" data-live-search="true" id="pidcama" name="pidcama">
                @foreach($camas as $cam)
                <option value="{{$cam->ID_CAMA}}">
                    {{$cam->Ubicacion.' '.$cam->descripcion.' Codigo Cama:'.$cam->COD_CAMA}}
                </option>
                @endforeach
            </select>
    </div>
</div>
<strong>Datos de Hijos</strong>
</hr>
<!-- <div class="row"> -->
<div class="panel panel-primary">
    <div class="panel-body">
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
            <div class="form-group">
                <label>
                        Seleccione el Patología del Recién Nacido:
                    </label>
                <select class="form-control selectpicker" data-live-search="true" id="pidpatologian" name="pidpatologian">
                  <option value="" selected=true>
                      Seleccione
                  </option>
                        @foreach($patologian as $pm)
                        <option value="{{$pm->ID_PATOLOGIA}}">
                            {{$pm->DESC_PATOLOGIA}}
                        </option>
                        @endforeach
                    </select>
            </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
            <div class="form-group">
                <label>
                        Nacido Vivo:
                    </label>
                <label class="radio-inline">
                        <input value="Si" name="nvivo" type="radio">
                            Si
                        </input>
                    </label>
                <label class="radio-inline">
                        <input value="No" name="nvivo" type="radio">
                            No
                        </input>
                    </label>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
            <div class="form-group">
                <label>
                        Sexo:
                    </label>
                <label class="radio-inline">
                        <input value="Masculino" name="sexo" type="radio">
                            Masculino
                        </input>
                    </label>
                <label class="radio-inline">
                        <input value="Femenino" name="sexo" type="radio">
                            Femenino
                        </input>
                    </label><label class="radio-inline">
                        <input value="Ambiguo" name="sexo" type="radio">
                            Ambiguo
                        </input>
                    </label>
            </div>
        </div>
        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-12">
            <div class="form-group">
                <button class="btn btn-primary" id="bt_add" type="button">
                        agregar
                    </button>
            </div>
        </div>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="form-group">
                <label>
                        Observaciones:
                    </label>
                <textarea class="form-control" id="pobservacion" name="pobservacion" placeholder="Ingrese una observación que tenga para la asignacion de esta cama"
                    type="text">
                    </textarea>
            </div>
        </div>
    </div>
</div>
<!-- </div> -->
<div class="col-lg-11 col-md-11 col-sm-11 col-xs-12">
    <table class="table table-striped table-bordered table-condensed table-hover" id="detalles">
        <thead style="background-color: #A9D0F5 ">
            <th>
                Quitar
            </th>
            <th>
                Cama
            </th>
            <th>
                Patología
            </th>
            <th>
                Observaciónes
            </th>
        </thead>
        <tfoot>
            <th>
                Total Camas Asignadas:
            </th>
            <th>
                <h4 id="total">
                    <strong>
                        0
                    </strong>
                </h4>
            </th>
        </tfoot>
        <tbody>
        </tbody>
    </table>
</div>
<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" id="guardar">
    <div class="form-group">
        <input name="_token" type="hidden" value="{{csrf_token()}}" />
        <button class="btn btn-primary" type="submit">
            Guardar
        </button>
        <button class="btn btn-danger" type="reset">
            Cancelar
        </button>
    </div>
</div>
{!!Form::close()!!}
@endsection

@section('scripts')
<script>
    $(document).ready(function () {
  $('#bt_add').click('click',function(){
    agregar();
  });
});

  var cont=0;
  total=0;
  $("#guardar").hide();

   function agregar(){
    cantidad=1;

    idpatologian=$("#pidpatologian").val();
    patologia=$("#pidpatologian option:selected").text();

    idcama=$("#pidcama").val();
    cama=$("#pidcama option:selected").text();
    observacion=$("#pobservacion").val();

    if (idcama!="" && cantidad!="") {
      total=total+cantidad;
      var fila='<tr class"selected" id="fila'+cont+'"><td><button type="button" class="btn btn-warning" onclick="eliminar('+cont+');">x</button></td><td><input type="hidden" name="idcama[]" value="'+idcama+'">'+cama+'</td><td><input type="hidden" name="idpatologian[]" value="'+idpatologian+'">*</td><td><input type="text" name="observacion[]" value="'+observacion+'"></td></tr>';
      // var fila='<tr class"selected" id="fila'+cont+'"><td><button type="button" class="btn btn-warning" onclick="eliminar('+cont+');">x</button></td><td><input type="hidden" name="idcama[]" value="'+idcama+'">'+cama+'</td><td><input type="text" name="observacion[]" value="'+observacion+'"></td></tr>';
      cont++;
      limpiar();
       $("#total").html("# "+total);
      evaluar();
      $('#detalles').append(fila);
    }
    else
    {
      alert("Error al asignar las camas");
    }
   }

  function limpiar(){
      $("#pobservacion").val("");
  }

  function evaluar(){
    if (total>0) {
      $("#guardar").show();
    } else {
      $("#guardar").hide();
    }
  }

  function eliminar(index){
    total=total-cantidad;
    $("#total").html("# "+total);
    $("#fila" + index).remove();
    evaluar();
  }

</script>
@endsection
