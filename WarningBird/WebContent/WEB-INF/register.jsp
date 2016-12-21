<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri='/struts-tags' prefix='s'%>
<%@ taglib uri='/struts-dojo-tags' prefix='d'%>
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
	New to Twitter? Sign up
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

	<s:form action='register'>
		<s:textfield name='username' label='UserName'></s:textfield>
		</br>
		<s:password name='password' label='PassWord'></s:password>
		</br>
		<s:textfield name='email' label='Email'></s:textfield>

		</br>
		<d:submit validate='true' type='image' src='./images/register.bmp'></d:submit>
	</s:form>

</body>
</html>