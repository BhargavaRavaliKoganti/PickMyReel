<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri='/struts-tags' prefix='s'%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<html>
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

		<s:form action='updateprofile' enctype="multipart/form-data">
			<table align='center'>
				<tr>
					<td>


						<br>
					</td>
				</tr>
				<tr>
					<td>

						<br>
					</td>
				</tr>
				<tr>
					<td>



						<s:file name="profileimage" label='photo'
							value="%{userdetails1.profileimagepath}" />
						<img src="<s:url value="%{userdetails1.profileimagepath}"/>"
							height=100 width=100>
						<br>
					</td>
				</tr>
				<tr>
					<td>
						<s:file name="backgroundimage" label='Header'
							value="%{userdetails1.backgroundimagepath}" />
						<img src='<s:url value="%{userdetails1.backgroundimagepath}"/>'
							height=100 width=100>
						<br>

					</td>
				</tr>
				<tr>
					<td>
						<s:textfield name='fullname' label='FullName'
							value="%{userdetails1.fullname}"></s:textfield>
						<s:hidden name="userid" value="%{userdetails1.userid}" />

						<br>
					</td>
				</tr>
				<tr>
					<td>
						<s:textfield name='location' label='Location'
							value="%{userdetails1.location}"></s:textfield>

						<br>
					</td>
				</tr>
				<tr>
					<td>
						<s:textfield name='email' label='Email'
							value="%{userdetails1.email}"></s:textfield>
						<br>
					</td>
				</tr>
				<tr>
					<td>
						<s:textfield name='websiteUrl' label='WebsiteUrl'
							value="%{userdetails1.websiteUrl}"></s:textfield>
						<br>
					</td>
				</tr>
				<tr>
					<td>
						<s:textfield name='biodata' label='BioData'
							value="%{userdetails1.biodata}"></s:textfield>
						<br>
					</td>
				</tr>
				<tr>
					<td>
						<s:textfield name='phno' label='Phone'
							value="%{userdetails1.phno}"></s:textfield>

						<br>
					</td>
				</tr>

				<tr>
					<td>
						<s:submit type='image' src='./images/save.bmp' align="center"></s:submit>
					</td>
				</tr>
			</table>
		</s:form>

	</body>
</html>