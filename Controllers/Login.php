<?php 

	class Login extends Controllers{
		public function __construct()
		{
			parent::__construct();
		}

		public function login()
		{
			$data['page_tag'] = "Login - Amalancetilla";
			$data['page_title'] = "Login - Amalancetilla";
			$data['page_name'] = "login";
			$data['page_functions_js'] = "functions_login.js";
			$this->views->getView($this,"login",$data);
		}

		public function loginUser(){
			dep($_POST);
			die();
		}
    }