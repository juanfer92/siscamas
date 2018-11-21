@extends ('layouts.admin')
@section ('contenido')
<div class="col-md-12">
    <div class="box box-success box-solid">
        <div class="box-header with-border">
            <i aria-hidden="true" class="fa fa-gavel">
            </i>
            <h3 class="box-title">
                Ver detalles de Auditoria
            </h3>
            <div class="box-tools pull-right">
            </div>
            <!-- /.box-tools -->
        </div>
        <!-- /.box-header -->
        <div class="box-body">
            <p>
                <strong>
                    Id de Log:
                </strong>
                {{$aut->ID_AUD}}
            </p>
            <p>
                <strong>
                    Id Usuario:
                </strong>
                {{$aut->ID_USUARIO}}
            </p>
            <p>
                <strong>
                    Nombre:
                </strong>
                {{$aut->USUARIO}}
            </p>
            <p>
                <strong>
                    Accion:
                </strong>
                {{$aut->ACCION}}
            </p>
            <p>
                <strong>
                    Objeto:
                </strong>
                {{$aut->OBJETO}}
            </p>
            <p>
                <strong>
                    Datos:
                </strong>
                {{$aut->SENTENCIA}}
            </p>
            <p>
                <strong>
                    Equipo:
                </strong>
                {{$aut->EQUIPO}}
            </p>
            <p>
                <strong>
                    Navegador:
                </strong>
                {{$aut->NAVEGADOR}}
            </p>
            <p>
                <strong>
                    Fecha de Cambios:
                </strong>
                {{$aut->FECHA}}
            </p>
        </div>
        <!-- /.box-body -->
    </div>
</div>
@endsection
