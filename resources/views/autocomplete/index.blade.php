@extends ('layouts.admin')
@section ('contenido')
<div class="row">
    <div class="panel-body">
        <label for="nombre">
            Buscar por numero de cedula:
        </label>
        <input class="form-control" id="tags" name="search" placeholder="1722044XXX" type="text">
        </input>
    </div>
    <div class="box-header with-border">
        <div class="form-group">
            <label for="nombre">
                Identificador del Sistema:
            </label>
            <input disabled="" id="id_pac" name="nombre" type="text">
            </input>
        </div>
        <div class="form-group">
            <label for="nombre">
                Nombres:
            </label>
            <input disabled="" id="NOM_PACIENTE" name="nombre" type="text">
                <input disabled="" id="APE_PACIENTE" name="apellido" type="text">
                </input>
            </input>
        </div>
        <div class="form-group">
            <label for="nombre">
                Cedula Identidad:
            </label>
            <input disabled="" id="CI_PACIENTE" name="ci" type="text">
            </input>
        </div>
    </div>
</div>
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
      $('#id_pac').val(value.item.id)
      $('#NOM_PACIENTE').val(value.item.NOM_PACIENTE)
      $('#APE_PACIENTE').val(value.item.APE_PACIENTE)
      $('#CI_PACIENTE').val(value.item.CI_PACIENTE)
      //$('#NOM_PACIENTE').val(value.item.NOM_PACIENTE)
      //alert(value.item.value);
    }
  })
</script>
@endsection
