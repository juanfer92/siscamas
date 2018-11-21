@extends ('layouts.admin')
@section ('contenido')
<div class="col-md-12">
    <h3><i class="fa fa-heartbeat" aria-hidden="true"></i>&nbsp Datos del Paciente</h3>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
        <div class="form-group">
            <label for="proveedor">Nombres: </label>
            <p>{{$hospitalizado->NOM_PACIENTE.' '.$hospitalizado->NOM_PACIENTE1}}</p>
        </div>
    </div>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
        <div class="form-group">
            <label for="proveedor">Apellidos: </label>
            <p>{{$hospitalizado->APE_PACIENTE.' '.$hospitalizado->APE_PACIENTE1}}</p>
        </div>
    </div>
    <div class="col-lg-2 col-sm-2 col-md-2 col-xs-12">
        <div class="form-group">
            <label for="proveedor">IDN: </label>
            <p>{{$hospitalizado->CI_PACIENTE}}</p>
        </div>
    </div>
    <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
        <div class="form-group">
            <label for="proveedor">UUID: </label>
            <p>{{$hospitalizado->uuid}}</p>
        </div>
    </div>
    <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
        <div class="form-group">
            <label for="proveedor">Direccion: </label>
            <p>{{$hospitalizado->DIR_PACIENTE}}</p>
        </div>
    </div>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
        <div class="form-group">
            <label for="proveedor">Telefono: </label>
            <p>{{$hospitalizado->TEL_PACIENTE}}</p>
        </div>
    </div>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
        <div class="form-group">
            <label for="proveedor">Celular: </label>
            <p>{{$hospitalizado->CEL_PACIENTE}}</p>
        </div>
    </div>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
        <div class="form-group">
            <label for="proveedor">Email:: </label>
            <p>{{$hospitalizado->EMAIL_PACIENTE}}</p>
        </div>
    </div>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
        <div class="form-group">
            <label for="proveedor">Patología: </label>
            <p>{{$hospitalizado->DESC_PATOLOGIA}}</p>
        </div>
    </div>
    <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
        <div class="form-group">
            <label for="proveedor">Estado Hospitalización: </label>
            <p>{{$hospitalizado->EST_HOSPITALIZACION}}</p>
        </div>
    </div>
    <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr>
    <h4> <i class="fa fa-bed" aria-hidden="true"></i>&nbsp Camas Asignadas</h4>
</div>
<div class="row">
    <div class="panel panel-primary">
        <div class="panel-body">

            <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                <table id="detalles" class="table table-striped table-bordered table-condensed table-hover">
                    <thead style="background-color:#A9D0F5">

                        <th>Código Cama</th>
                        <th>Descripción</th>
                  
                    </thead>
                    <tfoot>
                        <th></th>
                        <th></th>
                    </tfoot>
                    <tbody>
                        @foreach($detalles as $det)
                        <tr>
                            <td>{{$det->COD_CAMA}}</td>
                            <td>{{$det->DESC_TCAMA}}</td>

                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
@endsection
