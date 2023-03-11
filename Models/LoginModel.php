<?php 

	class LoginModel extends Mysql
	{
		private $intIdUsuario;
		private $strUsuario;
		private $strPassword;
		private $strToken;

		public function __construct()
		{
			parent::__construct();
		}	

		public function login_User(string $usuario, string $password)
		{
			$this->strUsuario = $usuario;
			$this->strPassword = $password;
			$sql = "SELECT id_usuario,status FROM tbl_usuario WHERE 
					correo = '$this->strUsuario' and 
					contrasena = '$this->strPassword' and 
					status != 0 ";
			$request = $this->select($sql);
			return $request;
		}


		public function sessionLogin(int $iduser){
			$this->intIdUsuario = $iduser;
			//BUSCAR ROLE 
			$sql = "SELECT p.id_usuario,
							p.usuario,
							p.nombre_usuario,
							p.telefono,
							p.estado_usuario,							
							p.correo,
							r.id_rol,r.rol,
							p.status 
					FROM tbl_usuario p
					INNER JOIN tbl_roles r
					ON p.id_rol = r.id_rol
					WHERE p.id_usuario = $this->intIdUsuario";
			$request = $this->select($sql);
			$_SESSION['userData'] = $request;
			return $request;
		}

		public function getUserEmail(string $strEmail){
			$this->strUsuario = $strEmail;
			$sql = "SELECT idpersona,nombres,apellidos,status FROM persona WHERE 
					email_user = '$this->strUsuario' and  
					status = 1 ";
			$request = $this->select($sql);
			return $request;
		}

		public function setTokenUser(int $idpersona, string $token){
			$this->intIdUsuario = $idpersona;
			$this->strToken = $token;
			$sql = "UPDATE persona SET token = ? WHERE idpersona = $this->intIdUsuario ";
			$arrData = array($this->strToken);
			$request = $this->update($sql,$arrData);
			return $request;
		}

		public function getUsuario(string $email, string $token){
			$this->strUsuario = $email;
			$this->strToken = $token;
			$sql = "SELECT idpersona FROM persona WHERE 
					email_user = '$this->strUsuario' and 
					token = '$this->strToken' and 					
					status = 1 ";
			$request = $this->select($sql);
			return $request;
		}

		public function insertPassword(int $idPersona, string $password){
			$this->intIdUsuario = $idPersona;
			$this->strPassword = $password;
			$sql = "UPDATE persona SET password = ?, token = ? WHERE idpersona = $this->intIdUsuario ";
			$arrData = array($this->strPassword,"");
			$request = $this->update($sql,$arrData);
			return $request;
		}
	}
 ?>