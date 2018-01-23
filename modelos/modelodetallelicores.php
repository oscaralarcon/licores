<?php
	error_reporting(E_ALL);
	ini_set('display_errors', '1');
	require_once '../config/config.php';
	class ModelDetalleLicores{
		private $pdo;
		public function __CONSTRUCT() {
			try{
				$this->pdo=new PDO('mysql:host='.HOST.';dbname='.DB,USERDB,PASSDB);
				$this->pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
			}catch(Exception $e){
				die($e->getMessage());
			}
		}
		public function listar(){
			$responsearray = array();
			try{
				$result = array();
				$stm=$this->pdo->prepare("SELECT * FROM detalle_licores, categoria_licores where categoria_id=dlicores_categoria_id");
				$stm->execute();
				foreach($stm->fetchALL(PDO::FETCH_OBJ) as $r){
					$detallelicor = new DetalleLicores();
						$detallelicor->__SET('dl_id', $r->dlicores_id);
						$detallelicor->__SET('dl_nombre', $r->dlicores_nombre);
						$detallelicor->__SET('dl_descripcion', utf8_encode($r->dlicores_descripcion));
						$detallelicor->__SET('dl_urlimagenp', $r->dlicores_urlimagen_p);
						$detallelicor->__SET('dl_urlimagens', $r->dlicores_urlimagen_s);
						$detallelicor->__SET('dl_categoria_id', $r->dlicores_categoria_id);
		                $detallelicor->__SET('dl_categoria_nombre', $r->categoria_nombre);
					$result[] = $detallelicor->returnArray();
				}
				$responsearray['success']=true;
				$responsearray['message']='Listado correctamente';
				$responsearray['datos']=$result;
			}catch(Exception $e){
				echo $e;
				$responsearray['success']=false;
				$responsearray['message']='Error al listar detallelicornos';
			}
			return $responsearray;
		}
		public function Obtener($id){
	        $jsonresponse = array();
	        try{
	            $stm = $this->pdo->prepare("SELECT * FROM detalle_licores, categoria_licores 
	            							where categoria_id=dlicores_categoria_id
	                                		AND dlicores_id = ?");
	            $stm->execute(array($id));
	            $r = $stm->fetch(PDO::FETCH_OBJ);
	            $detallelicor = new DetalleLicores();
						$detallelicor->__SET('dl_id', $r->dlicores_id);
						$detallelicor->__SET('dl_nombre', $r->dlicores_nombre);
						$detallelicor->__SET('dl_descripcion', utf8_encode($r->dlicores_descripcion));
						$detallelicor->__SET('dl_urlimagenp', $r->dlicores_urlimagen_p);
						$detallelicor->__SET('dl_urlimagens', $r->dlicores_urlimagen_s);
						$detallelicor->__SET('dl_categoria_id', $r->dlicores_categoria_id);
		                $detallelicor->__SET('dl_categoria_nombre', $r->categoria_nombre);

	            $jsonresponse['success'] = true;
	            $jsonresponse['message'] = 'Se obtuvo  correctamente';
	            $jsonresponse['datos'] = $detallelicor->returnArray();
	        } catch (Exception $e){
	            $jsonresponse['success'] = false;
	            $jsonresponse['message'] = 'Error ';             
	        }
	        return $jsonresponse;
	    }
	}
?>
