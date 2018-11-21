@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h3>
        <i aria-hidden="true" class="fa fa-plus-circle">
        </i>
        Nueva Cama
    </h3>
    <ol class="breadcrumb">
        <li>
            <a href="/home">
                <i class="fa fa-dashboard">
                </i>
                Inicio
            </a>
        </li>
        <li>
            <a href="/cama">
                <i class="fa fa-reply">
                </i>
                Cama
            </a>
        </li>
        <li class="active">
            Crear
        </li>
    </ol>
</section>
<div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        @if (count($errors)>0)
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                <li>
                    {{$error}}
                </li>
                @endforeach
            </ul>
        </div>
        @endif
    </div>
</div>
{!!Form::open(['route'=>'cama.store'])!!}
    {{Form::token()}}
<div class="row">
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <div class="form-group">
            <label>
                Sub Unidad
            </label>
            <select class="form-control selectpicker" data-live-search="true" name="idsubunidad">
                @foreach($subunidades as $sub)
                <option value="{{$sub->ID_SUBUNIDAD}}">
                    {{$sub->SUCURSAL}}--{{$sub->UNIDAD}}--{{$sub->SUBUNIDAD}}
                </option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label>
                tipo de cama
            </label>
            <select class="form-control" name="idtipocama">
                @foreach($tipocamas as $tc)
                <img alt="{{ $tc->DESC_TCAMA}}" class="img-thumbnail" height="100px" src="{{asset('/imagenes/tipocama/'.$tc->IMG_TCAMA)}}" width="100px">
                    <option value="{{$tc->ID_TCAMA}}">
                        {{$tc->DESC_TCAMA}}
                    </option>
                    @endforeach
                </img>
            </select>
        </div>
        <div class="form-group">
            <label>
                Estado cama
            </label>
            <select class="form-control" name="idestadocama">
                @foreach($estadocamas as $ec)
                <option value="{{$ec->ID_ESTCAM}}">
                    {{$ec->DESC_ESTCAM}}
                </option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
        <div class="form-group">
            <label for="observacion">
                Observación
            </label>
            <textarea class="form-control" name="observacion" placeholder="Ingrese observación .." type="textarea">
            </textarea>
        </div>
        <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
            <div class="form-group">
                <label for="codigo">
                    Código
                </label>
                <input class="form-control" id="codigobar" name="codigo" placeholder="Código del artículo..." required="" style="text-transform: uppercase;" type="text">
                    <br>
                        <button class="btn btn-success" onclick="generarBarcode()" type="button">
                            Generar
                        </button>
                        <button class="btn btn-info" onclick="printDiv('printableArea')" type="button">
                            imprimir
                        </button>
                        <div id="printableArea">
                            <svg id="barcode">
                            </svg>
                        </div>
                    </br>
                </input>
            </div>
        </div>
    </div>
</div>
<div class="form-group">
    <button class="btn btn-primary" type="submit">
        Guardar
    </button>
    <button class="btn btn-danger" type="reset">
        Cancelar
    </button>
</div>
{!!Form::close()!!}
@stop
@section('scripts')
<script src="{{asset('js/JsBarcode.all.min.js')}}">
</script>
<script src="{{asset('js/jquery.PrintArea.js')}}">
</script>
<script>
    function generarBarcode(){
codigo=$("#codigobar").val();
JsBarcode("#barcode", codigo);
}

  function printDiv(divName) {
 var printContents = document.getElementById(divName).innerHTML;
 var originalContents = document.body.innerHTML;
 document.body.innerHTML = printContents;
 window.print();
 document.body.innerHTML = originalContents;
}
</script>
@stop
