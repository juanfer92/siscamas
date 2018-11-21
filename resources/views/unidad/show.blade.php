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
              <p> <strong>ID: </strong> {{$unidad->ID_UNIDAD}} </p>
                <p> <strong>Descripción: </strong> {{$unidad->DESC_UNIDAD}} </p>
                  <p> <strong>Estado: </strong> {{$unidad->EST_UNIDAD}} </p>


            </div>
            <!-- /.box-body -->
          </div>

  </div>
</div>
@endsection
