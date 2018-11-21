<!DOCTYPE html>
<html>
  <head>
      <meta charset="utf-8">
          <meta content="IE=edge" http-equiv="X-UA-Compatible">
              <title>
                  ADCamas | Administración de Camas Hospitalarias
              </title>
              <!-- Tell the browser to be responsive to screen width -->
              <!-- <script src=”https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js”></script>
<script src=”https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.21/jquery-ui.min.js”></script> -->
              <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
                  <script src="{{asset('js/jQuery-2.1.4.min.js')}}">
                  </script>
                  <!-- Bootstrap 3.3.5 -->
                  <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
                      <link href="{{asset('css/bootstrap-select.min.css')}}" rel="stylesheet">
                          <!-- Font Awesome -->
                          <link href="{{asset('css/font-awesome.css')}}" rel="stylesheet">
                              <!-- Theme style -->
                              <link href="{{asset('css/AdminLTE.min.css')}}" rel="stylesheet">
                                  <link href="{{asset('bower_components/Ionicons/css/ionicons.min.css')}}" rel="stylesheet">
                                      <link href="{{asset('dist/css/skins/_all-skins.min.css')}}" rel="stylesheet">
                                          <link href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet">
                                              <link href="{{asset('css/_all-skins.min.css')}}" rel="stylesheet">
                                                  <link href="{{asset('img/apple-touch-icon.png')}}" rel="apple-touch-icon">
                                                      <link href="{{asset('img/favicon.ico')}}" rel="shortcut icon">
                                                      </link>
                                                  </link>
                                              </link>
                                          </link>
                                      </link>
                                  </link>
                              </link>
                          </link>
                      </link>
                  </link>
              </meta>
          </meta>
      </meta>
  </head>
<body>
<div class="box-header with-border">
  <div class="box box-success box-solid">
              <div class="box-header with-border">
                <h3 class="box-title">
                Información de camas asignadas al area de : <strong> {{$cabecera->DESC_SUBUNIDAD}} </strong></h3>
                <div class="box-tools pull-right">
                <i class="fa fa-info-circle" aria-hidden="true"></i>
                </div>
                <!-- /.box-tools -->
              </div>
              <!-- /.box-header -->
              <div class="box-body">
                @foreach ($detalles as $det)
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">

                    <div class="box box-warning">
            <div class="box-header with-border">
              <h3 class="box-title">Código <label>{{$det->COD_CAMA}}</label></h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-bed" aria-hidden="true"></i>
                </button>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <h4>Paciente</h4>
              <h4><strong>{{$det->NOM_PACIENTE.' '.$det->NOM_PACIENTE1.' '.$det->APE_PACIENTE.' '.$det->APE_PACIENTE1}}</strong></h4>
            </div>
            <!-- /.box-body -->
          </div>


                </div>
                @endforeach
              </div>
              <!-- /.box-body -->
            </div>
                    </div>
</body>

</html>

<script>
    setTimeout('document.location.reload()',15000);

</script>
