{!! Form::open(array('url'=>'quirofano','method'=>'GET','autocomplete'=>'off','role'=>'search')) !!}
<div class="form-group">
  <div class="input-group">
    <input style="text-transform: uppercase;" type="text" class="form-control" name="searchText" placeholder="Buscar por: Sucursal, Dirección o Teléfono.." value="{{$searchText}}">
    <span class="input-group-btn">
      <button type="submit" class="btn btn-primary">Buscar</button>
    </span>
  </div>
</div>
{{Form::close()}}
