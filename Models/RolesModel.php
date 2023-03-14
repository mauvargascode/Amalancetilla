<?php

class RolesModel extends Mysql
{
    public $intIdrol;
    public $strRol;
    public $strDescripcion;
    public $intStatus;

    public function __construct()
    {
        parent::__construct();
    }

    public function selectRoles()
    {
        //MOSTRAR ROLES
        $sql = "SELECT * FROM tbl_ms_rol WHERE estado_rol != 0";
        $request = $this->select_all($sql);
        return $request;
    }

    public function insertRol(string $rol, string $descripcion, int $status)
    {

        $return = "";
        $this->strRol = $rol;
        $this->strDescripcion = $descripcion;
        $this->intStatus = $status;

        $sql = "SELECT * FROM tbl_ms_rol WHERE Nombre_Rol = '{$this->strRol}' ";
        $request = $this->select_all($sql);

        if (empty($request)) {
            $query_insert  = "INSERT INTO tbl_ms_rol(Nombre_Rol,Descripcion_Rol,estado_rol) VALUES(?,?,?)";
            $arrData = array($this->strRol, $this->strDescripcion, $this->intStatus);
            $request_insert = $this->insert($query_insert, $arrData);
            $return = $request_insert;
        } else {
            $return = "exist";
        }
        return $return;
    }
}
