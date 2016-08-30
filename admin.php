<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="import" href="jquery-3.1.0.min.js">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap.css">
	<link rel="import" href="bower_components/polymer/polymer.html">
	<link rel="import" href="bower_components/webcomponentsjs/webcomponents.js"
	><link rel="import" href="bower_components/paper-drawer-panel/paper-drawer-panel.html">
	<link rel="import" href="bower_components/paper-header-panel/paper-header-panel.html">
	<link rel="import" href="bower_components/paper-toolbar/paper-toolbar.html">
	<link rel="import" href="bower_components/paper-icon-button/paper-icon-button.html">
	<link rel="import" href="bower_components/iron-pages/iron-pages.html">
	<link rel="import" href="bower_components/iron-iconset-svg/iron-iconset-svg.html">
	<link rel="import" href="bower_components/paper-menu/paper-menu.html">

</head>
<body fullbleed>
	<paper-drawer-panel>
	  <paper-header-panel drawer>
	    <paper-toolbar></paper-toolbar>
	    <div> Drawer content... 
	    	<paper-menu>
	    		<paper-item id="paper-1">home</paper-item>
	    		<paper-item>Item 2</paper-item>
	    		<paper-item>Item 3</paper-item>
	    	</paper-menu>
	    </div>
	  </paper-header-panel>
	  <paper-header-panel main>
	   <!--  <paper-toolbar>
	    	<paper-icon-button icon="menu" on-tap="openHome()"></paper-icon-button>
	    </paper-toolbar> -->
	    <div>
	    	<iron-pages selected="0">
	    		<section>
	     			<?php include("mainResults.php") ?> 
	    		</section>
	    		<section>2</section>
	    		<section>3</section>
	    	</iron-pages>
	    </div>
	  </paper-header-panel>
	</paper-drawer-panel>

	<script>
	$(document).ready(function(){

		$("#paper-1").click(function(){
			console.log("hola");
		});
	});
	</script>
</body>
</html>