@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <center>
                    <img alt="Log" height="80px" src="{{asset('imagenes/logo.png')}}" width="200px"/>
                </center>
                <div class="card-header">
                    <h4>
                        <i aria-hidden="true" class="fa fa-sign-in">
                            Iniciar Sesión
                        </i>
                    </h4>
                </div>
                <div class="card-body">
                    <form action="{{ route('login') }}" method="POST">
                        @csrf
                        <div class="form-group row">
                            <label class="col-sm-4 col-form-label text-md-right" for="email">
                                <i aria-hidden="true" class="fa fa-envelope-o">
                                    Correo Electrónico
                                </i>
                            </label>
                            <div class="col-md-6">
                                <input autofocus="" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" id="email" name="email" required="" type="email" value="{{ old('email') }}">
                                    @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>
                                            {{ $errors->first('email') }}
                                        </strong>
                                    </span>
                                    @endif
                                </input>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label text-md-right" for="password">
                                <i aria-hidden="true" class="fa fa-key">
                                    Clave
                                </i>
                            </label>
                            <div class="col-md-6">
                                <input class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" id="password" name="password" required="" type="password">
                                    @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>
                                            {{ $errors->first('password') }}
                                        </strong>
                                    </span>
                                    @endif
                                </input>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-6 offset-md-4">
                                <div class="form-check">
                                  
                                </div>
                            </div>
                        </div>
                        <div class="form-group row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button class="btn btn-primary" type="submit">
                                    Ingresar
                                </button>
                                <a class="btn btn-link" href="{{ route('password.request') }}">
                                    Olvido su contraseña..?
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
