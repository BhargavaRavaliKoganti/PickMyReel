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

		<title>My JSP 'ConditionalRedirect.jsp' starting page</title>

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
		<center>
			<table>
				<tr>
					<td>
						<font color='red'><h2>
								<a href="./NormalBrowserWarningBird.jsp" style="text-decoration: none">Normal Browser</a>
							</h2> </font>
					</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>
						<font color='red'><h2>
								<a href="./CrawlersWarningBird.jsp" style="text-decoration: none">Crawlers</a>
							</h2> </font>
					</td>
				</tr>
				<tr>

					<td>
						<font color='red'><h2>
								<a href="./RedirectChain.jsp" style="text-decoration: none">Redirect chains</a>
							</h2> </font>
					</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td>
						<font color='red'><h2>
								<a href="./WarningBird.jsp" style="text-decoration: none">Data Colletion</a>
							</h2> </font>
					</td>
				</tr>
			</table>
			<br>

			<b>Tweets Posted URLs:</b>
			<font color='red'> <%
 	Map<String, TreeMap<Integer, String>> urlpaths = new HashMap<String, TreeMap<Integer, String>>();
 	Map<String, TreeMap<Integer, String>> orgurlpaths = new HashMap<String, TreeMap<Integer, String>>();
 	TreeMap<Integer, String> sustrilpaths;
 	TreeMap<Integer, String> susroottt;

 	out.println(request.getAttribute("tweetcount"));
 	session.setAttribute("tweetcount", request
 			.getAttribute("tweetcount"));
 	session.setAttribute("urls", request.getAttribute("urls"));
 	Set urls = (Set) request.getAttribute("urls");
 	String arr[] = new String[(urls.size())];
 	Iterator iterable = urls.iterator();
 	int arrvar = 0;
 	while (iterable.hasNext()) {
 %> <br> <a href="./WarningBird.jsp"> <%
 	String s = (String) iterable.next();
 		arr[arrvar] = s;
 		out.println(s);
 		++arrvar;
 %> </a> <%
 	}
 %> </font>
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

								System.out.println("Tweet URL :" + entry.getKey()
										+ "----" + entry.getValue());
								System.out
										.println("------------------------ACTUAL URL-------------------------");
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
								susroottt = new TreeMap<Integer, String>();

								// Internal links of the URlsssssssssssss
								while (localiIterator.hasNext()) {
									Map.Entry<Integer, String> localentry = (Map.Entry<Integer, String>) localiIterator
											.next();
									susroot.put((Integer) localentry.getKey(),
											localentry.getValue());
									susroottt.put((Integer) localentry.getKey(),
											localentry.getValue());
									System.out.println(localentry.getKey() + "----"
											+ localentry.getValue());
								}
								orgurlpaths.put(entry.getValue(), susroottt);
								System.out
										.println("-------------------------susecptious URL ----------------------------------------");

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
									sustrilpaths.put(suslocalentry.getKey(),
											suslocalentry.getValue());
									System.out.println(suslocalentry.getKey()
											+ "----" + suslocalentry.getValue());
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
												System.out
														.println(sustreelocalentry
																.getKey()
																+ "----"
																+ sustreelocalentry
																		.getValue());
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
												urlpaths.put(entry.getValue(),
														sustrilpaths);

											}
										}
										session.setAttribute("urlpaths", urlpaths);
										session.setAttribute("orgurlpaths",
												orgurlpaths);
										break;
									}
								}
								susroot.clear();
								System.out
										.println("-----------------------SUSSSSSSSSSSSSSSSSSSSSSSS CLEAR-------------------------------------------");

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
							System.out
									.println("-----------------------DOMAINS---------------------------------"
											+ type.size());
							while (iterator3.hasNext()) {
								System.out.println((String) iterator3.next());

							}

						}

					}

					System.out
							.println("-----------------------DOMAINS--SUS---URL--COUNT---------------------------------");
					String domainarray[] = { ".com", ".net", ".org", ".co.in",
							".go.in", ".info", ".jobs", ".edu", ".gov" };
					for (int i = 0; i < domainarray.length; i++) {
						System.out
								.println("-----------------------"
										+ domainarray[i]
										+ "DOMAINS--SUS---URL--COUNT---------------------------------");

						Set domainset = domain.entrySet();
						Iterator iterator3 = domainset.iterator();
						while (iterator3.hasNext()) {
							Map.Entry<Integer, String> type = (Map.Entry<Integer, String>) iterator3
									.next();
							if (type.getValue().contains(domainarray[i])) {
								System.out.println(type.getKey() + "------"
										+ type.getValue());
							}
						}
					}

				} catch (Exception e) {
					System.out.println(e);
				}
			%>
			<br>

		</center>
	</body>
</html>
