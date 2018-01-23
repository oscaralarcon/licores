<?php
	header('Access-Control-Allow-Origin: *');
		require_once '../modelos/entidaddetallelicores.php';
		require_once '../modelos/modelodetallelicores.php';

		$modeldl= new ModelDetalleLicores();

		if(isset($_REQUEST['Accion'])){
			switch($_REQUEST['Accion']){

			case 'listar':
					$jsondata=$modeldl->listar();
					header('Content-type: application/json; charset=utf-8');
					echo json_encode($jsondata);
					break;
	        case 'obtener':
	            $jsondata = $modeldl->Obtener($_REQUEST['ccId']);
	            header('Content-type: application/json; charset=utf-8');
	            echo json_encode($jsondata);            
	            break;		
	  	}
	}
?>