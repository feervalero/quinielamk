<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
	<title>app</title>
</head>
<body>
	<h1>Agregar Juego</h1>
	<form action="addGame.php" method="POST">
		<?php 
		include("connections.php");
		$query = mysqli_query($connect,"SELECT * FROM equipos");
		echo "<h3>Local</h3> <select class='form-control' name='local'>";
		while($row=$query->fetch_array()){
			echo "<option value='$row[0]'>".$row[1]."</option>";
		}
		echo "</select>";
		$query = mysqli_query($connect,"SELECT * FROM equipos");
		echo "<h3>Visitante</h3> <select class='form-control' name='visitante'>";
		while($row=$query->fetch_array()){
			echo "<option value='$row[0]'>".$row[1]."</option>";
		}
		echo "</select>";
		
		?>
		<h3>Jornada</h3><select class='form-control' name="jornada">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
		</select>
		<input type="submit" name="add" class="btn btn-success">
	</form>


	
</body>
</html>