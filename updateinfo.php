<?php 	
	include("connections.php");

	$delete = "DELETE FROM `users` WHERE `userid`=".$_GET['userid'];
	mysqli_query($connect,$delete);
	foreach ($_POST as $key => $value){
		$query = "INSERT INTO `users`(`userid`, `username`, `partido`, `resultado`) VALUES ('".$_GET['userid']."','".$_GET['username']."',".htmlspecialchars($key).",'".htmlspecialchars($value)."');";
			echo "UserID:".$_GET['userid'].", Field: ".htmlspecialchars($key).", Score:".htmlspecialchars($value)."<br>";
			echo $query;
			mysqli_query($connect,$query) or die(mysql_error());
		}
 	$params ="?userid=".$_GET['userid']."&username=".$_GET['username']."&save=t";
	header("Location: home.php".$params);
 ?>