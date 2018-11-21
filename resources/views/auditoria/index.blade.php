@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h3>
        <i aria-hidden="true" class="fa fa-ils">
        </i>
        --Logs de Auditoria
    </h3>
    <ol class="breadcrumb">
        <li>
            <a href="/home">
                <i class="fa fa-dashboard">
                </i>
                Inicio
            </a>
        </li>
        <li class="active">
            Auditoria
        </li>
    </ol>
</section>
<div class="">
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <span>
            @include('auditoria.search')
        </span>
    </div>
</div>
<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-condensed table-hover">
                <thead>
                    <th bgcolor="#fbd341">
                        Id
                    </th>
                    <th bgcolor="#fbd341">
                        Id Usuario
                    </th>
                    <th bgcolor="#fbd341">
                        Usuario
                    </th>
                    <th bgcolor="#fbd341">
                        Accion
                    </th>
                    <th bgcolor="#fbd341">
                        Objeto
                    </th>
                    <th bgcolor="#fbd341">
                        Equipo
                    </th>
                    <th bgcolor="#fbd341">
                        Fecha
                    </th>
                    <th bgcolor="#fbd341">
                        Opciones
                    </th>
                </thead>
                @foreach ($auditoria as $aud)
                <tr>
                    <td>
                        {{ $aud->ID_AUD}}
                    </td>
                    <td>
                        {{ $aud->ID_USUARIO}}
                    </td>
                    <td>
                        {{ $aud->USUARIO}}
                    </td>
                    <td>
                        {{ $aud->ACCION}}
                    </td>
                    <td>
                        {{ $aud->OBJETO}}
                    </td>
                    <td>
                        {{ $aud->EQUIPO}}
                    </td>
                    <td>
                        {{ $aud->FECHA}}
                    </td>
                    <td>
                        @can('auditoria.show')
                        <a href="{{route('auditoria.show',$aud->ID_AUD)}}">
                            <button class="btn btn-info">
                                <i aria-hidden="true" class="fa fa-eye">
                                </i>
                                Ver
                            </button>
                        </a>
                        @endcan
                    </td>
                </tr>
                @endforeach
            </table>
        </div>
        {{$auditoria->render()}}
    </div>
</div>
@endsection
