<div aria-hidden="true" class="modal fade modal-slide-in-right" id="modal-delete-{{$cam->ID_HCAMA}}" role="dialog" tabindex="-1">
    {{Form::Open(array('action'=>array('CamahisController@destroy',$cam->ID_HCAMA),'method'=>'delete'))}}
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-label="Close" class="close" data-dismiss="modal" type="button">
                    <span aria-hidden="true">
                        x
                    </span>
                </button>
                <h4 class="modal-title">
                    Deshabilitar Cama
                </h4>
            </div>
            <div class="modal-body">
                <p>
                    Confirme si desea
                    <strong>
                        Deshabilitar
                    </strong>
                    esta cama
                </p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-warning" type="submit">
                    Aceptar
                </button>
                <button class="btn btn-outline-dark" data-dismiss="modal" type="button">
                    Cerrar
                </button>
            </div>
        </div>
    </div>
    {{Form::Close()}}
</div>
