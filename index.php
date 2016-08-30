<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap.css">
	<title>app</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style type="text/css">
		paper-radio-group {
			display: inline-block;
		}

		paper-radio-group  > * {
			padding: 0px 14px;
		}
		#quiniela{
			margin:0px auto;
			text-align: center;
		}
		.submit{
			margin: 20px 15% ;
			
			width:70%;
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
		body{
			height:100%;
		}
		#cont{
			background:url("img/blur2.jpg");
			background-size:auto 100%;
			background-position: center;

		    height: 100%;
		    position: fixed;
		    top: 0;
		    right: 0;
		}

	</style>
</head>
<body>
	<div id="cont" width="100%">
		<?php 
			
				include("login.php");
			
		?>

	</div>
	<script type="text/javascript">
	function statusChangeCallback(response) {
	    console.log('statusChangeCallback');
	    console.log(response);
	    var boton = "<button  scope='public_profile,email' onlogin='checkLoginState();' onclick='openLoginDialog()' class='btn btn-info'>LOGIN WITH FACEBOOK</button>"

	    if (response.status === 'connected') {
	      testAPI();
	    } else if (response.status === 'not_authorized') {
	      // The person is logged into Facebook, but not your app.
	      document.getElementById('status').innerHTML = boton;
	    } else {
	      
	      document.getElementById('status').innerHTML = boton;
	    }
	}
	function openLoginDialog(){
		FB.login(function(response) {
	  if (response.status === 'connected') {
	    // Logged into your app and Facebook.
	    testAPI();
	    console.log("connected");
	  } else if (response.status === 'not_authorized') {
	    // The person is logged into Facebook, but not your app.
	    console.log("not connected");
	  } else {
	    // The person is not logged into Facebook, so we're not sure if
	    // they are logged into this app or not.
	    console.log("not connected");
	  }
	});
	}
	 
	function checkLoginState() {
	    FB.getLoginStatus(function(response) {
	      statusChangeCallback(response);
	    });
	  }

	  window.fbAsyncInit = function() {
	  FB.init({
	    appId      : '203277810063419',
	    cookie     : true,  // enable cookies to allow the server to access 
	                        // the session
	    xfbml      : true,  // parse social plugins on this page
	    version    : 'v2.5' // use graph api version 2.5
	  });

	  

	  FB.getLoginStatus(function(response) {
	    statusChangeCallback(response);
	  });

	  };

	  // Load the SDK asynchronously
	  (function(d, s, id) {
	    var js, fjs = d.getElementsByTagName(s)[0];
	    if (d.getElementById(id)) return;
	    js = d.createElement(s); js.id = id;
	    js.src = "//connect.facebook.net/en_US/sdk.js";
	    fjs.parentNode.insertBefore(js, fjs);
	  }(document, 'script', 'facebook-jssdk'));

	  // Here we run a very simple test of the Graph API after login is
	  // successful.  See statusChangeCallback() for when this call is made.
	  function testAPI() {
	    console.log('Welcome!  Fetching your information.... ');
	    FB.api('/me', function(response) {
	      console.log('Successful login for: ' + response.name);
	      /*document.getElementById('status').innerHTML ='Thanks for logging in, ' + response.name + '!';*/
	      window.location="/home.php?userid="+response.id+"&username="+response.name;
	    });
		FB.api('/me/picture?type=square', function(response) {
	     var xhttp = new XMLHttpRequest();
	     console.log("encodeimage.php?url_image="+response.data.url+"&userid="+userid);
	     /*xhttp.open("POST", "encodeimage.php?url_image="+response.data.url+"&userid="+userid, true);*/
	     $.post('encodeimage.php', {url_image: response.data.url,userid:userid});
	    });
			
	  }
	</script>

	<div id="status">	</div>
	
</body>
</html>