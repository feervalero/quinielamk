<?php 	
		include("connections.php");
		mysqli_query($connect,"DELETE FROM `resultados` WHERE juego='".$_POST['juego']."';");
		mysqli_query($connect,"INSERT INTO `resultados`(`juego`, `resultado`) VALUES ('".$_POST['juego']."','".$_POST['resultado']."')");

		header("Location: updateResultado.php");





 ?>