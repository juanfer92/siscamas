@extends ('layouts.admin')
@section ('contenido')
<div class="col-md-12">
    <h3><i class="fa fa-heartbeat" aria-hidden="true"></i>&nbsp Detalle del Paciente Para Transferencia </h3>

    @if (count($errors)>0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
            <li>{{$error}}</li>
            @endforeach
        </ul>
    </div>
    @endif {!!Form::model($detalles,['method'=>'PUT','route'=>['transferencia.update',$detalles->ID_DET_HOSPITALIZACION]])!!}
    {{Form::token()}}

     <div class="col-lg-8 col-sm-8 col-md-8 col-xs-12">
        <div class="form-group">
            <label for="proveedor">Codigos Detalle Hospitalización: </label>
            <input type="text" name="idhospitalizacion" size="4" style="border:none" value="{{$detalles->ID_DET_HOSPITALIZACION}} ">
            <label for="proveedor">Codigo Cama: </label>
            <input type="text" name="idcama" size="4" style="border:none" value="{{$detalles->ID_CAMA}}">
            <label for="proveedor">Codigo Hospitalización: </label>
            <input type="text" name="idhospita" size="4" style="border:none" value="{{$detalles->ID_HOSPITALIZACION}}">

        </div>
    </div>
    <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr>
    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
       <div class="form-group">
           <label for="proveedor">Nombres Completos: </label>
           <input type="text" name="id2" size="40"  disabled style="border:none" value="{{$detalles->NOM_PACIENTE.' '.$detalles->NOM_PACIENTE1.' '.$detalles->APE_PACIENTE.' '.$detalles->APE_PACIENTE1}}"></input>
       </div>
   </div>
   <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
      <div class="form-group">
          <label for="proveedor">IDN: </label>
          <input type="text" name="id2" disabled style="border:none" value="{{$detalles->CI_PACIENTE}}"></input>
      </div>
  </div>
   <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr>
   <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
      <div class="form-group">
          <label for="proveedor">Codigo de Cama: </label>
          <p>{{$detalles->COD_CAMA}}</p>
      </div>
  </div>
  <div class="col-lg-3 col-sm-3 col-md-3 col-xs-12">
     <div class="form-group">
         <label for="proveedor">Tipo de Cama: </label>
         <p>{{$detalles->DESC_TCAMA}}</p>
     </div>
 </div>
 <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
    <div class="form-group">
        <label for="proveedor">Ubicacion Actual:</label>
        <p><strong>Subunidad:</strong>{{$detalles->DESC_SUBUNIDAD}}
          <br>
          <strong>Unidad:</strong> {{$detalles->DESC_UNIDAD}}
          <br>
          <strong>Sucursal:</strong>{{$detalles->DESCRIPCION}}</p>
    </div>
</div>
<hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr>
<div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
  <h4>Seleccione la unidad a la cual sera tranferido el paciente:</h4>
<select class="form-control selectpicker" data-live-search="true" id="idncama" name="idncama">
        @foreach($camas as $cam)
        <option value="{{$cam->ID_CAMA}}">
            {{$cam->Ubicacion.' '.$cam->descripcion.' Codigo Cama:'.$cam->COD_CAMA}}
        </option>
        @endforeach
    </select>
      <br>
  </div>
  <br>
    <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"></hr>
<div class="form-group">
    <button class="btn btn-primary" type="submit">Guardar</button>
    <button class="btn btn-danger" type="reset">Cancelar</button>
</div>
{!!Form::close()!!}
</div>
</div>
@endsection
