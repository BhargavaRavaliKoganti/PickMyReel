<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./bootstrap/css/styles.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<title>PickMyReel</title>

<%
	String seats=request.getParameter("seats");
String uniquecode = request.getParameter("code");
String amount = request.getParameter("amount");


HttpSession hs = request.getSession();
String username = (String) hs.getAttribute("name");
String theater = (String) hs.getAttribute("theater");
String time = (String) hs.getAttribute("time");
String movie = (String) hs.getAttribute("movie");
String date = (String) hs.getAttribute("date");



%>
<script>

/* function PrintElem(elem)
{
    Popup($(elem).html());
}

function Popup(data) 
{
    var mywindow = window.open('', 'my div', 'height=400,width=600');
    mywindow.document.write('<html><head><title>my div</title>');
    /*optional stylesheet //mywindow.document.write('<link rel="stylesheet" href="main.css" type="text/css" />');
    mywindow.document.write('</head><body >');
    mywindow.document.write(data);
    mywindow.document.write('</body></html>');

    mywindow.document.close(); // necessary for IE >= 10
    mywindow.focus(); // necessary for IE >= 10

    mywindow.print();
    mywindow.close();

    return true;
    } */

</script>
</head>
<body>
	<nav class="navbar navbar-default" style="background-color: #f54803;">
	<div class="navbar-header">
		<a class="navbar-brand"><font color=white>PickMyReel</font></a>
	</div>
	<div>
		<ul class="nav navbar-nav">
			<li><a href="BookingSlot.jsp"><font color=white>Booking</font></a></li>
			<li><a href="History.jsp"><font color=white><span class="glyphicon glyphicon-list-alt"></span>History</font></a></li>

		</ul>
		<ul class="nav navbar-nav navbar-right">
		<!-- <li><a href="Aboutus.jsp"><font color="white"><span class="glyphicon glyphicon-eye-open"></span>AboutUs</font></a></li>-->
      			<li><a href="LogoutController"><font color="white"><span class="glyphicon glyphicon-log-out"></span>Logout</font></a></li>
      			</ul>
    			</div>
   


	</nav>
	
	<div class="col-sm-6" align="center" style="margin-top: 100px"><img src="./images/logo.png">
	<div style="margin-top: 150px" id="ticket"><a><font color=black><span class="glyphicon glyphicon-print"></span><button onClick=window.print()>Print</button></font></a><br>Please print this page and show at the counter.<br></div>
	</div>
	<div id="content">
	<div class=container>
<div class="col-sm-6">
<h3 align="center">Ticket Details</h3>
<div class=jumbotron>
<table class="table table-stripped" style="background-color: #eeeeee">
<tr><td><b><h5>UserName:</h5></b></td><td><%out.print("<h5>"+username+"</h5>");%></td>
<tr><td><b><h5>MovieName:</h5></b></td><td><%out.print("<h5>"+movie+"</h5>");%></td>
<tr><td><b><h5>TheaterName:</h5></b></td><td><%out.print("<h5>"+theater+"</h5>");%></td>
<tr><td><b><h5>Date:</h5></b></td><td><%out.print("<h5>"+date+"</h5>");%></td>
<tr><td><b><h5>Time:</h5></b></td><td><%out.print("<h5>"+time+"</h5>");%></td>
<tr><td><b><h5>Seats Booked:</h5></b></td><td><%out.print("<h5>"+seats+"</h5>");%></td>
<tr><td><b><h5>Amount:</h5></b></td><td><%out.print("<h5>Rs. "+amount+"</h5>");%></td>
<tr><td><b><h5>UniqueCode:</h5></b></td><td><%out.print("<h5>"+uniquecode+"</h5>");%></td>

</table>
</div>
	</div>
</div>
</div>
<div id="editor"></div>

<div class=well-lg size=70px style="background-color: #313637;"> <footer>
   <font color=white>Contact us:pickmyreel@gmail.com</font>
  <!--  <a href="mailto:someone@example.com"><font color=white>About us:</a> -->
  
</footer></div>
</body>
</html>