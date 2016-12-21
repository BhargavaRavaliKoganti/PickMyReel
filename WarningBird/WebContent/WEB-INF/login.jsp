
<%@ taglib uri='/struts-tags' prefix='s'%>
<%@ taglib uri='/struts-dojo-tags' prefix='d'%>
<html>
	<d:head />
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
		<s:form action='login'>
			<s:textfield name='loginusername' label='UserName'></s:textfield>
			</br>
			<s:password name='loginpassword' label='PassWord'></s:password>
			</br>

			<d:submit validate='true' type='image' src='./images/signin.bmp'></d:submit>
		</s:form>

	</body>
</html>