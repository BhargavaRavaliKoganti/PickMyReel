<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.pickmyreel.DAO.*"%>
<%@page import="com.pickmyreel.model.*"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%

int recordsPerPage=10;
int pages = 1;
if(request.getParameter("pages") != null){
	pages = Integer.parseInt(request.getParameter("pages"));

}



	HttpSession hs = request.getSession();
	String name = (String) hs.getAttribute("name");
	UserDAO udao = new UserDAO();
	List<TicketBean> lst = udao.historyUser(name);;
	ListIterator<TicketBean> lt = lst.listIterator();
	
	
	
	int noOfRecords = udao.getNoOfRecords();
    int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
    request.setAttribute("noOfPages", noOfPages);
    request.setAttribute("currentPage", pages);
%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./bootstrap/css/styles.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	
 <link rel="shortcut icon" href="http://d15dxvojnvxp1x.cloudfront.net/assets/favicon.ico">
  <link rel="icon" href="http://d15dxvojnvxp1x.cloudfront.net/assets/favicon.ico">
  <link rel="stylesheet" type="text/css" media="all" href="./bootstrap/css/style.css">
  <script type="text/javascript" src="./jquery/jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="./jquery/jquery.tablesorter.min.js"></script>
  
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" 
href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" 
src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!-- neelimadatla16@gmail.com -->
<script>
$(document).ready(function(){
    $('#keywords').dataTable({
    	 "bLengthChange": false,
    	 "iDisplayLength": 10,
    	 "bInfo" : false
    });
});
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
			<li><a href="BookingSlot.jsp"><font color=white><span class="glyphicons glyphicons-film"></span>Booking</font></a></li>


		</ul>
		<ul class="nav navbar-nav navbar-right">
			
			<li><a href="LogoutController"><font color="white"><span class="glyphicon glyphicon-log-out"></span>Logout</font></a></li>
		</ul>
	</div>
	</nav>
	<!-- <div style="margin-left: 1000px">
Date<a href="DateIncreasing.jsp"><span class="glyphicon glyphicon-sort-by-attributes"></span>
		</a>
		<a href="DateDecreasing.jsp"><span class="glyphicon glyphicon-sort-by-attributes-alt"></span>
		</a>			
		Time<a href="TimeIncreasing.jsp"><span class="glyphicon glyphicon-sort-by-attributes"></span>
		</a>
		<a href="TimeDecreasing.jsp"><span class="glyphicon glyphicon-sort-by-attributes-alt"></span>
		</a>			
		
		
			</div> -->
	<div>

		

  
  <table id="keywords" class="table table-stripped">
    <thead>
      <tr bordercolor="white">
        <th align="center"><font color=white><b><span>Movie</span></b></font></th>
       <th align="center"><font color=white><b><span>Theater</span></b></font></th>
		<th align="center"><font color=white><b><span>Time</span></b></font></th>
		<th align="center"><font color=white><b><span>Date</span></b></font></th>
		<th align="center"><font color=white><b><span>Seats</span></b></font></th>
      </tr>
    </thead>
 <tbody>
			<%
				while (lt.hasNext()) {
					TicketBean tb = lt.next();
					
					out.print("<tr>");
					out.print("<td align=center>" + tb.getMovie() + "</td>");
					out.print("<td align=center>" + tb.getTheater() + "</td>");
					out.print("<td align=center>" + tb.getTime() + "</td>");
					out.print("<td align=center>" + tb.getDate() + "</td>");
					out.print("<td align=center>" + tb.getSeats() + "</td>");
					out.print("</tr>");
							}
			%>
			</tbody>
			</table>
 
 <!-- <script type="text/javascript">
$(function(){
  $('#keywords').tablesorter(); 
});
</script>-->
		
<%-- <div class="col-sm-10"></div>
<div class="col-sm-2">	
<div class="well-sm">	
<c:if test="${currentPage != 1}">
<td align="center"  style="background-color: #313637"><a href="History.jsp?pages=${currentPage - 1}" >PREVIOUS</a></td>
<br><br>
</c:if>
<table  class="table table-bordered" align="center" bgcolor="#313637"><!-- class = "table table-hover table-striped table-bordered" style="color:black; fontsize:40px;"> -->
<tr>
<c:forEach begin="1" end="${noOfPages}" var="i">
                <c:choose>
                    <c:when test="${currentPage eq i}">
                    
                        <td align="center" style="background-color:#313637"><font color="white">${i}</font></td>
                    
                    </c:when>
                    <c:otherwise>
                        <td align="center" style="background-color: #313637"><font color="white"><a href="History.jsp?pages=${i}">${i}</a></font></td>
                    </c:otherwise>
                </c:choose>
            </c:forEach>        
</tr>
</table>
<c:if test="${currentPage lt noOfPages}">
<td align="center"  style="background-color: #313637"><a href="History.jsp?pages=${currentPage + 1}">NEXT</a></td>
</c:if> 
</div>
</div>--%>
<br>
	</div>
	
	<div class=well-lg size=70px 
		style="background-color: #313637; margin-top: 100px">
		<footer><font color=white>Contact
			us:pickmyreel@gmail.com</font> <!--  <a href="mailto:someone@example.com"><font color=white>About us:</a> -->

		</footer>
	</div>
</body>
</html>