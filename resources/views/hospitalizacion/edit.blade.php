@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
    <h1>
      <h2><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Editar Datos: {{$camas->COD_CAMA}}</h2>
    </h1>
    <ol class="breadcrumb">
      <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
      <li><a href="/estadocama"><i class="fa fa-reply"></i> Estados de Camas</a></li>
      <li class="active">Editar</li>
    </ol>
  </section>
<div class="row">
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    @if (count($errors)>0)
    <div class="alert alert-danger">
      <ul>
        @foreach ($errors->all() as $error)
        <li>{{$error}}</li>
        @endforeach
      </ul>
    </div>
    @endif
  </div>
</div>
    {!!Form::model($camas,['method'=>'PUT','route'=>['cama.update',$camas->ID_CAMA]])!!}
    {{Form::token()}}

    <div class="row">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <div class="form-group">
          <label>Sub Unidad</label>
          <select name="idsubunidad" class="form-control selectpicker" data-live-search="true">
               @foreach($subunidades as $sub)
              <option value="{{$sub->ID_SUBUNIDAD}}"> {{$sub->SUCURSAL}} &nbsp&nbsp&nbsp&nbsp {{$sub->UNIDAD}} &nbsp&nbsp&nbsp&nbsp {{$sub->SUBUNIDAD}}</option>
              @endforeach
          </select>
        </div>
        <div class="form-group">
          <label>tipo de cama</label>
          <select name="idtipocama" class="form-control">
              @foreach($tipocamas as $tc)
              <img src="{{asset('/imagenes/tipocama/'.$tc->IMG_TCAMA)}}" alt="{{ $tc->DESC_TCAMA}}" height="100px" width="100px" class="img-thumbnail">
              <option value="{{$tc->ID_TCAMA}}">{{$tc->DESC_TCAMA}}</option>
              @endforeach
          </select>
        </div>
        <div class="form-group">
          <label>Estado cama</label>
          <select name="idestadocama" class="form-control">
              @foreach($estadocamas as $ec)
              <option value="{{$ec->ID_ESTCAM}}">{{$ec->DESC_ESTCAM}}</option>
              @endforeach
          </select>
        </div>
      </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <div class="form-group">
          <label for="observacion">Observación</label>
          <textarea type="textarea" name="observacion" class="form-control" placeholder="Ingrese observación .."></textarea>
        </div>

        <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
      		<div class="form-group">
      					<label for="codigo">Código</label>
      					<input style="text-transform: uppercase;" type="text" name="codigo" id="codigobar" required class="form-control" value="{{$camas->COD_CAMA}}"  placeholder="Código del artículo...">
      						<br>
      					 <button class="btn btn-success" type="button" onclick="generarBarcode()">Generar</button>
      						<button class="btn btn-info" onclick="printDiv('printableArea')" type="button">imprimir</button>
      						<div id="printableArea">
      								<svg id="barcode"></svg>
      						</div>
      				</div>
      	</div>
</div>
</div>
    <div class="form-group">
      <button class="btn btn-primary" type="submit">Guardar</button>
      <button class="btn btn-danger" type="reset">Cancelar</button>
    </div>
    {!!Form::close()!!}

@endsection
@section('scripts')
<script src="{{asset('js/JsBarcode.all.min.js')}}"></script>
<script src="{{asset('js/jquery.PrintArea.js')}}"></script>
<script>
function generarBarcode(){
codigo=$("#codigobar").val();
JsBarcode("#barcode", codigo,);
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
