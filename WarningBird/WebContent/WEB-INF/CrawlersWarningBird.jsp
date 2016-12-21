<%@ page language="java" import="java.util.*,com.bird.urls.*"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bird.urls.PropertiesRead"%>
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

		<title>My JSP 'WarningBird.jsp' starting page</title>

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
		<body><a href="./warningbird">HOME</a>
			<center>
				<font color='red'>
					<h1>
						CRAWLER BROWSER URLS
					</h1> <br>
					<br>
					<br>
					<br> </font>
				<b>Tweets Posted URLs:</b>
				<font color='red'> <%
 	Map<String, TreeMap<Integer, String>> urlpaths = new HashMap<String, TreeMap<Integer, String>>();
 	TreeMap<Integer, String> sustrilpaths;

 	out.println(session.getAttribute("tweetcount"));
 	Set urls = (Set) session.getAttribute("urls");
 	String arr[] = new String[(urls.size())];
 	Iterator iterable = urls.iterator();
 	int arrvar = 0;
 	while (iterable.hasNext()) {
 		String s = (String) iterable.next();
 %> <br> <a href="./CrawlerWarningBirdUrl.jsp?url=<%=s%>">
						<%
							arr[arrvar] = s;
								out.println(s);
								++arrvar;
						%> </a> </font>
				<%
					}
				%>


			</center>
		</body>
</html>
