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
}
