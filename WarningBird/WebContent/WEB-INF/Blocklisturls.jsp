<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.bird.daoimpl.TweetsDAO"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'Blocklisturls.jsp' starting page</title>

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
		<a href="./warningbird">HOME</a>
		<center>
			<br>
			<br>
			<br>
			<br>
			<br>
			<h1>
				<font color='red'>WARNING BIRD-BLOCKED LIST URLS</font>
			</h1>

			<%
				//Set set1 = (HashSet) request.getParameter("blockedlist");
				Set set1 = (HashSet<String>) session.getAttribute("blockedlist");
				Iterator iterator = set1.iterator();
				com.bird.pojo.Tweets tweet = null;
				String value = "";
				while (iterator.hasNext()) {
					try {
						value = (String) iterator.next();

						tweet = (com.bird.pojo.Tweets) new TweetsDAO()
								.findByProperty("tweeterdesc", value.trim()).get(0);
						out
								.println("<center>"
										+ value
										+ "----postedby-----------------<font color='blue' size='6'>"
										+ tweet.getUserdetails().getLoginname()
												.toUpperCase()
										+ "</font>------<a href='./Blocklisturls?userid="
										+ tweet.getUserdetails().getUserid()
										+ "'>BLOCK USER</a><br>");
					} catch (Exception e) {
						out
								.println(value
										+ "<font color='red'>----Not postedby any User</font><br><center>");
					}

				}
			%>

		</center>

		<br>
	</body>
</html>
