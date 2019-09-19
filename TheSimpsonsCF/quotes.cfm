<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Quotes</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
	<div class="contenedor">
		<div class="cont">
			<div class="top-all">
				<div class="head-top"><span class="word">Combo</span></div>
				<div class="pre-nav">
					<div class="nav slt">
						<span>Combo</span><br>
						<select id="slt">
							<option value="10">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>
					</div>
				</div>
			</div>
		</div>
		<div class="cont">
			<div class="bot-right">
				<div class="head-top"><span class="word">a</span></div>
				<div id="list" class="nav"></div>
			</div>

			<div class="bot-left">
				<div class="head-top"><span class="word">b</span></div>
				<div id="screen" class="nav">
					<span id="quote"></span><br>
					<center><img class="image" src="http://cdn.onlinewebfonts.com/svg/img_504566.png" id="image"></center>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery/jquery-3.4.1.js"></script>
	<script src="js/ajax.js"></script>
</body>
</html>