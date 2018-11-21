@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h2>
        <i aria-hidden="true" class="fa fa-medkit">
        </i>
        Desplegar interfaz de Camas Asignadas
            </h2>
    <ol class="breadcrumb">
        <li>
            <a href="/home">
                <i class="fa fa-dashboard">
                </i>
                Inicio
            </a>
        </li>
        <li class="active">
            Hospitalización
        </li>
    </ol>
</section>
<div class="">
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
        <h3>
        </h3>
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
                        Subunidad
                    </th>

                    <th bgcolor="#fbd341">
                        Opciones
                    </th>
                </thead>
                @foreach ($subunidades as $sub)
                <tr>
                    <td>
                        {{ $sub->ID_SUBUNIDAD}}
                    </td>
                    <td>
                        {{ $sub->DESC_SUBUNIDAD}}
                    </td>

                    <td>
                      @can('infocamas.show')
                      <a href="{{route('infocamas.show',$sub->ID_SUBUNIDAD)}}" target="_blank"> <button class="btn btn-success"><i class="fa fa-external-link" aria-hidden="true"></i></button></a>                        @endcan

                    </td>
                </tr>

            @endforeach
            </table>
        </div>

    </div>
</div>
@endsection
@section('scripts')
<script src="{{asset('js/JsBarcode.all.min.js')}}"></script>
<script src="{{asset('js/jquery.PrintArea.js')}}"></script>
<script>
$(document).ready(function(){
    $("tr").each(function(){
        $(this).children("td").each(function(){
            switch ($(this).html()) {
                case 'Ingreso':
                    $(this).css("background-color", "#a7d129");
                break;
                case 'Egreso':
                    $(this).css("background-color", "#fd5f00");
                break;
            }
        })
    })
});
</script>
@stop
