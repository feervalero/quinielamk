<?php 
	$image=$_POST['url_image'];
	$userid=$_POST['userid'];
	$b64image = base64_encode(file_get_contents($image));


	include("connections.php");

	mysqli_query($connect,"INSERT INTO `images`(userid,image) VALUES ('".$userid."', '".$b64image."');");

 ?>