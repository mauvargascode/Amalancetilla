<?php 
	
	define("BASE_URL", "http://localhost/amalancetilla/");
	//const BASE_URL = "https://abelosh.com/tienda_virtual/";

	//Zona horaria
	date_default_timezone_set('America/Tegucigalpa');

	//Datos de conexión a Base de Datos
	const DB_HOST = "localhost";
	const DB_NAME = "amalancetilla_bd";
	const DB_USER = "root";
	const DB_PASSWORD = "";
	const DB_CHARSET = "charset=utf8";

	//Deliminadores decimal y millar Ej. 24,1989.00
	const SPD = ".";
	const SPM = ",";

	//Simbolo de moneda
	const SMONEY = "L";
