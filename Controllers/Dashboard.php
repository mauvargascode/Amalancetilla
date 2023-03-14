<?php 

	class Dashboard extends Controllers{
		public function __construct()
		{
			parent::__construct();
			session_start();
			if(empty($_SESSION['login'])){//validamos si existe la variable de session que seria login y lo que va hacer es redireccionar al login 
				header('Location: '.base_url().'/login');//muestra la vista 
			}
		}

		public function dashboard()
		{
			$data['page_id'] = 2;
			$data['page_tag'] = "Dashboard";
			$data['page_title'] = "Dashboard";
			$data['page_name'] = "dashboard";
			$data['page_functions_js'] = "functions_dashboard.js";
			$this->views->getView($this,"dashboard",$data);
		}

		public function getUltimosP(){

			//if($_SESSION['permisosMod']['Permiso_Get']){
				$btnView = '';
				$btnEdit = '';
				$btnDelete = '';
				$arrData = $this->model->selectUltimosP();

				echo json_encode($arrData,JSON_UNESCAPED_UNICODE);
		//	}
			die();


		}
		public function getPedidosP(){

			//if($_SESSION['permisosMod']['Permiso_Get']){
				$btnView = '';
				$btnEdit = '';
				$btnDelete = '';
				$arrData = $this->model->selectPedidosP();

				echo json_encode($arrData,JSON_UNESCAPED_UNICODE);
		//	}
			die();


		}

	}
 ?>