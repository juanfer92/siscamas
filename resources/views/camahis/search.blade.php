{!! Form::open(array('url'=>'camahis','method'=>'GET','autocomplete'=>'off','role'=>'search')) !!}
<div class="form-group">
    <div class="input-group">
        <input class="form-control" name="searchText" placeholder="Buscar por código cama, apellido, idn fecha de ingreso, fecha egreso.." type="text" value="{{$searchText}}">
            <span class="input-group-btn">
                <button class="btn btn-primary" type="submit">
                    Buscar
                </button>
            </span>
        </input>
    </div>
</div>
{{Form::close()}}
