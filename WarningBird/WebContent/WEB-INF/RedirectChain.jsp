<%@ page language="java" import="java.util.*,com.bird.urls.*"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bird.urls.PropertiesRead"%>
<%@page import="java.util.Map.Entry"%>
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
<a href="./warningbird">HOME</a>
		<center>
			<font color='red'>
				<h1>
					REDIRECT CHAIN BROWSER URLS
				</h1> </font>

			<font color='red'> <b>Tweets Posted URLs:</b> <font
				color='red'> <%
 	out.println(session.getAttribute("tweetcount"));
 	Set urls = (Set) session.getAttribute("urls");
 	String arr[] = new String[(urls.size())];
 	Iterator iterable = urls.iterator();
 	int arrvar = 0;
 	while (iterable.hasNext()) {
 		String s = (String) iterable.next();
 %> <br> <a href="./NormalBrowserWarningBirdUrl.jsp?url=<%=s%>">
						<%
							arr[arrvar] = s;
								out.println(s);
								++arrvar;
						%> </a> </font> <%
 	}
 %> </font>
		</center>
		<br>
		<br>
		<br>
		<center>
			<h2>
				<font color='red'>Conditional Redirections</font>
			</h2>
			<table border='30'>

				<%
					Map urlpaths = (Map) session.getAttribute("urlpaths");
					int i = 64;
					Set seturlpaths = urlpaths.entrySet();
					Iterator iterator = seturlpaths.iterator();
					while (iterator.hasNext()) {
						i++;
				%><tr>
					<%
						Map.Entry entry = (Map.Entry) iterator.next();
							String Key = (String) entry.getKey();
							TreeMap treeMap = (TreeMap) entry.getValue();
							Set set = treeMap.entrySet();
							Iterator iterator2 = set.iterator();
							while (iterator2.hasNext()) {
					%><td height="40" width="100">
						<%
							Map.Entry entry1 = (Map.Entry) iterator2.next();
									Integer localkey = (Integer) entry1.getKey();
									String value = (String) entry1.getValue();

									if (value.contains(" ")) {
										out.println("<b><font color='red'>" + (char) i);
										out.println("" + localkey + "--></b></font>");
									} else {
										out.println((char) i);
										out.println(localkey + "<b>-->");
									}
						%>
					</td>
					<%
						}
					%>
				</tr>
				<%
					}
				%>
			</table>
		</center>
		<br>
		<br>
		<br>
		<center>
			<h2>
				<font color='red'>Conditional Redirections</font>
			</h2>
			<table border='30'>

				<%
					Map orgurlpaths = (Map) session.getAttribute("orgurlpaths");
					int iorgurlpaths = 64;
					Set setorgurlpaths = orgurlpaths.entrySet();
					Iterator iteratororgurlpaths = setorgurlpaths.iterator();
					while (iteratororgurlpaths.hasNext()) {
						iorgurlpaths++;
				%><tr>
					<%
						Map.Entry entry = (Map.Entry) iteratororgurlpaths.next();
							String Key = (String) entry.getKey();
							TreeMap treeMap = (TreeMap) entry.getValue();
							Set set = treeMap.entrySet();
							Iterator iterator2 = set.iterator();
							while (iterator2.hasNext()) {
					%><td height="40" width="100">
						<%
							Map.Entry entry1 = (Map.Entry) iterator2.next();
									Integer localkey = (Integer) entry1.getKey();
									String value = (String) entry1.getValue();
									out.println("<b>" + (char) iorgurlpaths);
									out.println(localkey + "--><b>");
						%>
					</td>
					<%
						}
					%>
				</tr>
				<%
					}
				%>
			</table>
		</center>
	</body>
</html>

