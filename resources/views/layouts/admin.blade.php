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
    <link href="{{asset('css/toastr.min.css')}}" rel="stylesheet" />
    <script src="{{asset('js/toastr.min.js')}}"></script>

    <script src="js/sweetalert.min.js"></script>
    <script src="{{asset('js/sweetalert.min.js')}}"></script>

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

<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
        <header class="main-header">
            <!-- Logo -->
            <a class="logo" href="/home">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini">
                        <b>
                            <!-- AD -->
                            <img alt="Log" height="30px" src="{{asset('imagenes/solologo.png')}}" width="30px"/>
                        </b>
                        <!-- C -->
                    </span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg">
                        <b>
                            <img alt="Log" height="30px" src="{{asset('imagenes/solologo.png')}}" width="30px"/>
                            ADCamas
                        </b>
                    </span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a class="sidebar-toggle" data-toggle="offcanvas" href="#" role="button">
                        <span class="sr-only">
                            Navegación
                        </span>
                    </a>
                <!-- Navbar Right Menu -->
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        @guest
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('login') }}">
                                    Iniciar Sesión
                                </a>
                        </li>
                        @else
                        <li class="dropdown user user-menu">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    {{--
                                    <img alt="User Image" class="user-image" src="dist/img/user2-160x160.jpg">
                                        --}}
                                        <span class="hidden-xs">
                                            {{ Auth::user()->name }}
                                        </span>
                                    </img>
                                </a>
                            <ul class="dropdown-menu">
                                <li class="user-footer">
                                    <!-- <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Sign out</a>
                </div> -->
                                    <div>
                                        <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                  document.getElementById('logout-form').submit();">
                                                <i aria-hidden="true" class="fa fa-sign-out">
                                                </i>
                                                Cerrar Sesión
                                            </a>
                                        <form action="{{ route('logout') }}" id="logout-form" method="POST" style="display: none;">
                                            @csrf
                                        </form>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        @endguest
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
    @include('sweetalert::alert')
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu">
                    <li class="header">
                    </li>
                    <li>
                        <a href="/home">
                                <i class="fa fa-tachometer">
                                </i>
                                <span>
                                    Dashboard
                                </span>
                                <!-- <span>Administración Camas</span> -->
                                <!-- <small class="label pull-right bg-red">PDF</small> -->
                            </a>
                    </li>
                    <li class="treeview">
                        <a href="#">
                            <!-- -->
                            <i class="fa fa-laptop">
                                </i>
                            <span>
                                    Administración
                                </span>
                            <i class="fa fa-angle-left pull-right">
                                </i>
                        </a>
                        <ul class="treeview-menu">
                            @can('hospital.index')
                            <li>
                                <a href="{{route('hospital.index')}}">
                                        <i class="fa fa-hospital-o" style="color:#f9f9f9"; aria-hidden="true"></i>
                                        Hospital
                                    </a>
                            </li>
                            @endcan @can('sucursal.index')
                            <li>
                                <a href="{{route('sucursal.index')}}">
                                        <i class="fa fa-asterisk" style="color:#7acfdf"; aria-hidden="true"></i>
                                        Sucursales
                                    </a>
                            </li>
                            @endcan
                            <li class="treeview">
                                <a href="#">
                                        <i class="fa fa-pencil-square-o" style="color:#f47645"; aria-hidden="true"></i>
                                        Encuestas
                                        <span class="pull-right-container">
                                            <i class="fa fa-angle-left pull-right">
                                            </i>
                                        </span>
                                    </a>
                                <ul class="treeview-menu">
                                    @can('encuesta.index')
                                    <li>
                                        <a href="{{route('encuesta.index')}}">
                                                <i class="fa fa-check-circle" style="color:#45b7b8"; aria-hidden="true"></i>
                                                 Encuestas Pendientes
                                            </a>
                                    </li>
                                    @endcan @can('encuestarealizada.index')
                                    <li>
                                        <a href="{{route('encuestarealizada.index')}}">
                                            <i class="fa fa-check-circle" style="color:#45b7b8"; aria-hidden="true"></i>
                                             Encuestas Realizadas
                                        </a>
                                    </li>
                                    @endcan @can('servicio.index')
                                    <li>
                                        <a href="{{route('servicio.index')}}">
                                                <i class="fa fa-puzzle-piece" style="color:#ffcd3c"; aria-hidden="true"></i>
                                                Servicios Hospitalarios
                                            </a>
                                    </li>
                                    @endcan @can('servicio.index')
                                    <li>
                                        <a href="{{route('pregunta.index')}}">
                                                <i class="fa fa-question-circle" style="color:#35d0ba"; aria-hidden="true"></i>
                                                Preguntas de Servicios
                                            </a>
                                    </li>
                                    @endcan
                                </ul>
                            </li>
                            @can('patologia.index')
                            <li>
                                <a href="{{route('patologia.index')}}">
                                        <i class="fa fa-life-ring" style="color:#005792"; aria-hidden="true"></i>
                                        Patologias
                                    </a>
                            </li>
                            @endcan
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                                <i class="fa fa-lock" aria-hidden="true"></i>
                                <span>
                                    Acceso
                                </span>
                                <i class="fa fa-angle-left pull-right">
                                </i>
                            </a>
                        <ul class="treeview-menu">
                            @can('users.index')
                            <li>
                                <a href="{{route('users.index')}}">
                                      <i class="fa fa-users" style="color:#a7d129"; aria-hidden="true"></i>
                                        Usuarios
                                    </a>
                            </li>
                            @endcan @can('roles.index')
                            <li>
                                <a href="{{route('roles.index')}}">
                                        <i class="fa fa-road" style="color:#0c907d"; aria-hidden="true"></i>
                                        Roles
                                    </a>
                            </li>
                            @endcan @can('auditoria.index')
                            <li>
                                <a href="{{route('auditoria.index')}}">
                                        <i class="fa fa-user-secret" style="color:#a1c45a"; aria-hidden="true"></i>
                                        Auditoria
                                    </a>
                            </li>
                            @endcan
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                                <i class="fa fa-bed">
                                </i>
                                <span>
                                    Parametrización Camas
                                </span>
                                <i class="fa fa-angle-left pull-right">
                                </i>
                            </a>
                        <ul class="treeview-menu">
                            @can('unidad.index')
                            <li>
                                <a href="{{route('unidad.index')}}">
                                        <i class="fa fa-circle-o text-aqua">
                                        </i>
                                        Unidades
                                    </a>
                            </li>
                            @endcan @can('subunidad.index')
                            <li>
                                <a href="{{route('subunidad.index')}}">
                                        <i class="fa fa-circle-o text-yellow">
                                        </i>
                                        Subunidades
                                    </a>
                            </li>
                            @endcan @can('tipocama.index')
                            <li>
                                <a href="{{route('tipocama.index')}}">
                                        <i class="fa fa-circle-o text-red">
                                        </i>
                                        Tipo de Cama
                                    </a>
                            </li>
                            @endcan @can('estadocama.index')
                            <li>
                                <a href="{{route('estadocama.index')}}">
                                        <i class="fa fa-circle-o text-aqua">
                                        </i>
                                        Estado de Cama
                                    </a>
                            </li>
                            @endcan @can('cama.index')
                            <li>
                                <a href="{{route('cama.index')}}">
                                        <i class="fa fa-circle-o text-yellow">
                                        </i>
                                        Crear Cama
                                    </a>
                            </li>
                            @endcan
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#">
                                <i class="fa fa-plus-square">
                                </i>
                                <span>
                                    Administración Camas
                                </span>
                                <i class="fa fa-angle-left pull-right">
                                </i>
                            </a>
                        <ul class="treeview-menu">
                            @can('paciente.index')
                            <li>
                                <a href="{{route('paciente.index')}}">
                                        <i class="fa fa-circle-o text-aqua">
                                        </i>
                                        Registro de Pacientes
                                    </a>
                            </li>
                            @endcan @can('hospitalizacion.index')
                            <li>
                                <a href="{{route('hospitalizacion.index')}}">
                                        <i class="fa fa-circle-o text-red">
                                        </i>
                                        Ingreso-Egreso
                                    </a>
                            </li>
                            @endcan @can('transferencia.index')
                            <li>
                                <a href="{{route('transferencia.index')}}">
                                        <i class="fa fa-circle-o text-red">
                                        </i>
                                        Transferencia
                                    </a>
                            </li>
                            @endcan @can('camahis.index')
                            <li>
                                <a href="{{route('camahis.index')}}">
                                        <i class="fa fa-circle-o text-yellow">
                                        </i>
                                        Historial de Camas
                                    </a>
                            </li>
                            @endcan

                        </ul>
                    </li>
                    @can('reportes.index')
                    <li>
                        <a href="{{route('reportes.index')}}">
                                <i class="fa fa-info-circle">
                                </i>
                                <span>
                                    Informes
                                </span>
                            </a>
                    </li>
                    @endcan @can('infocamas.index')
                    <li>
                        <a href="{{route('infocamas.index')}}">
                                <i class="fa fa-desktop" aria-hidden="true"></i>
                                <span>
                                    Despliegue Interfaz Camas
                                </span>
                            </a>
                    </li>
                    @endcan

                </ul>
            </section>
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
                                        <center>
                                            @if(Session::has('flash_message'))
                                            <div style="width: 500px; height: 60px;" class="alert alert-info" role="alert" {{Session::has( 'flash_message_important'
                                                ? 'alert_important' : '' )}}>
                                                @if (Session::has('flash_message_important'))
                                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>                                                @endif
                                                <i class="fa fa-info" aria-hidden="true"></i> {{session('flash_message')}}
                                            </div>
                                            @endif
                                        </center>
                                        @yield('contenido')
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
<!-- jQuery 2.1.4 -->
<script src="{{asset('js/jQuery-2.1.4.min.js')}}">

</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js" charset="utf-8"></script>
@stack('scripts')

<!-- @stack('scripts') -->
<!-- Bootstrap 3.3.5 -->
<script src="{{asset('js/bootstrap.min.js')}}">

</script>
<script src="{{asset('js/bootstrap-select.min.js')}}">

</script>
<!-- AdminLTE App -->
<script>
    $('div.alert').not('.alert_important').delay(5000).slideUp(300);

</script>
<script src="{{asset('js/app.min.js')}}">

</script>
<script src="{{asset('js/JsBarcode.all.min.js')}}">

</script>
<script src="{{asset('js/jquery.PrintArea.js')}}">

</script>

@stack('scripts') @yield('scripts')
