<%@ taglib uri="/struts-tags" prefix="s"%>

<h3>
	Following Users:
</h3>
<s:iterator value="followlist">




	<tr>
		<td align="left">
			<img src="./" height=100 width=100 />
		</td>
		<td align="left">
			<s:property value="userdetailsByFollowmeid.loginname" />
			<br>
			<s:property value="userdetailsByFollowmeid.email" />
		</td>
		<td></td>
		<td>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		</td>

		<s:if test="followstatus=='following'">
			<td align="right">
				<a href='unfollow?status=unfollow'><img
						src="./images/unfollow.bmp" /> </a>
			</td>
		</s:if>
		<s:else>
			<td align="right">
				<a href='follow?followid=<s:property value="userid" />'><img
						src="./images/follow.bmp" /> </a>
			</td>
		</s:else>
	</tr>



</s:iterator>
