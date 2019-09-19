<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>The Simpsons</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <div class="contenedor">
	    <div class="option">
	    	<center>
	    		<span class="">Inicia sesion con <b>Facebook</b></span><br><br>
	    		<button id="btn_facebook" onclick="singInWithFacebook();" class="btn">Facebook</button>
	    	</center>
	    </div>
    </div>

	<script src="js/jquery/jquery-3.4.1.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.10.1/firebase-app.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.10.1/firebase-auth.js"></script>
	<script src="https://www.gstatic.com/firebasejs/5.10.1/firebase-database.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>