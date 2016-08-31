<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap.css">
	<link rel="icon"  href="favicon.ico">
	<title>Quiniela MK</title>
	<script src="jquery-3.1.0.min.js"></script>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script type="text/javascript">
	$(document).ready(function(){
		$("#ss").hide();
	});
	</script>
	
	<style type="text/css">
		html,body{
			height:100%;
			margin:0;
			padding:0;
		}
		paper-radio-group {
			display: inline-block;
		}

		paper-radio-group  > * {
			padding: 0px 14px;
		}
		#quiniela{
			margin:0px auto;
			text-align: center;
			/*width:94%;*/

		}
		#formulario > table{
			padding:22px;
		} 
		.submit{
			margin: 20px 15% ;
			width:70%;
			margin-bottom: 80px;
		}
		#formulario{
			margin-bottom: 80px;
		}
		.submit th{
			text-align: center;
			background-color: 	red;
		}
		paper-radio-button.x-scope.paper-radio-button-0 {
			width: 42px;
		}
		.submit td{
			text-align: center;
		}
		header{
			background-color:#0288D1;
			width:100%;
			height:60px;
			color:white;
			box-shadow:2px 0px 3px  gray;
			margin-bottom:20px;
			z-index: 999;
		}
		paper-tabs,#tabs{
			position: fixed;
			bottom:0;
			width:100%;
		}

		paper-tab{
			background-color: #FBC02D;
		}
	</style>
</head>
<body>
	<?php include("connections.php");  ?>
	
	<div id="tt" width="100%">
		<header>
			<h1><?php  echo "Jornada ".$value[1]; ?> </h1>
			
		</header>
		<span id="ah"></span>
		<?php 
			$id=$_GET['userid'];
			$name=$_GET['username'];
		 ?>
		<form id="formulario" action='<?php echo "updateinfo.php?userid=".$id."&username=".$name; ?>' method="POST">	
			<?php 	include("tabla.php"); ?>
			<!-- <input type="text" name="ss"  value="<?php echo $_GET['userid'];?>" hidden> -->
			<?php
				if($editable=="true")
					/*echo "<input type='submit' class='btn submit btn-info' value='Guardar'>";*/
			?>
		
		</form>
		
	</div>
	<div hidden id="ss">
	<header>
			<h1><?php  echo "Jornada ".$value[1]; ?> </h1>
			
		</header>
		<span id="ah"></span>
		<!-- <?php include ("resultados.php"); ?> -->
		<a onclick="showAll()" href="#?all=true">Ver todos los resultados</a>
		<span hidden id="allR">	
				<!-- <?php include ("mainResults.php"); ?> -->
		</span>
	</div>
	<!-- <paper-tabs selected="0">
		<paper-tab onclick="showtable()">Mi quiniela</paper-tab>
		<paper-tab onclick="showresults()">Resultados</paper-tab>
	</paper-tabs> -->

	<div id="tabs">
		<div onclick="showtable()" class="tab">Mi quiniela</div>
		<div onclick="showresults()" class="tab">Aciertos</div>
	</div>

<script type="text/javascript">
	/*if(!getUrlVars()["save"]){
		alert(
		"Recuerda que tienes hasta el viernes a las 5 PM para actualizar tus resultados.\n"+
		"1. Ingresa tus resultados. \n"+
		"2. Paga la cuota de $20 pesos con Raul Rios. \n"+
		"3. No olvides guardar tu informacion. \n"+
		"MUCHA SUERTE!!!");
	}
	if(getUrlVars()["save"]){
		alert("Tus resultados han sido guardados.");
	}
	*/
	function getUrlVars() {
		var vars = {};
		var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
			vars[key] = value;
		});
		return vars;
	}

	function showAll(){
		$("#allR").toggle();
	}

	function showtable(){
		$("#ss").hide();
		$("#tt").fadeIn("slow");
	}
	function showresults(){
		$("#tt").hide();
		$("#ss").fadeIn("slow");
	}
	$(document).ready(function(){
		$("#ss").hide();
	});
</script>
</body>
</html>
