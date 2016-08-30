<style>
	html,body{
		padding:0;
		margin:0;
		font-family:sans-serif;
	}
	table td{
		text-align: center;
	}
	table{
		border-spacing: 0;
	}
	table td{
		height: 40px;
	}
	table th{
		padding:10px 0px;
	}
	tr:nth-child(odd){
		background-color: #cacfd2;
	}
</style>
<?php 
		echo "<meta charset='UTF-8'>";
		
		
		echo "<meta name='viewport' content='width=device-width, initial-scale=1'>";
		include("connections.php");
		$query= "SELECT username,l.nombre,v.nombre,u.resultado
			FROM `users` u 
			join juegos j on j.id=u.partido 
			join equipos l on l.id=j.local
			join equipos v on v.id=j.visitante
			where j.jornada=".$jornada." order by username";

		$res=mysqli_query($connect,$query);
	?>
		<table border="0">
		<tr style="color:white;font-weight:bold;background-color:#2980b9;">
			<th>User</th>
			<th>Local</th>
			<th>Visitante</th>
			<th>Resultado</th>
		</tr>
	<?php
		while($row=$res->fetch_array()){
			echo "<tr>"."<td>".$row[0]."</td>";
			echo "<td>".$row[1]."</td>";
			echo "<td>".$row[2]."</td>";
			echo "<td>".$row[3]."</td></tr>";
		}

	 ?>
	 </table>