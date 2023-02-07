<!-- Modal -->
<div class="modal fade" id="modalFormProducto" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <!-- ---------- AGREGAR ---------- -->
      <div class="modal-header headerRegister">
        <!-- ---------- AGREGAR ---------- -->
        <h5 class="modal-title" id="titleModal">Nuevo Producto</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

            <form id="formProducto" name="formProducto" class="form-horizontal">

              <input type="hidden" id="Codigo" name="Codigo" value="">
              <p class="text-primary">Todos los campos son obligatorios.</p>

            <div class="form-row">
              <div class="form-group col-md-6">
                <label class="control-label">Nombre</label>
                <input class="form-control" id="txtNombre" name="txtNombre" type="text"  placeholder="Nombre del producto">
              </div>
              <div class="form-group col-md-6">
                <label class="control-label">Precio</label>
                <input class="form-control" id="txtPrecio" name="txtPrecio" type="text"  placeholder="Precio del producto">
              </div>
            </div>

            <div class="form-row">
              <div class="form-group col-md-6">
                <label class="control-label">Medida</label>
                <input class="form-control" id="txtMedida" name="txtMedida" type="text"  placeholder="Medida en la que esta">
              </div>
            </div>

            <div class="form-row">  
              <div class="form-group col-md-6">
                <label class="control-label">Cantidad minima</label>
                <input class="form-control" id="txtCantidadminima" name="txtCantidadminima" type="text"  placeholder="Cantidad minima del producto">
              </div>
              <div class="form-group col-md-6">
                <label class="control-label">Cantidad Maxima</label>
                <input class="form-control" id="txtCantidadmaxima" name="txtCantidadmaxima" type="text"  placeholder="Cantidad Maxima del producto">
              </div>
            </div>

            <div class="form-row">
              <div class="form-group col-md-6">
                <label for="exampleSelect1">Categoria</label>
                <select class="form-control" id="listCategoria" name="listCategoria" required="">
                  <option value="1">Producto</option>
                  <option value="2">Insumo</option>
                </select>
              </div>
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