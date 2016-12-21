<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<%
	String msg = request.getParameter("msg");
	if (msg != null) {
		out.print("<p align=center><font color=blue> " + msg
				+ "</font></p>");
	}
%>

<title>PickMyReel</title>
</head>
<body>
	<nav class="navbar navbar-default" style="background-color: #f54803">
	<div class="navbar-header">
		<a class="navbar-brand" href="WelcomePage.jsp"><font color=white>PickMyReel</font></a>
	</div>
	<div>
		<ul class="nav navbar-nav">
			<li><a href="Home.jsp"><font color=white><span class="glyphicon glyphicon-home"></span>Home</font></a></li>
			
		</ul>
		<ul class="nav navbar-nav navbar-right">
      			<li><a href="Aboutus.jsp"><font color="white"><span class="glyphicon glyphicon-eye-open"></span>AboutUs</font></a></li>
      			
      			</ul>
	</div>
	</nav>


	<div class="container">
		<div class="col-sm-4"></div>

		<div class="col-sm-5" style="margin-top: 20px">

			<h1 align="center">Login</h1>
			
<!-- <img src="./images/logo.png" style="width: 200px; height: 100px">-->
				<form action="LoginController">
					<table align="center" class="table">
						<tr>
							<td><b>Username:</b></td>
							<td><input type=text name="username" required></td>
						</tr>
						
						<tr>
							<td><b>Password</b></td>
							<td><input type=password name="password" required></td>
						</tr>
						
						<tr>
							<td><input type=submit value=login></td>
							<td>Are you new user?<a href=SignUp.jsp>sign up</a></td>
						</tr>


					</table>
				</form>
				<%
					String user = request.getParameter("username");
					String error = request.getParameter("error");
					if (user == "") {
						out.print("<table align=center><tr><td><font color=red>*"
								+ "please enter username and password"
								+ "</font color></td></tr></table>");
					} else if (user != null) {
						out.print("<table align=center><tr><td><font color=red>* It seems you have not registered!! or your password may be wrong!!"
								+ "</font color></td></tr></table>");
					}
					if (error != null) {
						out.print("<table align=center><tr><td><font color=red>*"
								+ error + "</font color></td></tr></table>");
					}
				%>
			</div>
		</div>
	
	<div class=well-lg size=70px style="background-color: #313637; margin-top: 180px"> <footer>
   <font color=white>Contact us:pickmyreel@gmail.com</font>
  <!--  <a href="mailto:someone@example.com"><font color=white>About us:</a> -->
  
</footer></div>
</body>
</html>