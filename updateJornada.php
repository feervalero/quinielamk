<?php 
/*update jornada	*/
/*URL : http://localhost:8080/quiniela/updateJornada.php?jornada=2 */
	include("connections.php");
	$jornada=$_GET['jornada'];
	
	$update = "UPDATE `config` SET `value`=$jornada WHERE `attribute`='jornada'";

	mysqli_query($connect,$update);


?>