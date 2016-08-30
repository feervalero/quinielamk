
<style type="text/css">
div.rowRes{
	width:80%;
	background-color:#F4F2F2;
	height:80px;
	margin:10px auto;
	padding: 10px;
	box-shadow: 3px 3px 3px gray;
}
.place{
	float:left;
	width:60px;
}
.place{
	margin-right: 10px;
}
.userTitle{
	font-family: 'Tahoma';
	
	line-height: 60px;
	width:70%;
	float:left;
}
.ac{
	font-family: 'Tahoma';
	border-radius: 60px;
	font-size: 30px;
	text-align: center;
	width: 60px;
	margin-right: 10px;
	float:right;
	
	right:0;
	background-color: #FBC02D;
	line-height: 60px;

}
#ss{
	margin-bottom: 80px;
}
</style>


<?php 
	include("connections.php");

	$max = "SELECT MAX(counted) FROM
	(
	    SELECT userid,username,count(*) AS counted from resultados r
		left join users u on u.partido=r.juego and r.resultado=u.resultado
		join juegos j on j.id=r.juego
		where j.jornada=".$jornada."
		and userid is not null
		group by userid,username
		order by count(*) desc
	) as counts;";


	$result= "SELECT userid,username,count(*) from resultados r
	left join users u on u.partido=r.juego and r.resultado=u.resultado
	join juegos j on j.id=r.juego
	where j.jornada=".$jornada."
	and userid is not null
	group by userid,username
	order by count(*) desc
	";
	$count=mysqli_query($connect,$max);

	$s=$count->fetch_array();

	$maxi=$s[0];
	
	
	$res=mysqli_query($connect,$result);

	$i=1;

	while($row=$res->fetch_array()){
		?>

		<div class="rowRes <?php if($row[2]==$maxi) echo  'ganador'; ?>"  >
			<div class="userTitle"><?php echo $row[1]; ?></div>
			<div class="ac"><?php echo $row[2]; ?></div>
			
		</div>
	<?php
	$i=$i+1;
	}


	

 ?>

 