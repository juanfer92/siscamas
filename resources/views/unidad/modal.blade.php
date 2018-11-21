<div class="modal fade modal-slide-in-right" aria-hidden="true"
  role="dialog" tabindex="-1" id="modal-delete-{{$uni->ID_UNIDAD}}">
  {{Form::Open(array('action'=>array('UnidadController@destroy',$uni->ID_UNIDAD),'method'=>'delete'))}}
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button"class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">x</span>
          </button>
          <h4 class="modal-title">Dashabilitar Unidad</h4>
        </div>
        <div class="modal-body">
          <p>Confirme si desea <strong>Dashabilitar</strong> la Unidad</p>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-warning">Aceptar</button>
          <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  {{Form::Close()}}
</div>
