<?php

class Login extends Controllers
{
	public function __construct()
	{
		session_start();
		if (isset($_SESSION['login'])) {
			header('Location: ' . base_url() . '/dashboard');
		}
		parent::__construct();
	}

	public function login()
	{
		$data['page_tag'] = "Login - Amalancetilla";
		$data['page_title'] = "Login - Amalancetilla";
		$data['page_name'] = "login";
		$data['page_functions_js'] = "functions_login.js";
		$this->views->getView($this, "login", $data);
	}


	public function loginUser()
	{
		//dep($_POST);
		if ($_POST) {
			if (empty($_POST['txtEmail']) || empty($_POST['txtPassword'])) {
				$arrResponse = array('status' => false, 'msg' => 'Error de datos');
			} else {
				$strUsuario = strtolower(strClean($_POST['txtEmail']));
				$strPassword = $_POST['txtPassword'];
				$requestUser = $this->model->loginUser($strUsuario, $strPassword);
				if (empty($requestUser)) {
					$arrResponse = array('status' => false, 'msg' => 'El usuario o la contraseña es incorrecto.');
				} else {
					$arrData = $requestUser;
					if ($arrData['status'] == 1) {
						$_SESSION['idUser'] = $arrData['idpersona'];
						$_SESSION['login'] = true;

						$arrData = $this->model->ssesionLogin($_SESSION['idUser']);
						$_SESSION['userData'] = $arrData;

						$arrResponse = array('status' => true, 'msg' => 'ok');
					} else {
						$arrResponse = array('status' => false, 'msg' => 'Usuario inactivo.');
					}
				}
			}
			echo json_encode($arrResponse, JSON_UNESCAPED_UNICODE);
		}
		die();
	}

	public function resetPass()
	{
		if ($_POST) {
			
			if (empty($_POST['txtEmailReset'])) {
				$arrResponse = array('status' => false, 'msg' => 'Error de datos');
			} else {
				$token = token();
				$strEmail = strtolower(strClean($_POST['txtEmailReset']));
				$arrData = $this->model->getUserEmail($strEmail);

				if (empty($arrData)) {
					$arrResponse = array('status' => false, 'msg' => 'Usuario no existe.');
				} else {
					$idpersona = $arrData['idpersona'];
					$nombreUsuario = $arrData['nombres'] . ' ' . $arrData['apellidos'];

					$url_recovery = base_url() . '/login/confirmUser/' . $strEmail . '/' . $token;
					$requestUpdate = $this->model->setTokenUser($idpersona, $token);

					/*$dataUsuario = array(
					'nombreUsuario' => $nombreUsuario,
					'email' => $strEmail,
					'asunto' => 'Recuperar cuenta - ' . NOMBRE_REMITENTE,
					'url_recovery' => $url_recovery
					);*/

					if ($requestUpdate) {
						$arrResponse = array(
							'status' => true,
							'msg' => 'Se ha enviado un email a tu cuenta de correo para cambiar tu contraseña.'
						);
					} else {
						$arrResponse = array(
							'status' => false,
							'msg' => 'No es posible realizar el proceso, intenta más tarde.'
						);
					}
				}
			}
			echo json_encode($arrResponse, JSON_UNESCAPED_UNICODE);
		}
		die();
	}

	public function confirmUser(string $params){

		
				$data['page_tag'] = "Cambiar contraseña";
				$data['page_name'] = "cambiar_contrasenia";
				$data['page_title'] = "Cambiar Contraseña";

				$data['idpersona'] = 8;

				$this->views->getView($this,"cambiar_password",$data);
		
	}
}