 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "com.pickmyreel.model.*" %>
    <%@ page import = "java.util.*"%>
<%@page import = "com.pickmyreel.DAO.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="em">
<%
String movie = request.getParameter("movie");
HttpSession hsm = request.getSession();
hsm.setAttribute("movie", movie);
			
if(movie.equals("Select Movie")){
	response.sendRedirect("BookingSlot.jsp?msg=Please Select movie name");
	
}

//out.print(movie);

String date = request.getParameter("date");
HttpSession hsd = request.getSession();
hsd.setAttribute("date", date);
//out.print(date);
ReserveDAO rpic = new ReserveDAO();


ReserveDAO rdao = new ReserveDAO();
List<TheaterBean> lst = rdao.listTheater(movie);
ListIterator<TheaterBean> lt = lst.listIterator();

%>
<style>
.table th{
text-align: center
}

.table td{
text-align: center
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  $(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	})
  </script>
	
	
	
<title>PickMyReel</title>
</head>
<body>
<nav class="navbar navbar-default" style="background-color: #f54803">
		<div class="navbar-header">
			<a class="navbar-brand"><font color=white>PickMyReel</font></a>
		</div>
		<div>
			<ul class="nav navbar-nav">
				<li><a href="History.jsp"><font color=white><span class="glyphicon glyphicon-list-alt"></span>History</font></a></li>

			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="LogoutController"><font color="white"><span class="glyphicon glyphicon-log-out"></span>Logout</font></a></li>
			</ul>
		</div>
		</nav>
		<div>
		<div>
		<div>
			<div class="col-sm-4"><img src="<%out.print(rpic.getProfilePic(movie));%>" style="width: 250px; height: 200px"></img></div></div>
			<div>
			<div class="col-sm-8">
			
			<table align="center" id=keywords class="table table-stripped table-hover">
			<!-- <thead><tr><td align="center"><font color=white><b>Theater Names</b></font></td><td align="center"><font color=white><b>Timings</b></font></td><td align="center"><font color=white><b>Seats Available</b></font></td><td align="center"><font color=white><b><span>Seats Requried</span></b></font></td><td align="center"><font color=white><b>BookNow</b></font></td></tr></thead>-->
<%
while(lt.hasNext())
{
     TheaterBean cb = lt.next();
     //out.print("<form action=SeatController>");
    // out.print("<tbody>");
     out.print("<tr>");
    
     out.print("<td><input type = hidden name=theater value="+cb.getTheaterName()+">"+cb.getTheaterName()+"</td>");
     //out.print("<td>""</td>");
     out.print("<td id=time name=time><a data-toggle=tooltip data-placement=top title='FirstClass:Rs150\nEconomicClass:Rs75' href=seatchart.jsp?theater="+cb.getTheaterName()+"&time=11:30am>11:30am</a></td><td id=time name=time><a data-toggle=tooltip data-placement=top title='FirstClass:Rs150\nEconomicClass:Rs75' href=seatchart.jsp?theater="+cb.getTheaterName()+"&time=3:30pm>3:30pm</a></td><td name=time id =time><a data-toggle=tooltip data-placement=top title='FirstClass:Rs150\nEconomicClass:Rs75' href=seatchart.jsp?theater="+cb.getTheaterName()+"&time=6:00pm>6:00pm</a></td><td name=time id =time><a data-toggle=tooltip data-placement=top title='FirstClass:Rs150\nEconomicClass:Rs75' href=seatchart.jsp?theater="+cb.getTheaterName()+"&time=9:15pm>9:15pm</a></td>");
  
     out.print("</tr>");
     //out.print("</tbody>");
    // out.print("</form>");
}
%>
</table><br>

</div></div></div></div>
<div class=well-lg size=70px style="background-color: #313637; margin-top: 430px"> <footer>
   <font color=white>Contact us:pickmyreel@gmail.com</font>
  <!--  <a href="mailto:someone@example.com"><font color=white>About us:</a> -->
  
</footer></div>

</body>
</html>