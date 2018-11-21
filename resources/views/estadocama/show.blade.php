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
              <p> <strong>id: </strong> {{$estcamas->ID_ESTCAM}} </p>
              <p> <strong>Descripción: </strong> {{$estcamas->DESC_ESTCAM}} </p>
              <p> <strong>Estado: </strong> {{$estcamas->EST_ESTCAMA}} </p>
              <div class="form-group">
                <label for="imagen">Imagen Estado de Cama</label>
                <br>
                @if(($estcamas->IMG_ESTCAMA)!="")
                  <img src="{{asset('imagenes/estadocama/'.$estcamas->IMG_ESTCAMA)}}" height="50px" width="50px">
                @endif
              </div>

            </div>
            <!-- /.box-body -->
          </div>

  </div>
</div>
@endsection
