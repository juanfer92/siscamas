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
              <p> <strong>id: </strong> {{$sucursal->ID_SUCURSAL}} </p>
              <p> <strong>Descripción: </strong> {{$sucursal->DESCRIPCION}} </p>
              <p> <strong>Dirección: </strong> {{$sucursal->DIR_SUCURSAL}} </p>
              <p> <strong>Teléfono: </strong> {{$sucursal->TELF_SUCURSAL}} </p>
              <p> <strong>Estado: </strong> {{$sucursal->EST_SUCURSAL}} </p>

            </div>
            <!-- /.box-body -->
          </div>

  </div>
</div>
@endsection
