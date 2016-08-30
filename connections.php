<?php 
$connect = mysqli_connect("mysql7.000webhost.com","a6489641_root","IAS343073","a6489641_qui");
/*$connect = mysqli_connect("localhost","root","","quiniela");*/

$connect->query("SET CHARACTER SET utf8");

$result  = mysqli_query($connect,"select * from config where attribute='jornada'");
$value = $result->fetch_array();
$jornada=$value[1];

$result1  = mysqli_query($connect,"select * from config where attribute='editable'");
$value1 = $result1->fetch_array();
$editable=$value1[1]
		
?>