<div class="modal fade modal-slide-in-right" aria-hidden="true"
  role="dialog" tabindex="-1" id="modal-delete-{{$pat->ID_PATOLOGIA}}">
  {{Form::Open(array('action'=>array('PatologiaController@destroy',$pat->ID_PATOLOGIA),'method'=>'delete'))}}
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Dar de alta al Paciente</h4>
        </div>
        <div class="modal-body">
          <p>Confirme si deshabilitar esta patologia
           </p>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-warning">Aceptar</button>
          <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  {{Form::Close()}}
</div>
