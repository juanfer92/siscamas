@extends ('layouts.admin')
@section ('contenido')
<div class="col-md-8">
    <div class="box box-success box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Hospital</h3>

              <div class="box-tools pull-right">
                <!-- <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button> -->
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <p> <strong>Nombre: </strong> {{$hospital->NOM_HOSPITAL}} </p>
              <p> <strong>RUC: </strong> {{$hospital->RUC_HOSPITAL}} </p>
              <p> <strong>Registro Ministerio Salud: </strong> {{$hospital->REG_MSP_HOSPITAL}} </p>
              <p> <strong>Direccion: </strong> {{$hospital->DIR_HOSPITAL}} </p>
              <p> <strong>Teléfono: </strong> {{$hospital->TELF_HOSPITAL}} </p>
              
            </div>
            <!-- /.box-body -->
          </div>

  </div>
</div>
@endsection
