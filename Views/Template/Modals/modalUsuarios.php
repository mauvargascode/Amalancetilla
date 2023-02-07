<!-- Modal -->
<div class="modal fade" id="modalFormUsuario" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <!-- ---------- AGREGAR ---------- -->
      <div class="modal-header headerRegister">
        <!-- ---------- AGREGAR ---------- -->
        <h5 class="modal-title" id="titleModal">Nuevo Usuario</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <form id="formUsuario" name="formUsuario" class="form-horizontal">

          <input type="hidden" id="idUsuario" name="idUsuario" value="">
          <p class="text-primary">Todos los campos son obligatorios.</p>

          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="txtIdentificacion">Usuario</label>
              <input type="text" class="form-control" id="txtUsuario" name="txtUsuario" required="">
            </div>
          </div>

          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="txtNombre">Nombres</label>
              <input type="text" class="form-control valid validText" id="txtNombres" name="txtNombres" required="">
            </div>
            <div class="form-group col-md-6">
              <label for="txtApellido">Apellidos</label>
              <input type="text" class="form-control valid validText" id="txtApellidos" name="txtApellidos" required="">
            </div>
          </div>

          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="txtTelefono">Teléfono</label>
              <input type="text" class="form-control valid validNumber" id="txtTelefono" name="txtTelefono" required="" onkeypress="return controlTag(event);">
            </div>
            <div class="form-group col-md-6">
              <label for="txtEmail">Email</label>
              <input type="email" class="form-control valid validEmail" id="txtEmail" name="txtEmail" required="">
            </div>
          </div>

          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="listRolid">Tipo usuario</label>
              <select class="form-control" data-live-search="true" id="listIdrol" name="listIdrol" required>
                <option value="1">Administrador</option>
                <option value="2">Vendedor</option>
                <option value="3">Inventario</option>
              </select>
            </div>
            <div class="form-group col-md-6">
              <label for="listStatus">Estado</label>
              <select class="form-control selectpicker" id="listEstado_usuario" name="listEstado_usuario" required>
                <option value="1">Activo</option>
                <option value="2">Inactivo</option>
              </select>
            </div>
          </div>

          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="txtPassword">Password</label>
              <input type="password" class="form-control" id="txtContrasena" name="txtContrasena">
            </div>
          </div>

          <div class="tile-footer">
            <button id="btnActionForm" class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i><span id="btnText">Guardar</span></button>&nbsp;&nbsp;&nbsp;
            <button class="btn btn-danger" type="button" data-dismiss="modal"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cerrar</button>
          </div>

        </form>

      </div>
    </div>
  </div>
</div>