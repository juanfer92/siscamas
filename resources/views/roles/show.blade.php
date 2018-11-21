@extends ('layouts.admin')
@section ('contenido')
<div class="col-md-8">
    <div class="box box-success box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Roles</h3>

              <div class="box-tools pull-right">
                <!-- <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button> -->
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <p> <strong>Nombre: </strong> {{$rol->name}} </p>
              <p> <strong>Slug: </strong> {{$rol->slug}} </p>
              <p> <strong>Descripción:</strong> {{$rol->description}} </p>
            </div>
            <!-- /.box-body -->
          </div>

  </div>
</div>
@endsection
