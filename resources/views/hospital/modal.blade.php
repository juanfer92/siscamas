<div class="modal fade modal-slide-in-right" aria-hidden="true"
  role="dialog" tabindex="-1" id="modal-delete-{{$hos->ID_HOSPITAL}}">
  {{Form::Open(array('action'=>array('HospitalController@destroy',$hos->ID_HOSPITAL),'method'=>'delete'))}}
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button"class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">x</span>
          </button>
          <h4 class="modal-title">Deshabilitar Hospital</h4>
        </div>
        <div class="modal-body">
          <p>Confirme si desea <strong>Deshabilitar</strong>  : {{$hos->NOM_HOSPITAL}}</p>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-warning">Aceptar</button>
          <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
    </div>
  {{Form::Close()}}
</div>
