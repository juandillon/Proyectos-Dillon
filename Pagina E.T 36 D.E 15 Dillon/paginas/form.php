 <p>Estos fueron los datos ingresados: </p>
 <p>Comprobando datos...</p>
<?php
include 'dao\\AlumnoDao.php';
include 'entidades\\Alumno.php';
$Nombre =$_POST['nombre'];
$Apellido = $_POST['apellido'];
$DNI = $_POST['dni'];
$EMAIL = $_POST['email'];
$TEL = $_POST['tel'];
$DIRE = $_POST['direccion'];
$SEX = $_POST['sexo'];
$ORI = $_POST['orientacion'];
$CONS = $_POST['consultas'];

$alumno = new Alumnos();
$alumno ->setNombre($Nombre);
$alumno ->setApellido($Apellido);
$alumno ->setDni($DNI);
$alumno ->setemail($EMAIL);
$alumno ->settelefono($TEL);
$alumno ->setDireccion($DIRE);
$alumno ->setSexo($SEX);
$alumno ->setOrientacion($ORI);
$alumno ->setConsulta($CONS);

$alumnoDao = new AlumnoDao();

$alumnos = $alumnoDao->insertAlumno($alumno);
$alumnos = $alumnoDao->select();
$alumnos = $alumnoDao->borrar();
?>
<p>Esta siendo redirigido a la pagina de inicio...</p>
<META HTTP-EQUIV="REFRESH" CONTENT="7;URL=?pagina=inicio">
