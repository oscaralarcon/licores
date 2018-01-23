<?php
	function conectarse(){
		if(!($link=mysql_connect("localhost","root",""))){
			echo "Error conectando a la base de datos .1";
			exit();
		}
		if(!mysql_select_db("licores",$link)){
			echo "Error conectando a la base de datos .2";
			exit();			
		}
		return $link;
	}

	function listarLicores(){//Listado
		$conecta=conectarse();
		$query="select * from detalle_licores";
		$resultado = mysql_query($query,$conecta);
		return $resultado;
	}
?>