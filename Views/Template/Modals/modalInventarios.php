<!-- Modal -->
<div class="modal fade" id="modalFormInventario" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <!-- ---------- AGREGAR ---------- -->
      <div class="modal-header headerRegister">
        <!-- ---------- AGREGAR ---------- -->
        <h5 class="modal-title" id="titleModal">Nuevo inventario</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="tile">
          <div class="tile-body">
            <form id="formInventario" name="formInventario">
              <input type="hidden" id="IDInventario" name="IDInventario" value="">
              <div class="form-group">
                <label class="control-label">Cantidad en Existencia</label>
                <input class="form-control" id="txtCantidadE" name="txtCantidadE" type="text"  placeholder="Cantidad en Existencia">
              </div>
              <div class="form-group">
                <label for="exampleSelect1">Producto</label>
                <select class="form-control" id="listProducto" name="listProducto" required="">
                  <option value="1">Vino</option>
                  <option value="2">Jalea</option>
                </select>
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