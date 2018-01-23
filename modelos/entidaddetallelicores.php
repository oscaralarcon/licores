<?php
	class DetalleLicores{
		private $dl_id;
		private $dl_nombre;
		private $dl_descripcion;
		private $dl_urlimagenp;
		private $dl_urlimagens;
		private $dl_categoria_id;
		private $dl_categoria_nombre;	
		public function __GET ($k){
			return $this->$k;
		}
		public function __SET($k,$v){
			$this->$k=$v;
		}
		public function returnArray(){
			return get_object_vars($this);
		}
	}
?>