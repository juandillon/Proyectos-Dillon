<?php

class Alumnos{
	private $nombre;
	private $apellido;
	private $dni;
	private $direccion;
	private $sexo;
	private $orientacion;
	private $consulta;
	private $telefono;
	private $email;
public function setDni($DNI){
       $this->dni=$DNI;
       return $this;
	}

	public function setNombre($Nombre){
       $this->nombre=$Nombre;
       return $this;
	}
		public function setApellido($Apellido){
       $this->apellido=$Apellido;
       return $this;
	}
		public function setDireccion($DIRE){
       $this->direccion=$DIRE;
       return $this;
	}
		public function setSexo($SEX){
       $this->sexo=$SEX;
       return $this;
	}
		public function setOrientacion($ORI){
       $this->orientacion=$ORI;
       return $this;
	}
		public function setConsulta($CONS){
       $this->consulta=$CONS;
       return $this;
	}
	public function settelefono($TEL){
       $this->telefono=$TEL;
       return $this;
	}
	public function setemail($EMAIL){
       $this->email=$EMAIL;
       return $this;
	}
    public function gettelefono(){
		return $this->telefono;
	}
	public function getemail(){
		return $this->email;
	} 
	public function getDni(){
		return $this->dni;
	}
	public function getNombre(){
		return $this->nombre;
	}
	public function getApellido(){
		return $this->apellido;
	}
	public function getDireccion(){
		return $this->direccion;
	}
	public function getSexo(){
		return $this->sexo;
	}
	public function getOrientacion(){
		return $this->orientacion;
	}
	public function getConsulta(){
		return $this->consulta;
	}
	

}


?>