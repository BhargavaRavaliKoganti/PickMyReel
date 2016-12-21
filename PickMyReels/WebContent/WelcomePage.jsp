<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">

<meta charset=utf-8>
<meta name=viewport content=width=device-width, initial-scale=1>
<link rel="stylesheet" href="./bootstrap/css/styles.css">
<link rel=stylesheet
	href=http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css>
<script
	src=https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js></script>
<script
	src=http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js></script>
<title>PickMyReel</title>
</head>
<body>
	<div class="wrap">
		<div class="page">
			<nav class="navbar navbar-default">
			<div class="navbar-header">
				<a class="navbar-brand" href="WelcomePage.jsp"><font
					color="white">PickMyReel</font></a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li><a href="Home.jsp"><font color="white"><span class="glyphicon glyphicon-home"></span>Home</font></a></li>
					<li><a href="Login.jsp"><font color="white"><span class="glyphicon glyphicon-blackboard"></span>BookTickets</font></a></li>

				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="Aboutus.jsp"><font color="white"><span class="glyphicon glyphicon-eye-open"></span>AboutUs</font></a></li>
					<li><a href="Login.jsp"><font color="white"><span class="glyphicon glyphicon-user"></span>MyAccount</font></a></li>
				</ul>
			</div>
			<div class="d2" align="center" style="background-image: url(./images/banner.jpg);">
				<h2>
					<font color=white>Booking performances even smarter!<br>Commerce
						Culture tip
					</font>
				</h2>
				<ul class="con_list">
					<li>Do not go wandering theater.</li>
					<li>One place many options.</li>
					<li>Many blinks to be made.</li>
				</ul>
				<p class="info">※ Beaware movies are waiting for You to blink
					your eyes.</p>
			</div>

			<div class="d3">
				<h1 align="center">
					<font color=white>Can enjoy a variety of shows.</font>
				</h1>
				<span></span>
				<div class="poster_wrap">
					<div class="p_box left" id="p1"
						style="background-image: url(./images/chappie.png)">
						<span class="p_title">Chappie</span>
					</div>
					<div class="p_box" id="p2"
						style="background-image: url(./images/image2.png)">
						<span class="p_title">Jurassic World</span>
					</div>
					<div class="p_box left" id="p3"
						style="background-image: url(./images/image3.png)">
						<span class="p_title">Terminator Genisys</span>
					</div>
					<div class="p_box" id="p4"
						style="background-image: url(./images/image4.png)">
						<span class="p_title">Maleficent</span>
					</div>
					<div class="p_box left" id="p5"
						style="background-image: url(./images/image5.png)">
						<span class="p_title"> The Avengers</span>
					</div>
					<div class="p_box" id="p6"
						style="background-image: url(./images/fastandfurious7.png)">
						<span class="p_title">Fast & Furious 7</span>
					</div>
				</div>
			</div>
			<div class="footer">
				<div class="btnset" align="center">
					<a href="Login.jsp"><span></span>LetsGetTickets</a>
				</div>
			</div>
			</nav>
		</div>
	</div>
</body>
</html>