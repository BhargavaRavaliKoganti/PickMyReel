<%@ taglib uri="/struts-tags" prefix="s"%>

<h3>
	Following Users:
</h3>
<s:iterator value="myfollower">



	<fieldset>
		<s:form action='follow'>

			<tr>
				<td align="left">
					<img src="<s:property value="userdetailsByFollowmyid.profileimagepath"/>" height=100
						width=100 />
						
				</td>
				<td align="left">
					<s:property value="userdetailsByFollowmyid.loginname" />
					<br>
					<s:property value="userdetailsByFollowmyid.email" />
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
					<a href='unfollow?followid=<s:property value="followid" />'><img
								src="./images/unfollow.bmp" /> </a>
					</td>
				</s:if>
				<s:else>
					<td align="right">
						<a href='follow?followid=<s:property value="userdetailsByFollowmyid.userid" />'><img
								src="./images/follow.bmp" /> </a>
					</td>
				</s:else>
			</tr>

		</s:form>

	</fieldset>

</s:iterator>
