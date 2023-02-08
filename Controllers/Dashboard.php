<?php

class Dashboard extends Controllers
{
    public function __construct()
    {
        parent::__construct();
    }

    public function dashboard($params)
    {
        $data['page_id'] = 2;
        $data['page_tag'] = "Dashboard - Amalancetilla";
        $data['page_title'] = "Dashboard <small> Amalancetilla </small>";
        $data['page_name'] = "dashboard";
        //Manda llamar el archivo HOME de la carpeta Views
        $this->views->getView($this, "dashboard", $data);
    }
}
