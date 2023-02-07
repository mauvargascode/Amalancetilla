<!-- Modal -->
<div class="modal fade" id="modalFormPregunta" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <!-- ---------- AGREGAR ---------- -->
      <div class="modal-header headerRegister">
        <!-- ---------- AGREGAR ---------- -->
        <h5 class="modal-title" id="titleModal">Nuevo Pregunta</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="tile">
          <div class="tile-body">
            <form id="formPregunta" name="formPregunta">
              <input type="hidden" id="IdPregunta" name="IdPregunta" value="">
              <div class="form-group">
                <label class="control-label">Pregunta</label>
                <input class="form-control" id="txtRespuesta" name="txtRespuesta" type="text"  placeholder="Nueva Pregunta">
              </div>
              <div class="tile-footer">
                <button id="btnActionForm" class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i><span id="btnText">Guardar</span></button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="#" data-dismiss="modal"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancelar</a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>