  <!-- Sidebar menu-->
  <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
  <aside class="app-sidebar">
      <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="<?= media(); ?>/images/avatar.png" alt="User Image">
      
      <div>
              <p class="app-sidebar__user-name">Usuario Admin</p>
              <p class="app-sidebar__user-designation">Administrador</p>
          </div>
      </div>
      <ul class="app-menu">
          <li>
              <a class="app-menu__item" href="<?= base_url(); ?>/pedidos">
                  <i class="app-menu__icon fa fa fa-globe"></i>
                  <span class="app-menu__label">Sitio web</span>
              </a>
          </li>
          <li>
              <a class="app-menu__item" href="<?= base_url(); ?>/dashboard">
                  <i class="app-menu__icon fa fa-dashboard"></i>
                  <span class="app-menu__label">Dashboard</span>
              </a>
          </li>
          <li class="treeview">
              <a class="app-menu__item" href="#" data-toggle="treeview">
                  <i class="app-menu__icon fa fa-shield"></i>
                  <span class="app-menu__label">Seguridad</span>
                  <i class="treeview-indicator fa fa-angle-right"></i>
              </a>
              <ul class="treeview-menu">
                  <li><a class="treeview-item" href="<?= base_url(); ?>/usuarios"><i class="icon fa fa-circle-o"></i> Usuarios</a></li>
                  <li><a class="treeview-item" href="<?= base_url(); ?>/roles"><i class="icon fa fa-circle-o"></i> Roles</a></li>
                  <li><a class="treeview-item" href="<?= base_url(); ?>/preguntas"><i class="icon fa fa-circle-o"></i> Preguntas</a></li>
              </ul>
          </li>

          <li>
              <a class="app-menu__item" href="<?= base_url(); ?>/facturaciones">
                  <i class="app-menu__icon fa fa-file-text-o"></i>
                  <span class="app-menu__label">Facturación</span>
              </a>
          </li>

          <li class="treeview">
              <a class="app-menu__item" href="#" data-toggle="treeview">
                  <i class="app-menu__icon fa fa-credit-card-alt"></i>
                  <span class="app-menu__label">Compras</span>
                  <i class="treeview-indicator fa fa-angle-right"></i>
              </a>
              <ul class="treeview-menu">
                  <li><a class="treeview-item" href="<?= base_url(); ?>/proveedores"><i class="icon fa fa-circle-o"></i> Proveedores</a></li>
                  <li><a class="treeview-item" href="<?= base_url(); ?>/compras"><i class="icon fa fa-circle-o"></i> Registro de compras</a></li>
              </ul>
          </li>

          <li>
              <a class="app-menu__item" href="<?= base_url(); ?>/inventarios">
                  <i class="app-menu__icon fa fa-archive"></i>
                  <span class="app-menu__label">Inventario</span>
              </a>
          </li>

          <li>
              <a class="app-menu__item" href="<?= base_url(); ?>/clientes">
                  <i class="app-menu__icon fa fa-user"></i>
                  <span class="app-menu__label">Clientes</span>
              </a>
          </li>
          <li>
              <a class="app-menu__item" href="<?= base_url(); ?>/productos">
                  <i class="app-menu__icon fa fa-archive"></i>
                  <span class="app-menu__label">Productos</span>
              </a>
          </li>
         
          <!--<li>
              <a class="app-menu__item" href="<?= base_url(); ?>/pedidos">
                  <i class="app-menu__icon fa fa-shopping-cart"></i>
                  <span class="app-menu__label">Pedidos</span>
              </a>
          </li>

          <li>
              <a class="app-menu__item" href="<?= base_url(); ?>/pedidos">
                  <i class="app-menu__icon fa fa-file-text-o"></i>
                  <span class="app-menu__label">Paginas sitio web</span>
              </a>
          </li>-->

          <li>
              <a class="app-menu__item" href="<?= base_url(); ?>/logout">
                  <i class="app-menu__icon fa fa-sign-out"></i>
                  <span class="app-menu__label">Cerrar sesión</span>
              </a>
          </li>
          <li>
              <a class="app-menu__item" href="<?= base_url(); ?>/reportes">
              </a>
          </li>
      </ul>
  </aside>