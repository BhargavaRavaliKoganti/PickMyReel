<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<body>
	<table border="1" cellpadding="4" cellspacing="0" bordercolor="#eeeeee">
		<tr>
			<td colspan='5'>
				<img src="<s:property value="#session['backimage']" />" height='230'
					width='600' />
			</td>
		</tr>
		<tr>
			<td align='center'>
				<a href="mytweets" STYLE="TEXT-DECORATION: NONE"><b>My
						Tweets</b> </a>
			</td>
			<td align='center'>
				<a href="followers" STYLE="TEXT-DECORATION: NONE"><b>Followers</b>
				</a>
			</td>
			<td align='center'>
				<a href="mefollowers" STYLE="TEXT-DECORATION: NONE"><b>Following</b>
				</a>
			</td>
			<td align='center'>
				<a href="mealltweets" STYLE="TEXT-DECORATION: NONE"><b>All
						Tweets</b> </a>
			</td>
			<td align='center'>
				<a href="warningbird" STYLE="TEXT-DECORATION: NONE"><b>WARNING-BIRD</b> </a>
			</td>
		</tr>
	</table>
	<br>
</body>
</html>
