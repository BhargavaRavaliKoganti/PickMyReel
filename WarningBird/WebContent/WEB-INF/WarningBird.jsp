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
		<a href="./warningbird">HOME</a>
		<center>
			<br>
			<br>
			<h2>
				<font color='red'> <b>Data Collection and Tweets Posted
						URLs:</b> </font>
			</h2>

			<font color='red'> <%
 	Map<String, TreeMap<Integer, String>> urlpaths = new HashMap<String, TreeMap<Integer, String>>();
 	TreeMap<Integer, String> sustrilpaths;
 	Set blockedlist = new HashSet();
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
			%>
		</center>









		<center>
			<%
				try {
			%>
			<%
				PropertiesRead propertiesRead = new PropertiesRead();

					TreeMap<Integer, String> treemap = propertiesRead.java;
					TreeMap<Integer, TreeMap> datatreemap = propertiesRead.keys;
					ArrayList<String> com = new ArrayList<String>();
					ArrayList<String> net = new ArrayList<String>();
					ArrayList<String> org = new ArrayList<String>();
					ArrayList<String> goin = new ArrayList<String>();
					ArrayList<String> coin = new ArrayList<String>();
					ArrayList<String> info = new ArrayList<String>();
					ArrayList<String> jobs = new ArrayList<String>();
					ArrayList<String> edu = new ArrayList<String>();
					ArrayList<String> gov = new ArrayList<String>();
					TreeMap<Integer, String> domain = new TreeMap<Integer, String>();
					ArrayList<ArrayList> arrayList = new ArrayList<ArrayList>();

					Set eCollections = treemap.entrySet();
					Iterator iterator = eCollections.iterator();
					// Tweet actual URLLLLLLLLLLLLLLLL
					while (iterator.hasNext()) {
						Map.Entry<Integer, String> entry = (Map.Entry<Integer, String>) iterator
								.next();

						for (int i = 0; i < arr.length; i++) {
							if (entry.getValue().equals(arr[i])) {

								//out.println("<br><font color='green'>Tweet URL :"		+ entry.getKey() + "----"					+ entry.getValue() + "</font><br>");
								//out.println("<br>------------------------ACTUAL URL-------------------------<br>");
								TreeMap<Integer, String> localtreemap = datatreemap
										.get(entry.getKey());
								int random = new Random().nextInt(8);
								if (random > 3) {

								} else {
									random = 4;
								}
								Set localset = localtreemap.entrySet();
								Iterator localiIterator = localset.iterator();
								int inc = 0;
								TreeMap<Integer, String> susroot = new TreeMap<Integer, String>();
								// Internal links of the URlsssssssssssss
								while (localiIterator.hasNext()) {
									Map.Entry<Integer, String> localentry = (Map.Entry<Integer, String>) localiIterator
											.next();
									susroot.put((Integer) localentry.getKey(),
											localentry.getValue());

									//out.println("<br>" + localentry.getKey() "----" + localentry.getValue());
								}
								//	out	.println("<br><br><br><h3>-------------------------SUSPICIOUS URL ----------------------------------------</h3>");

								Set suslocalset = susroot.entrySet();
								Iterator suslocaliIterator = suslocalset.iterator();
								int susrandom = new Random().nextInt(arr.length);
								int count = 0;
								sustrilpaths = new TreeMap<Integer, String>();
								// susecptious urllllllllllllllll
								while (suslocaliIterator.hasNext()) {

									++count;
									Map.Entry<Integer, String> suslocalentry = (Map.Entry<Integer, String>) suslocaliIterator
											.next();
									//out.println("<br>" + suslocalentry.getKey()	+ "----" + suslocalentry.getValue());
									sustrilpaths.put(suslocalentry.getKey(),
											suslocalentry.getValue());
									if (suslocalentry.getValue().contains(".com")) {
										com.add(suslocalentry.getValue());

									} else if (suslocalentry.getValue().contains(
											".net")) {
										net.add(suslocalentry.getValue());

									} else if (suslocalentry.getValue().contains(
											".org")) {
										org.add(suslocalentry.getValue());
									} else if (suslocalentry.getValue().contains(
											".co.in")) {
										coin.add(suslocalentry.getValue());
									} else if (suslocalentry.getValue().contains(
											".go.in")) {
										goin.add(suslocalentry.getValue());
									} else if (suslocalentry.getValue().contains(
											".info")) {
										info.add(suslocalentry.getValue());
									} else if (suslocalentry.getValue().contains(
											".jobs")) {
										jobs.add(suslocalentry.getValue());
									} else if (suslocalentry.getValue().contains(
											".edu")) {
										edu.add(suslocalentry.getValue());
									} else if (suslocalentry.getValue().contains(
											".gov")) {
										gov.add(suslocalentry.getValue());
									} else {

									}
									if (++inc == random) {
										// break;
										Integer key = 0;

										Set s = treemap.entrySet();
										Iterator ite = s.iterator();
										while (ite.hasNext()) {
											Map.Entry<Integer, String> susstreemap = (Map.Entry<Integer, String>) ite
													.next();

											if (arr[susrandom].equals(susstreemap
													.getValue())) {
												key = susstreemap.getKey();

											}
										}

										TreeMap<Integer, String> sustreemap = (TreeMap<Integer, String>) datatreemap
												.get(key);

										Set sustreeset = sustreemap.entrySet();
										Iterator sustreesetIterator = sustreeset
												.iterator();
										int treecount = 0;
										int suspect = 0;
										// Suscpitious url changing
										while (sustreesetIterator.hasNext()) {

											++treecount;
											Map.Entry<Integer, String> sustreelocalentry = (Map.Entry<Integer, String>) sustreesetIterator
													.next();

											if (treecount == count) {
												if (suspect == 0) {
													++suspect;
													domain.put(sustreelocalentry
															.getKey(),
															sustreelocalentry
																	.getValue());
												}
												--treecount;
												/*		out.println("<br><font color='red'>"
																		+ sustreelocalentry
																				.getKey()
																		+ "----"
																		+ sustreelocalentry
																				.getValue()
																		+ "</font>");*/
												sustrilpaths.put(sustreelocalentry
														.getKey(),
														sustreelocalentry
																.getValue()
																+ " " + count);

												if (sustreelocalentry.getValue()
														.contains(".com")) {
													com.add(sustreelocalentry
															.getValue());

												} else if (sustreelocalentry
														.getValue()
														.contains(".net")) {
													net.add(sustreelocalentry
															.getValue());

												} else if (sustreelocalentry
														.getValue()
														.contains(".org")) {
													org.add(sustreelocalentry
															.getValue());
												} else if (sustreelocalentry
														.getValue().contains(
																".co.in")) {
													coin.add(sustreelocalentry
															.getValue());
												} else if (sustreelocalentry
														.getValue().contains(
																".go.in")) {
													goin.add(sustreelocalentry
															.getValue());
												} else if (sustreelocalentry
														.getValue().contains(
																".info")) {
													info.add(sustreelocalentry
															.getValue());
												} else if (sustreelocalentry
														.getValue().contains(
																".jobs")) {
													jobs.add(sustreelocalentry
															.getValue());
												} else if (sustreelocalentry
														.getValue()
														.contains(".edu")) {
													edu.add(sustreelocalentry
															.getValue());
												} else if (sustreelocalentry
														.getValue()
														.contains(".gov")) {
													gov.add(sustreelocalentry
															.getValue());
												} else {

												}

											}
											urlpaths.put(entry.getValue(),
													sustrilpaths);
										}

										session.setAttribute("urlpaths", urlpaths);

										break;
									}
								}
								susroot.clear();

							}
						}
					}

					arrayList.add(com);
					arrayList.add(net);
					arrayList.add(org);
					arrayList.add(coin);
					arrayList.add(goin);
					arrayList.add(info);
					arrayList.add(jobs);
					arrayList.add(edu);
					arrayList.add(gov);
					Iterator iterator2 = arrayList.iterator();
					while (iterator2.hasNext()) {
						ArrayList type = (ArrayList) iterator2.next();

						if (type.size() != 0) {
							Iterator iterator3 = type.iterator();
							out
									.println("<br><br><br><br><font color='green'><h2> ---------------Feature Extraction--Grouping Same DOMAIN URLs------------------------"
											+ type.size() + "</h2></font>");
							while (iterator3.hasNext()) {
								out.println("<br>" + (String) iterator3.next());

							}

						}

					}

					out
							.println("<br>----------------------<font color='red'><h3>DOMAINS--SUS---URL--COUNT</h3></font>---------------------------------<br>");
					String domainarray[] = { ".com", ".net", ".org", ".co.in",
							".go.in", ".info", ".jobs", ".edu", ".gov" };
					for (int i = 0; i < domainarray.length; i++) {
						out
								.println("<br><br><br>-------------------------------------------------------------------<h1><font color='red'>"
										+ domainarray[i].toUpperCase()
										+ "</font></h1>-------------------------------------------------------------------<br>");

						Set domainset = domain.entrySet();
						Iterator iterator3 = domainset.iterator();
						while (iterator3.hasNext()) {
							Map.Entry<Integer, String> type = (Map.Entry<Integer, String>) iterator3
									.next();
							if (type.getValue().contains(domainarray[i])) {
								out.println(type.getKey() + "------"
										+ type.getValue()
										+ "--------BLOCKED<br>");
								blockedlist.add(type.getValue());

							}
						}

					}

					session.setAttribute("blockedlist", blockedlist);
					out.println("<a href='./Blocklisturls.jsp?blockedlist="
							+ blockedlist + "'>VIEW BLOCK LIST URLS</a>");
				} catch (Exception e) {
					out.println(e);
				}
			%>
			<br>

		</center>
	</body>
</html>
