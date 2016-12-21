<%@ taglib uri="/struts-tags" prefix="s"%>

<h3>
	Tweets :
</h3>
<s:iterator value="usertweets">
	<table>
		<tr>
			<td align="left">
				<img src="<s:property value="userdetails.profileimagepath" />"
					height=100 width=100 />
			</td>
			<td align="left">
				<s:property value="userdetails.loginname" />
				<br>
				<s:property value="userdetails.email" />
				<br>
				<s:property value="tweeterdesc" />

				<s:property value="tweeterposteddate" />


			</td>
			<td></td>
			<td>
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			</td>

			<td align="right">
				<a href='deletetweets?tweetid=<s:property value="tweetid" />'
					STYLE="TEXT-DECORATION: NONE"><img src='./images/delete.bmp' />
				</a>
			</td>
		</tr>
	</table>


</s:iterator>
