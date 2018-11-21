<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light navbar-laravel">
            <div class="container">

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">
                      @can('sucursal.index')
                      <li class="nav-item">
                        <a class="nav-link" href="{{route('sucursal.index')}}">sucursales</a>
                      </li>
                      @endcan
                      @can('users.index')
                      <li class="nav-item">
                        <a class="nav-link" href="{{route('users.index')}}">usuarios</a>
                      </li>
                      @endcan
                      @can('roles.index')
                      <li class="nav-item">
                        <a class="nav-link" href="{{route('roles.index')}}">roles</a>
                      </li>
                      @endcan
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">Iniciar Sesión</a>
                            </li>
                            <!-- <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                            </li> -->
                        @else
                            <!-- <li class="nav-item dropdown"> -->
                                <a id="navbarDropdown"  href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div >
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            <!-- </li> -->
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
    @yield('script')
</body>
</html>
