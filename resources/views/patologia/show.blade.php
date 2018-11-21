@extends ('layouts.admin')
@section ('contenido')
<section class="content-header">
  <ol class="breadcrumb">
    <li><a href="/home"><i class="fa fa-dashboard"></i> Inicio</a></li>
    <li><a href="/patologia"><i class="fa fa-reply"></i> Patologías</a></li>
    <li class="active">Ver</li>
  </ol>
</section>
    <div class="col-md-12">
      <h3><i class="fa fa-heartbeat" aria-hidden="true"></i>&nbsp Datos de Patología</h3>
    	<div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
    		<div class="form-group">
            	<label for="proveedor">ID: </label>
            	<p>{{$patologia->ID_PATOLOGIA}}</p>
            </div>
    	</div>
      <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
    		<div class="form-group">
            	<label for="proveedor">Nombre Patologia: </label>
            	<p>{{$patologia->DESC_PATOLOGIA}}</p>
            </div>
    	</div>
      <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
    		<div class="form-group">
            	<label for="proveedor">Sintoma: </label>
            	<p>{{$patologia->SINTOMA}}</p>
            </div>
    	</div>
      <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
    		<div class="form-group">
            	<label for="proveedor">Diagnóstico: </label>
            	<p>{{$patologia->DIAGNOSTICO}}</p>
            </div>
    	</div>
      <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
    		<div class="form-group">
            	<label for="proveedor">Procedimiento: </label>
            	<p>{{$patologia->PROCEDIMIENTO}}</p>
            </div>
    	</div>
      <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
    		<div class="form-group">
            	<label for="proveedor">Patologia Aplica a: </label>
            	<p>{{$patologia->TPACIENTE}}</p>
            </div>
    	</div>
      <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
    		<div class="form-group">
            	<label for="proveedor">Estado: </label>
            	<p>{{$patologia->EST_PATOLOGIA}}</p>
            </div>
    	</div>

                 </div>

@endsection
