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
              <p> <strong>id: </strong> {{$tipocama->ID_TCAMA}} </p>
              <p> <strong>Descripción: </strong> {{$tipocama->DESC_TCAMA}} </p>
              <p> <strong>Estado: </strong> {{$tipocama->EST_TCAMA}} </p>
              <div class="form-group">
                <label for="imagen">Imagen  de Cama</label>
                @if(($tipocama->IMG_TCAMA)!="")
                  <img src="{{asset('imagenes/tipocama/'.$tipocama->IMG_TCAMA)}}" height="300px" width="300px">
                @endif
              </div>
            </div>
            <!-- /.box-body -->
          </div>

  </div>
</div>
@endsection
