<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'RightTemplate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table height="300" align='left'>
						<tr>
							<td bgcolor='white'>
								<img src="./images/1.bmp" />
							</td>
						</tr>
						<tr>
							<td bgcolor='white'>
								<img src="./images/2..bmp" />
							</td>
						</tr>
						<tr>
							<td bgcolor='white'>
								<img src="./images/3.bmp" />
							</td>
						</tr>
					</table><br>
  </body>
</html>
