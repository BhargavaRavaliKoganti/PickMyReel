<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> 
<html> 
<head> 
<title><tiles:getAsString name="title"/></title>
</head> 
 <body> 
 <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
 <tr><td width="100%" height="15%">
 	<%@ include file="header.jsp" %>
 	</td>
</tr>
 	<tr><td width="100%" height="75%">
  	<tiles:insertAttribute name="body"/> 
  	</td></tr>
  	
  <tr><td width="100%" height="10%"><br>
  	 <%@ include file="footer.jsp" %>
  	<br></td>
  	</tr>
  	
</table>
  </body> 
  </html>
  
  
  
  
  
  
  
  