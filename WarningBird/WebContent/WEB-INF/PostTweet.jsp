<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<%@ taglib uri='/struts-dojo-tags' prefix='d'%>
<html>
	<head>

		<style type="text/css">
.errors {
	background-color: white;
	border: 1px solid #CC0000;
	width: 200px;
	margin-bottom: 0px;
}

.errors li {
	list-style: none;
}
</style>

	</head>

	<body>

		<s:if test="hasActionErrors()">
			<div class="errors">
				<s:actionerror />
			</div>
		</s:if>
		<s:if test="hasActionMessages()">
			<div class="errors">
				<s:actionmessage />
			</div>
		</s:if>

		<s:form action='posttweet'>
			<table align='center'>

				<s:hidden name="userid" value="%{userdetails1.userid}" />


				<tr>
					<td>
						<div>
							<s:textarea name='tweeterdesc' rows="5" cols='50'></s:textarea>
						</div>
						<br>
					</td>
				</tr>

				<tr>
					<td>


						<s:submit validate='true' type='image'
							src='./images/posttweet.bmp' align="center"></s:submit>

					</td>
				</tr>
				<tr>
					<td>




					</td>
				</tr>
				<tr>
					<td>




					</td>
				</tr>
				<tr>
					<td>




					</td>
				</tr>
				<tr>
					<td>




					</td>
				</tr>
				<tr>
					<td>




					</td>
				</tr>
				<tr>
					<td>




					</td>
				</tr>
				<tr>
					<td>



						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>


					</td>
				</tr>
			</table>
		</s:form>

	</body>
</html>