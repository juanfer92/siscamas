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

    {!!Form::model($pacientes,['method'=>'PUT','route'=>['paciente.update',$pacientes->ID_PACIENTE]])!!}
    {{Form::token()}}
<div class="row">
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
      <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;">Datos Personales</hr>
      <div class="form-group ">
        <label for="apellidos">Nombres</label>
        <div class="input-group">
          <input  uppercase;" type="text" name="nombres" class="form-control" value="{{$pacientes->NOM_PACIENTE}}">
          <span class="input-group-addon">-</span>
          <input  uppercase;" type="text" name="nombres1" class="form-control" value="{{$pacientes->NOM_PACIENTE1}}">
        </div>
      </div>
      <div class="form-group ">
        <label for="apellidos">Apellidos</label>
        <div class="input-group">
          <input  uppercase;" type="text" name="apellidos" class="form-control" value="{{$pacientes->APE_PACIENTE}}">
          <span class="input-group-addon">-</span>
          <input  uppercase;" type="text" name="apellidos1" class="form-control" value="{{$pacientes->APE_PACIENTE1}}">
        </div>
      </div>
      <div class="form-group ">
        <label for="apellidos">DNI - NACIONALIDAD</label>
        <div class="input-group">
          <input  uppercase;" type="text" name="ci" class="form-control" value="{{$pacientes->CI_PACIENTE}}">
          <span class="input-group-addon">-</span>
          <select name="nacionalidad" class="form-control ">
            <option value="Ecuatoriana" selected="">Ecuatoriana</option>
            <option value="Argentina">Argentina</option>
            <option value="Colombiana">Peruana</option>
            <option value="Colombiana">Colombiana</option>
            <option value="Colombiana">Venezolana</option>
            <option value="Colombiana">Otra</option>
          </select>
        </div>
      </div>

      <div class="form-group ">
        <label for="apellidos">Edad - Tipo de Sandre</label>
        <div class="input-group">
            <input  uppercase;" type="text" name="edad" class="form-control" value="{{$pacientes->EDAD_PACIENTE}}">
            <span class="input-group-addon">-</span>
            <select name="tsangre" class="form-control ">
              <option value="O+" selected="">O+</option>
              <option value="O-">O-</option>
              <option value="A+">A+</option>
              <option value="A-">A-</option>
              <option value="B+">B+</option>
              <option value="B-">B-</option>
              <option value="AB+">AB+</option>
              <option value="AB-">AB-</option>
            </select>
          </div>
        </div>
        <hr style="width: 100%; color: #a7d129; height: 1px; background-color:#a7d129;">Datos de Domicilio</hr>

        <div class="form-group ">
          <label for="apellidos">Dirección - Provincia - Canton</label>
          <div class="input-group">
            <input  uppercase;" type="text" name="direccion" class="form-control" value="{{$pacientes->DIR_PACIENTE}}">
            <span class="input-group-addon">-</span>
            <select name="provincia" class="form-control ">
              <option value="Pichincha" selected="">Pichincha</option>
            </select>
            <span class="input-group-addon">-</span>
            <select name="canton" class="form-control ">
              <option value="Quito" selected="">Quito</option>
            </select>
          </div>
        </div>
        <div class="form-group ">
          <label for="apellidos"> - Teléfono - Celular - Email </label>
          <div class="input-group">
            <input  lowercase;" type="text" name="telefono" class="form-control" value="{{$pacientes->TEL_PACIENTE}}">
            <span class="input-group-addon">-</span>
            <input  lowercase;" type="text" name="celular" class="form-control" value="{{$pacientes->CEL_PACIENTE}}">
            <span class="input-group-addon">-</span>
            <input  lowercase;" type="text" name="email" class="form-control" value="{{$pacientes->EMAIL_PACIENTE}}">
          </div>
        </div>
        <hr style="width: 100%; color: #005792; height: 1px; background-color:#005792;">Contactos de Emergencia</hr>
        <div class="form-group ">
          <label for="apellidos"> Nombres- Telefono  </label>
          <div class="input-group">
            <input uppercase;" type="text" name="contacto1" class="form-control" value="{{$pacientes->NOM_FAMILIAR1}}">
            <span class="input-group-addon">-</span>
            <input  uppercase;" type="text" name="telefono1" class="form-control" value="{{$pacientes->TELF_CONTACTO1}}">
          </div>
        </div>
        <div class="form-group ">
          <label for="apellidos"> Nombres- Telefono  </label>
          <div class="input-group">
            <input  uppercase;" type="text" name="contacto2" class="form-control" value="{{$pacientes->NOM_FAMILIAR2}}">
            <span class="input-group-addon">-</span>
            <input  uppercase;" type="text" name="telefono2" class="form-control" value="{{$pacientes->TELF_CONTACTO2}}">
          </div>
        </div>
        <hr style="width: 100%; color: #f30e5c; height: 1px; background-color:#f30e5c;"></hr>
        <!-- <div class="form-group">
          <input type="text" name="search" class="form-control" id="tags" placeholder="1722044XXX" required>
        </div>
        <div class="form-group ">
          <label for="apellidos">El paciente sera asignado a:  </label>
          <div class="input-group">
            <input type="hidden" name="idsuc" id="idsuc" disabled size="2"> Localización:<input type="text" name="sucursal" id="sucursal" disabled>
            <span class="input-group-addon">-</span>
            <input type="hidden" name="iduni" id="iduni" disabled size="2">Unidad:<input type="text" name="unidad" id="unidad" disabled size="35">
            <span class="input-group-addon">-</span>
            <input name="idsubu" type="hidden" id="idsubu"  size="2" required>Subunidad:<input type="text" name="subunidad" id="subunidad" disabled size="30">
          </div>
        </div> -->
      </div>
    </div>
  </div>
    <div class="form-group">
      <button class="btn btn-primary" type="submit">Guardar</button>
      <button class="btn btn-danger" type="reset">Cancelar</button>
    </div>
    {!!Form::close()!!}
    @endsection
    @section('scripts')
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
