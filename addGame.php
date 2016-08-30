<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<title>app</title>
<?php 
/*update jornada	*/
/*URL : http://localhost:8080/quiniela/updateJornada.php?jornada=2 */
	
	include("connections.php");

	$local=$_POST['local'];
	$visitante=$_POST['visitante'];
	
	echo $jornada;
	echo $local;
	echo $visitante;


	$query ="INSERT INTO `juegos` (`jornada`, `local`, `visitante`) VALUES (".$jornada.",".$local.",".$visitante.");";

	mysqli_query($connect,$query);

	header("Location: update.php");
	


?>
</head>
</html>