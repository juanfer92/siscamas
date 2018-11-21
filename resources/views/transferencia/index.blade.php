@extends ('layouts.admin')
@section ('contenido')
<div class="">
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <h3>Listado Transferencias

        </h3>
    @include('transferencia.search')
    </div>
</div>
<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-condensed table-hover">
                <thead>
                    <th bgcolor="#fbd341">ID</th>
                    <th bgcolor="#fbd341">Nombre</th>
                    <th bgcolor="#fbd341">Apellido</th>
                    <th bgcolor="#fbd341">IDN</th>
                    <th bgcolor="#fbd341">Cama Actual</th>
                    <th bgcolor="#fbd341">Opciones</th>
                </thead>
                @foreach ($tranferencias as $tran)
                <tr>
                    <td>{{ $tran->ID_DET_HOSPITALIZACION}}</td>
                    <td>{{ $tran->NOM_PACIENTE}}</td>
                    <td>{{ $tran->APE_PACIENTE}}</td>
                    <td>{{ $tran->CI_PACIENTE}}</td>
                    <td>{{ $tran->COD_CAMA}}</td>
                    <td>
                        @can('transferencia.edit')
                        <a href="{{route('transferencia.edit',$tran->ID_DET_HOSPITALIZACION)}}"> <button class="btn btn-success"><i class="fa fa-arrows-h" aria-hidden="true"></i></button></a>                        @endcan
                    </td>
                </tr>

                @endforeach
            </table>
        </div>
        {{$tranferencias->render()}}
    </div>
</div>
@endsection
