<?php

	class conexion
{
	public $base;
	function __construct()
	{
		try{
			$this->base = new PDO('mysql:host=localhost;dbname=inscripcion;charset=utf8mb4', 'root', '');
		}
		catch (Exception $e) {
	 echo 'Error al conectar al servidor'; 
	    }

	}

}
class alumnoDao extends conexion{
	public function insertAlumno($alumno1)
   {
   	$conexion = new conexion();

   	$sql="INSERT INTO usuario ( Nombre, Apellido, DNI, email, Direccion, Telefono, Sexo, Orientacion, Consulta) 
	 VALUES(:nombre, :apellido, :dni, :email, :dire, :tel , :sexo, :orientacion, :consultas)";
	 $resultado=$conexion->base->prepare($sql);
	 $resultado->execute(array(
	 ":nombre"=>$alumno1->getNombre(), 
	 ":apellido"=>$alumno1->getApellido(), 
	 ":dni"=>$alumno1->getDni(), 
	 ":email"=>$alumno1->getemail(), 
     ":dire"=>$alumno1->getDireccion(), 
     ":tel"=>$alumno1->gettelefono(), 
	 ":sexo"=>$alumno1->getSexo(), 
	 ":orientacion"=>$alumno1->getOrientacion(), 
	 ":consultas"=>$alumno1->getConsulta()
	 ));
	 return $resultado;
   }
	public function select(){
	$conexion = new conexion();
    $sql = 'SELECT id,Nombre,Apellido,DNI,email,Direccion,Telefono,Sexo,Orientacion,Consulta FROM usuario';
    foreach ($conexion->base->query($sql) as $row) {
    	?>
        <?php echo "id: ".$row['id'];?></br>
        <?php echo "Nombre: ".$row['Nombre'];?></br>
        <?php echo "Apellido: ".$row['Apellido'];?></br>
        <?php  echo "Dni: ".$row['DNI'];?></br>
        <?php echo "Email: ".$row['email'];?></br>
        <?php echo "Direccion: ".$row['Direccion'];?></br>
        <?php echo "Telefono: ".$row['Telefono'];?></br>
        <?php echo "Sexo: ".$row['Sexo'];?></br>
        <?php echo "Orientacion: ".$row['Orientacion'];?></br>
        <?php echo "Consulta: ".$row['Consulta'];?></br>
        <?php 
    }

		}
    public function borrar(){
    $conexion = new conexion();
    $sql = 'TRUNCATE TABLE usuario';
    }
}


?>