@extends ('layouts.admin')
@section ('contenido')
<div class="col-md-12">
    <div class="box box-success box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Encuesta Realizada</h3>

              <div class="box-tools pull-right">
                <!-- <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button> -->
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->


            <div class="box-body">
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
              <h5> <strong>NOMBRE DEL ENCUESTADO</strong></h5>
                <h4>{{$cabecera->NOM_PACIENTE.' '.$cabecera->NOM_PACIENTE1.' '.$cabecera->APE_PACIENTE.' '.$cabecera->APE_PACIENTE1}}</h4>
                <label>IDN</label>      {{$cabecera->CI_PACIENTE}}
                <br>
                <label>IDENTIFICACIÓN EN EL SISTEMA:</label>      {{$cabecera->uuid}}
              </div>
              <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <h5> <strong>FECHA DE ENCUESTA</strong></h5>
                 <h4>{{$cabecera->updated_at}}</h4>
              </div>
              <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr>
              @foreach ($detalles as $pre)
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <h5><i class="fa fa-question" aria-hidden="true"></i> &nbsp Pregunta:</h5>
                  <label>{{$pre->DESCRIPCION}}</label>
                <h5><i class="fa fa-bullhorn" aria-hidden="true"></i> &nbsp Respuesta: </h5>
                  <label>{{$pre->valor}}</label>
                  <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr>
              </div>
              @endforeach


            </div>
            <!-- /.box-body -->
          </div>

  </div>
</div>
@endsection
