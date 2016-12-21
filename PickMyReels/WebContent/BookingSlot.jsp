<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<style type="text/css">
#list option{
		
}
</style>

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
<script type="text/javascript">
	var datefield = document.createElement("input")
	datefield.setAttribute("type", "date")
	if (datefield.type != "date") {
		document
				.write('<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />\n')
		document
				.write('<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"><\/script>\n')
		document
				.write('<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"><\/script>\n')
	}
</script>
<script>


if (datefield.type != "date") {
	jQuery(function($) {
		$('#date').datepicker({
			dateFormat : 'yy/mm/dd',
			maxDate : "+7d",
			minDate : "-0d"
		});
	})
}
</Script>
<%
	String msg = request.getParameter("msg");
	if (msg != null) {
		out.print("<p align=center><font color=#f54803> " + msg
				+ "</font></p>");
	}
%>

<title>PickMyReel</title>
</head>
<body>
	<div class="wrap">
		<div class="page">
			<nav class="navbar navbar-default" style="background-color: #f54803">
			<div class="navbar-header">
				<a class="navbar-brand"><font color=white>PickMyReel</font></a>
			</div>
			<div>
      			<ul class="nav navbar-nav">
       		    <li><a href="History.jsp"><font color="white"><span class="glyphicon glyphicon-list-alt"></span>History</font></a></li>
        		
      			</ul>
      			<ul class="nav navbar-nav navbar-right">
      			<li><a href="LogoutController"><font color="white"><span class="glyphicon glyphicon-log-out"></span>Logout</font></a></li>
      			</ul>
    			</div>
			</nav>
	
	<form action="TheaterNames.jsp">
		<div class="container" align="center" >
					<select  class="form-control" id="list" style="width: 300px" name="movie"
						required>

						<option style="display: none">Select Movie</option>
						<optgroup label="English">
						<option>Malifecient</option>
						<option>Cinderella</option>
						<option>Fast and Furious7</option>
						<option>Inside Out</option>
						<option>Seventh son</option>
						<option>Hulk</option>
						<option>Spectre</option>
						<option>Jurassic World</option>
						<option>The Hobbit</option>
						<option>The Raid</option>
						<option>Avengers2</option>
						<option>Chappie</option>
						<option>The Wolverine</option>
						<option>Dawn of the Planet of the Apes</option></optgroup>
						<optgroup label="Telugu">
						<option>Baahubali-The Beginning</option>
						<option>Kerintha</option>
						<option>Basthi</option>
						</optgroup>
						<optgroup label="Hindi">
						<option>I Love NY</option>
						<option>Dil Dhadakne Do</option>
						<option>Bajrangi Bhaijaan</option>
						</optgroup>
					</select><br><div class="form-group"><div class="input-group"style="width: 5px;">
					<span class="input-group-addon">
					<i class="glyphicon glyphicon-calendar"></i>
					</span><input type=date placeholder="Select Date" id=date style="width: 260px;"
						name="date" required></div></div>
					 <br> <br>
						<input type=submit value=Proceed>
										</div>
			
			
				
						<br> <br>
</form>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img class="first-slide" src="./images/rio2.png"
							alt="First slide" style="width: 600px; height: 350px">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<div class="item">
						<img class="second-slide" src="./images/dory1.png"
							alt="Second slide" style="width: 600px; height: 350px">
						<div class="container">
							<div class="carousel-caption"></div>
						</div>
					</div>
					<div class="item">
						<img class="third-slide" src="./images/zootopia.png"
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


		</div>
	</div>
	<div class=well-lg size=70px style="background-color: #313637; margin-top: 19px"> <footer>
   <font color=white>Contact us:pickmyreel@gmail.com</font>
  <!--  <a href="mailto:someone@example.com"><font color=white>About us:</a> -->
  
</footer></div>
</body>
</html>