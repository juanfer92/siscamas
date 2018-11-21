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

<body class="hold-transition  sidebar-mini">
    <div class="wrapper">
        <header class="main-header">
            <!-- Logo -->
            <!-- <a class="logo" href="#">

                <span class="logo-mini">
                        <b>

                            <img alt="Log" height="30px" src="{{asset('imagenes/solologo.png')}}" width="30px"/>
                        </b>

                    </span>


                <span class="logo-lg">
                        <b>
                            <img alt="Log" height="30px" src="{{asset('imagenes/solologo.png')}}" width="30px"/>
                            ADCamas
                        </b>
                    </span>
            </a> -->

            {{--
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a class="sidebar-toggle" data-toggle="offcanvas" href="#" role="button">
                        <span class="sr-only">

                        </span>
                    </a>
    </div>
    </nav>--}}
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <!-- sidebar menu: : style can be found in sidebar.less -->

            <br>

            <img  height="250px" src="{{asset('imagenes/encuestas.png')}}" width="230px"/>
            <br>
            <br>
            <br>
            <center><img  height="100px" src="{{asset('imagenes/logo.png')}}" width="210px"/></center>
            <!-- /.sidebar -->
    </aside>
    <!--Contenido-->
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        {{--
                        <div class="box-header with-border">
                            <div class="box-tools pull-right">
                            </div>
                        </div>
                        --}}
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    {!!Form::model($pacientes,['method'=>'PUT','route'=>['encuesta.update',$pacientes->ID_PACIENTE]])!!} {{Form::token()}} @php($con
                                    = 0)
                                    <h3>ENCUESTA DE OPINIÓN SOBRE LA CALIDAD DE LA ATENCIÓN HOSPITALARIA</h3>
                                    <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr>
                                    <p>
                                        Estimada Sra.: <label> {{$pacientes->NOM_PACIENTE}} {{$pacientes->NOM_PACIENTE1}} {{$pacientes->APE_PACIENTE}} {{$pacientes->APE_PACIENTE1}}</label>
                                        <br> Los trabajadores del Hospital, estamos interesados en conocer su opinión sobre
                                        la calidad de los servicios ofrecidos durante su paso por el mismo, le agradeceríamos
                                        que rellenara esta encuesta que será absolutamente confidencial.
                                        <br> {{-- --}}
                                        <input type="hidden" name="idpaciente" value="{{$pacientes->ID_PACIENTE}}">
                                    </p>
                                    <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr>

                                    @foreach ($preguntas as $pre)
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <input type="hidden" name="idpregunta[{{$con}}]" value="{{$pre->ID_PREGUNTA}}">
                                        <label>{{$pre->DESCRIPCION}}</label> {{--
                                        <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr> --}}
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <label class="custom-control custom-radio">
                                                                    <input required  name="valor[{{$con}}]" type="radio" value="Buena" class="custom-control-input">
                                                                    <span class="custom-control-indicator"></span>
                                                                    <span class="custom-control-description">Buena</span>
                                                                    <img alt="Log" height="35px" src="{{asset('imagenes/buena.png')}}" width="45px"/>
                                                                  </label>
                                        <label class="custom-control custom-radio">
                                                                        <input required  name="valor[{{$con}}]" type="radio" value="Regular" class="custom-control-input">
                                                                        <span class="custom-control-indicator"></span>
                                                                        <span class="custom-control-description">Regular</span>
                                                                        <img alt="Log" height="35px" src="{{asset('imagenes/regular.png')}}" width="45px"/>
                                                                      </label>
                                        <label class="custom-control custom-radio">
                                                                            <input required name="valor[{{$con}}]" type="radio" value="Mala" class="custom-control-input">
                                                                            <span class="custom-control-indicator"></span>
                                                                            <span class="custom-control-description">Mala</span>
                                                                            <img alt="Log" height="35px" src="{{asset('imagenes/mala.png')}}" width="45px"/>
                                                                          </label>
                                        <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr>
                                    </div>
                                    @php ($con++) @endforeach
                                    <input type="hidden" name="tope" value="{{$con}}">
                                    <div class="form-group">
                                        <button class="btn btn-primary" type="submit">Guardar</button>
                                        <button class="btn btn-danger" type="reset">Cancelar</button>
                                    </div>
                                    {!!Form::close()!!}
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </section>
    </div>
    <!-- /.col -->
    </div>
    <!-- /.row -->
</body>

</html>
<!-- /.content -->
<!-- /.content-wrapper -->
<!--Fin-Contenido-->
<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <b>
            Version
        </b> 0.0.1
    </div>
    <strong>
        Copyright ©
        <a href="#">
            Juan Criollo
        </a>
        .
    </strong> All rights reserved.
</footer>
{{--
<script>
    function cerrar() {
        $("body").html('<div alignt="center"><center><h1>Encuesta Enviada Exitosamente</h1></center><br><br><h3>Le agradecemos su interés para que mejoremos nuestro trabajo, con la seguridad de que será en beneficio de todos.</h3></div>'); //Marca nuevo contenido con un mensaje que se envio exitosamente

        setTimeout(function(){
            window.close();
        },9000); //Dejara un tiempo de 3 seg para que el usuario vea que se envio el formulario correctamente

    }

</script>
--}}
<!-- jQuery 2.1.4 -->
<script src="{{asset('js/jQuery-2.1.4.min.js')}}">

</script>
@stack('scripts')
<!-- @stack('scripts') -->
<!-- Bootstrap 3.3.5 -->
<script src="{{asset('js/bootstrap.min.js')}}">

</script>
<script src="{{asset('js/bootstrap-select.min.js')}}">

</script>
<!-- AdminLTE App -->
<script src="{{asset('js/app.min.js')}}">

</script>
<script src="{{asset('js/JsBarcode.all.min.js')}}">

</script>
<script src="{{asset('js/jquery.PrintArea.js')}}">

</script>
@stack('scripts') @yield('scripts')
