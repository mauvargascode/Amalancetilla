<?php 

	class Home extends Controllers{
		public function __construct()
		{
			parent::__construct();
		}

		public function home()
		{
			$data['page_id'] = 1;
			$data['page_tag'] = "Home";
			$data['page_title'] = "Página principal";
			$data['page_name'] = "home";
			$data['page_content'] = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et, quis. Perspiciatis repellat perferendis accusamus, ea natus id omnis, ratione alias quo dolore tempore dicta cum aliquid corrupti enim deserunt voluptas.";
			$this->views->getView($this,"home",$data);
		}

		public function insertar(){
			$data = $this->model->setUser("Lindsay", 25);
			print_r($data);
		}

		public function verusuario($id){
			$data = $this->model->getUser($id);
			print_r($data);
		}

		public function actualizar(){
			$data = $this->model->updateUser(1, "Roberto", 30);
			print_r($data);
		}

		public function verusuarios(){
			$data = $this->model->getUsers();
			print_r($data);
		}

		public function eliminarUsuario($id){
			$data = $this->model->delUser($id);
			print_r($data);
		}
	}
 ?>