@extends ('layouts.admin')
@section ('contenido')
<div class="col-md-8">
    <div class="box box-success box-solid">
        <div class="box-header with-border">
            <h3 class="box-title">
                Detalles de Uso de Cama: {{$camahis->COD_CAMA}}
            </h3>
            <div class="box-tools pull-right">
            </div>
        </div>
        <div class="box-body">
            <p>
                <strong>
                    id:
                </strong>
                {{$camahis->ID_HCAMA}}
            </p>
            <p>
                <strong>
                    Código de Cama:
                </strong>
                {{$camahis->COD_CAMA}}
            </p>
            <p>
                <strong>
                    Paciente:
                </strong>
                {{$camahis->NOM_PACIENTE}} {{$camahis->APE_PACIENTE}}
            </p>
            <p>
                <strong>
                    IDN:
                </strong>
                {{$camahis->CI_PACIENTE}}
            </p>
            <p>
                <strong>
                    Fecha Ingreso:
                </strong>
                {{$camahis->FECHA_INGRESO}}
            </p>
            <p>
                <strong>
                    Fecha Egreso:
                </strong>
                {{$camahis->FECHA_EGRESO}}
            </p>
        </div>
        <!-- /.box-body -->
    </div>
</div>
@endsection
