{!! Form::open(array('url'=>'auditoria','method'=>'GET','autocomplete'=>'off','role'=>'search')) !!}
<div class="form-group">
    <div class="input-group">
        <input class="form-control" name="searchText" placeholder="Buscar por usuario,fecha,acción.." type="text" value="{{$searchText}}">
            <span class="input-group-btn">
                <button class="btn btn-primary" type="submit">
                    Buscar
                </button>
            </span>
        </input>
    </div>
</div>
{{Form::close()}}
