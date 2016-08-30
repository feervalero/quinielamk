<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>
<body>
<form action="saveResult.php" method="post">
<?php 
		include("connections.php");
		$query = mysqli_query($connect,"SELECT * from juegos j join equipos l on l.id=j.local	join equipos v on v.id=j.visitante WHERE jornada='$jornada'");
		echo "<h3>Juego</h3><select name='juego' class='form-control'>";
		while($row=$query->fetch_array()){
			echo "<option value='$row[0]'>".$row[5]." - ".$row[9]."</option>";

		}
		
		?>
		</select>
		<h3>Resultado</h3>
		<select name='resultado' class="form-control">
			<option>L</option>
			<option>E</option>
			<option>V</option>
		</select>
		<input type="submit" class="btn btn-info">
	</form>
<?php 	
	$query = mysqli_query($connect,"SELECT * from resultados r ");
	
	while($row=$query->fetch_array()){
		echo $row[0]." - ".$row[1]." - ".$row[2]."<br>";
		
	}


 ?>

</body>
</html>