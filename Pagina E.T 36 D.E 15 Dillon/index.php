<?php
//declaracion de variables
/*$miVariable = 7;
$miVariable2 = 7.7;
$miVariable3 = "siete";

//imprimir variables
//var_dump($miVariable);
//var_dump($miVariable2);
//var_dump($miVariable3);

//Formas de crear array
$miArray = [];
$miArray [] = 1;
$miArray [] = 2;
$miArray [] = 3;
$miArray1 = array(2, 3, 4);

//var_dump($miArray);
//var_dump($miArray1);
$miArray3=array(
	'pais'=>"Argentina",'nombre'=>"Messi"

	);

/*var_dump($miArray3['nombre']);
var_dump($miArray3['pais']);
var_dump($_GET);*/


/*var_dump($archivos);*/

include 'nav\nav.php';

if (isset($_GET['pagina'])) {
	$archivos = scandir('paginas');
	if (in_array($_GET['pagina'].'.php', $archivos)) {
		include 'paginas\\'.$_GET['pagina'].'.php';
	}
	else {
		include 'paginas\\pagina_error.php';
	}

}
else {
	include 'paginas\\inicio.php';
}
//include 'paginas\home.php';
include 'footer\footer.php';
?>