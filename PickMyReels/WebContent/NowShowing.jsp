<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./bootstrap/css/styles.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>


<title>PickMyReel</title>
</head>
<body>
	<div class="wrap">
		<div class="page">
			<nav class="navbar navbar-default" style="background-color: #f54803">
			<div class="navbar-header">
				<a class="navbar-brand" href="WelcomePage.jsp"><font color=white>PickMyReel</font></a>
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
			</nav>
			<ul class="nav nav-tabs">
				<li><a href="NowShowing.jsp">NowShowing</a></li>
				<li><a href="ComingSoon.jsp">Coming Soon</a></li>
			</ul>

			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img class="first-slide" src="./images/baahubali.png"
							alt="First slide" style="width: 600px; height: 350px">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
						
					</div>
					<div class="item">
						<img class="second-slide" src="./images/Insideout.png"
							alt="Second slide" style="width: 600px; height: 350px">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<div class="item">
						<img class="third-slide" src="./images/jurasicworld.png"
							alt="Third slide" style="width: 600px; height: 350px">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			<!-- /.carousel -->

			<div class="d3">
				<span></span>
				<div class="poster_wrap">
					<div class="p_box left" id="p1"
						style="background-image: url(./images/seventhson.png)">
						<span class="p_title">Seventh son</span>
					</div>
					<div class="p_box" id="p2"
						style="background-image: url(./images/hulk.png)">
						<span class="p_title">Hulk</span>
					</div>
					<div class="p_box left" id="p3"
						style="background-image: url(./images/spectre.png)">
						<span class="p_title">Spectre</span>
					</div>
					<div class="p_box" id="p4"
						style="background-image: url(./images/taken3.png)">
						<span class="p_title">TAK3N</span>
					</div>

				</div>
			</div>


		</div>
	</div>
	<div class=well-lg size=70px style="background-color: #313637;"> <footer>
   <font color=white>Contact us:pickmyreel@gmail.com</font>
  <!--  <a href="mailto:someone@example.com"><font color=white>About us:</a> -->
  
</footer></div>
</body>
</html>