@extends ('layouts.admin')
@section ('contenido')
<div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <h3>
            Editar Datos del Paciente
        </h3>
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
{!!Form::model($pacientes,['method'=>'PUT','route'=>['paciente.update',$pacientes->ID_PACIENTE]])!!}
    {{Form::token()}}
<div class="form-group">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;">
            </hr>
            <label for="apellidos">
                Nombres y Apellidos
            </label>
            <br/>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <input class="form-control" name="nombres" placeholder="Ejm: Primer Nombre" type="text" value="{{$pacientes->NOM_PACIENTE}}">
                </input>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <input class="form-control" name="nombres1" placeholder="Ejm: Segundo Nombre" type="text" value="{{$pacientes->NOM_PACIENTE1}}">
                </input>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <input class="form-control" name="apellidos" placeholder="Ejm: Apellido Paterno" type="text" value="{{$pacientes->APE_PACIENTE}}">
                </input>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                <input class="form-control" name="apellidos1" placeholder="Ejm: Apellido Materno" type="text" value="{{$pacientes->APE_PACIENTE1}}">
                </input>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
        <label for="apellidos">
            DNI
        </label>
        <input class="form-control" name="CI_PACIENTE" placeholder="Cedula de Identidad" type="number" value="{{$pacientes->CI_PACIENTE}}">
        </input>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
        <label for="apellidos">
            Edad
        </label>
        <input class="form-control" name="edad" placeholder="La Edad es: 28" type="number" value="{{$pacientes->EDAD_PACIENTE}}">
        </input>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
        <label for="apellidos">
            Tipo de sangre
        </label>
        <select class="form-control " name="tsangre">
            <option disabled="disabled" selected="true">
                seleccione
            </option>
            <option value="O+">
                O+
            </option>
            <option value="O-">
                O-
            </option>
            <option value="A+">
                A+
            </option>
            <option value="A-">
                A-
            </option>
            <option value="B+">
                B+
            </option>
            <option value="B-">
                B-
            </option>
            <option value="AB+">
                AB+
            </option>
            <option value="AB-">
                AB-
            </option>
        </select>
    </div>
</div>
<br>
</br>
<hr style="width: 100%; color: #a7d129; height: 1px; background-color:#a7d129;">
</hr>
<div class="form-group ">
    <label for="direccion">
        Dirección
    </label>
    <input class="form-control" name="direccion" placeholder="Ejm: Zambiza, Amxx Nxx y Benaxxxx" value="{{$pacientes->DIR_PACIENTE}}">
    </input>
</div>
<div class="form-group ">
    <label for="apellidos">
        - Teléfono - Celular - Email
    </label>
    <div class="input-group">
        <input class="form-control" name="telefono" placeholder="Ejm: 022886XX" type="number" value="{{$pacientes->TEL_PACIENTE}}">
            <span class="input-group-addon">
                -
            </span>
            <input class="form-control" name="celular" placeholder="Ejm: 09981XXX" type="number" value="{{$pacientes->CEL_PACIENTE}}">
                <span class="input-group-addon">
                    -
                </span>
                <input class="form-control" name="email" placeholder="Ejm: correo@dominio.com" type="email" value="{{$pacientes->EMAIL_PACIENTE}}">
                </input>
            </input>
        </input>
    </div>
</div>
<hr style="width: 100%; color: #005792; height: 1px; background-color:#005792;">
    Contactos de Emergencia
</hr>
<div class="form-group ">
    <label for="apellidos">
        Nombres- Telefono
    </label>
    <div class="input-group">
        <input class="form-control" name="contacto1" placeholder="Ejm: Gustavo" type="text" value="{{$pacientes->NOM_FAMILIAR1}}">
            <span class="input-group-addon">
                -
            </span>
            <input class="form-control" name="telefono1" placeholder="Ejm: 099XXXXX" type="number" value="{{$pacientes->TELF_CONTACTO1}}">
            </input>
        </input>
    </div>
</div>
<div class="form-group ">
    <label for="apellidos">
        Nombres- Telefono
    </label>
    <div class="input-group">
        <input class="form-control" name="contacto2" placeholder="Ejm: Juan" type="text" value="{{$pacientes->NOM_FAMILIAR2}}">
            <span class="input-group-addon">
                -
            </span>
            <input class="form-control" name="telefono2" placeholder="Ejm: 099XXXXX" type="number" value="{{$pacientes->TELF_CONTACTO2}}">
            </input>
        </input>
    </div>
</div>
<hr style="width: 100%; color: #f30e5c; height: 1px; background-color:#f30e5c;"/>
<div class="form-group">
    <label>
        Reingreso
    </label>
    <div class="custom-control custom-radio">
        <input class="form-check-input" name="reingreso" required="" type="radio" value="Ingreso">
            <label class="form-check-label" for="customControlValidation3">
                si
            </label>
            <br>
                <input class="form-check-input" name="reingreso" required="" type="radio" value="no">
                    <label class="form-check-label" for="customControlValidation3">
                        no
                    </label>
                </input>
            </br>
        </input>
    </div>
</div>
<div class="form-group">
    <button class="btn btn-primary" type="submit">
        Guardar
    </button>
    <button class="btn btn-danger" type="reset">
        Cancelar
    </button>
</div>
{!!Form::close()!!}
    @endsection
    @section('scripts')
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js">
</script>
<script>
    $('#tags').autocomplete({
        source: "{{URL::to('autocomplete-searchsubunidad')}}",
    // minLength: 2,
    select:function(key,value)
    {
      console.log(value)
      $('#idsuc').val(value.item.id)
      $('#sucursal').val(value.item.sucursal)
      $('#iduni').val(value.item.iduni)
      $('#unidad').val(value.item.unidad)
      $('#idsubu').val(value.item.idsubu)
      $('#subunidad').val(value.item.subunidad)
    }
  });
</script>
<script>
    $( function() {
      $( "#datepicker" ).datepicker();
    } );
</script>
@endsection
