<?php

class Roles extends Controllers
{
    public function __construct()
    {

        parent::__construct();

        /*session_start();
        if (empty($_SESSION['login'])) {
            header('Location: ' . base_url() . '/login');
            die();
        }
        getPermisos(MROLES);*/
    }

    public function Roles()
    {

        /*if (empty($_SESSION['permisosMod']['Permiso_Get'] ||  $_SESSION['userData']['id_usuario'] == 1)) {
            header("Location:" . base_url() . '/dashboard');
        }*/
        $data['page_id'] = 3;
        $data['page_tag'] = "Roles Usuario";
        $data['page_name'] = "rol_usuario";
        $data['page_title'] = " Roles Usuario <small> Amalancetilla</small>";
        //$data['page_functions_js'] = "functions_roles.js";
        $this->views->getView($this, "roles", $data);
    }

    public function getRoles()
    {
        $arrData = $this->model->selectRoles();

        for ($i = 0; $i < count($arrData); $i++) {

            if ($arrData[$i]['estado_rol'] == 1) {
                $arrData[$i]['estado_rol'] = '<span class="badge badge-success">Activo</span>';
            } else {
                $arrData[$i]['estado_rol'] = '<span class="badge badge-danger">Inactivo</span>';
            }

            $arrData[$i]['options'] = '<div class="text-center"> 
            <button class="btn btn-secondary btn-sm btnPermisosRol" rl="' . $arrData[$i]['Id_Rol'] . '" title="Permisos">Permisos</button>
            <button class="btn btn-primary btn-sm btnEditRol" rl="' . $arrData[$i]['Id_Rol'] . '" title="Editar">Editar</button>
            <button class="btn btn-danger btn-sm btnDelRol" rl="' . $arrData[$i]['Id_Rol'] . '" title="Elimar">Eliminar</button>
            </div>';
        }

        echo json_encode($arrData, JSON_UNESCAPED_UNICODE);
        die();
    }

    public function setRol()
    {
        $intIdrol = intval($_POST['idRol']);
        $strRol =  strClean($_POST['txtNombre']);
        $strDescipcion = strClean($_POST['txtDescripcion']);
        $intStatus = intval($_POST['listStatus']);

        $request_rol = $this->model->insertRol($strRol, $strDescipcion, $intStatus);

        if ($request_rol > 0) 
        {
            $arrResponse = array('status' => true, 'msg' => 'Datos guardados correctamente.');
        } else if ($request_rol == 'exist'){

            $arrResponse = array('status' => false, 'msg' => '¡Atención! El Rol ya existe.');
        } else {
            $arrResponse = array("status" => false, "msg" => 'No es posible almacenar los datos.');
        }
        echo json_encode($arrResponse, JSON_UNESCAPED_UNICODE);
        die();
    }
}
