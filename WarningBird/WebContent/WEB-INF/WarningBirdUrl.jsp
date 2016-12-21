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

	<body><a href="./warningbird">HOME</a>
		<body>
			<b>Tweets Posted URLs:</b>
			<font color='red'> <%
 	out.println(session.getAttribute("tweetcount"));
 	Set urls = (Set) session.getAttribute("urls");
 	String arr[] = new String[(urls.size())];
 	Iterator iterable = urls.iterator();
 	int arrvar = 0;
 	while (iterable.hasNext()) {
 		String s = (String) iterable.next();
 %> <br> <a href="./WarningBirdUrl.jsp?url=<%=s%>"> <%
 	arr[arrvar] = s;
 		out.println(s);
 		++arrvar;
 %> </a> </font>
			<%
				}
				int value = 0;
				try {
					if (request.getParameter("value") == null) {
						value = 0;
					} else {
						value = Integer.parseInt(request.getParameter("value"));
					}
				} catch (Exception e) {
					value = 0;
				}
				Map urlpaths = (Map) session.getAttribute("urlpaths");

				TreeMap<Integer, String> treeMap = (TreeMap<Integer, String>) urlpaths
						.get(request.getParameter("url"));
				//Set set = treeMap.entrySet();

				//Iterator ite = set.iterator();
				//while (ite.hasNext()) {
				value++;
				//out.println(entry.getKey()+"----"+treeMap);
			%>
			<br>
			<center>
				<a
					href="./WarningBirdUrl.jsp?value=<%=value%>&url=<%=request.getParameter("url")%>">
					<%=treeMap.get(value)%> </a>
			</center>
			<%
				//break;
				//}
			%>

			<a href='warningbird'>Home</a>
			<br>
			<a href='warningbird'>Conditional redirection</a>
			<br>
			<a href='./DomainRedirect.jsp'>Domains</a>
			<br>
			<br />

			</center>
		</body>
</html>
