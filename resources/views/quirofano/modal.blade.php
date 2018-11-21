<div class="modal fade modal-slide-in-right" aria-hidden="true"
  role="dialog" tabindex="-1" id="modal-delete-{{$qui->ID_QUIRIFANO}}">
  {{Form::Open(array('action'=>array('QuirofanoController@destroy',$qui->ID_QUIRIFANO),'method'=>'delete'))}}
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Dar de alta al Paciente</h4>
        </div>
        <div class="modal-body">
          <p>Confirme si desea realizar el egreso del pacientede este quirofano
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
