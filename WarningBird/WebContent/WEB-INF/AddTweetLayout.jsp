<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<html>
	<head>

	</head>
	<body>
		<tiles:insertAttribute name="menu" />

		<table width="100%" height="100%" border="0" cellpadding="0"
			cellspacing="0">

			<tr>
				<td width="23%" height="15%">
					<tiles:insertAttribute name="right" />
				</td>
				<td>
					<table width="80%" height="100%">
						<tr>
							<td>
								<tiles:insertAttribute name="lefttop" />
							</td>
						</tr>
						<tr>
							<td>
								<tiles:insertAttribute name="leftbody" />
							</td>
						</tr>
					</table>
				</td>
			</tr>



		</table>
	</body>
</html>

