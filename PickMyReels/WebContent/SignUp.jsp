<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/jquery.autocomplete.css" />
	<script
	src=https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js></script>
<script
	src=http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js></script>


	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <script>
  $(function() {
    var availableTags = [
'Afghanistan', 'Albania', 'Algeria', 'American Samoa', 'Andorra',
'Angola', 'Anguilla', 'Antarctica', 'Antigua and Barbuda', 'Argentina',
'Armenia', 'Aruba', 'Australia', 'Austria', 'Azerbaijan',
'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium',
'Belize', 'Benin', 'Bermuda', 'Bhutan', 'Bolivia',
'Bosnia and Herzegovina', 'Botswana', 'Bouvet Island', 'Brazil', 'British Indian Ocean Territory',
'British Virgin Islands', 'Brunei', 'Bulgaria', 'Burkina Faso', 'Burundi',
'Cote d Ivoire', 'Cambodia', 'Cameroon', 'Canada', 'Cape Verde',
'Cayman Islands', 'Central African Republic', 'Chad', 'Chile', 'China',
'Christmas Island', 'Cocos (Keeling) Islands', 'Colombia', 'Comoros', 'Congo',
'Cook Islands', 'Costa Rica', 'Croatia', 'Cuba', 'Cyprus', 'Czech Republic',
'Democratic Republic of the Congo', 'Denmark', 'Djibouti', 'Dominica', 'Dominican Republic',
'East Timor', 'Ecuador', 'Egypt', 'El Salvador', 'Equatorial Guinea', 'Eritrea',
'Estonia', 'Ethiopia', 'Faeroe Islands', 'Falkland Islands', 'Fiji', 'Finland',
'Former Yugoslav Republic of Macedonia', 'France', 'French Guiana', 'French Polynesia',
'French Southern Territories', 'Gabon', 'Georgia', 'Germany', 'Ghana', 'Gibraltar',
'Greece', 'Greenland', 'Grenada', 'Guadeloupe', 'Guam', 'Guatemala', 'Guinea', 'Guinea-Bissau',
'Guyana', 'Haiti', 'Heard Island and McDonald Islands', 'Honduras', 'Hong Kong', 'Hungary',
'Iceland', 'India', 'Indonesia', 'Iran', 'Iraq', 'Ireland', 'Israel', 'Italy', 'Jamaica',
'Japan', 'Jordan', 'Kazakhstan', 'Kenya', 'Kiribati', 'Kuwait', 'Kyrgyzstan', 'Laos',
'Latvia', 'Lebanon', 'Lesotho', 'Liberia', 'Libya', 'Liechtenstein', 'Lithuania', 'Luxembourg',
'Macau', 'Madagascar', 'Malawi', 'Malaysia', 'Maldives', 'Mali', 'Malta', 'Marshall Islands',
'Martinique', 'Mauritania', 'Mauritius', 'Mayotte', 'Mexico', 'Micronesia', 'Moldova',
'Monaco', 'Mongolia', 'Montserrat', 'Morocco', 'Mozambique', 'Myanmar', 'Namibia',
'Nauru', 'Nepal', 'Netherlands', 'Netherlands Antilles', 'New Caledonia', 'New Zealand',
'Nicaragua', 'Niger', 'Nigeria', 'Niue', 'Norfolk Island', 'North Korea', 'Northern Marianas',
'Norway','Oman', 'Pakistan', 'Palau', 'Panama', 'Papua New Guinea', 'Paraguay', 'Peru',
'Philippines', 'Pitcairn Islands', 'Poland', 'Portugal', 'Puerto Rico', 'Qatar',
'Reunion', 'Romania', 'Russia', 'Rwanda', 'Sqo Tome and Principe', 'Saint Helena',
'Saint Kitts and Nevis', 'Saint Lucia', 'Saint Pierre and Miquelon',
'Saint Vincent and the Grenadines', 'Samoa', 'San Marino', 'Saudi Arabia', 'Senegal',
'Seychelles', 'Sierra Leone', 'Singapore', 'Slovakia', 'Slovenia', 'Solomon Islands',
'Somalia', 'South Africa', 'South Georgia and the South Sandwich Islands', 'South Korea',
'Spain', 'Sri Lanka', 'Sudan', 'Suriname', 'Svalbard and Jan Mayen', 'Swaziland', 'Sweden',
'Switzerland', 'Syria', 'Taiwan', 'Tajikistan', 'Tanzania', 'Thailand', 'The Bahamas',
'The Gambia', 'Togo', 'Tokelau', 'Tonga', 'Trinidad and Tobago', 'Tunisia', 'Turkey',
'Turkmenistan', 'Turks and Caicos Islands', 'Tuvalu', 'Virgin Islands', 'Uganda',
'Ukraine', 'United Arab Emirates', 'United Kingdom',
'United States', 'United States Minor Outlying Islands', 'Uruguay', 'Uzbekistan',
'Vanuatu', 'Vatican City', 'Venezuela', 'Vietnam', 'Wallis and Futuna', 'Western Sahara',
'Yemen', 'Yugoslavia', 'Zambia', 'Zimbabwe'
    ];
    $( "#tags" ).autocomplete({
      source: availableTags
    });
  });
  </script>
	
<title>pickmyreel</title>
</head>
<body>
<nav class="navbar navbar-default"  style="background-color: #f54803">
			<div class="navbar-header">
				<a class="navbar-brand" href="WelcomePage.jsp"><font color = white>PickMyReel</font></a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li><a href="Home.jsp"><font color=white><span class="glyphicon glyphicon-home"></span>Home</font></a></li>
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
      			<li><a href="Aboutus.jsp"><font color="white"><span class="glyphicon glyphicon-eye-open"></span>AboutUs</font></a></li>
      			
      			</ul>
			</div>
	</nav>

<div class="container">
<div class="col-sm-4"></div>

<div class="col-sm-5" style="margin-top: 20px">
<h1 align="center">Sign Up</h1>


  
<form action="SignUpController">
<table align="center" class="table">
<tr><td><b>Username:</b></td><td><input type = text name = username required></td></tr>
<tr><td><b>Password:</b></td><td><input type = password name = password required></td></tr>
<tr>
<td><b>Country:</b></td><td><input type=text class="typeahead tt-query" autocomplete="on" id="tags" name ="nationality" required>
</td>
<tr>
<tr><td align="center"><input type = submit value = Register></td><td align="center"><a href="Login.jsp"><input type = "button" value = Back></a></td></tr>

</table>
</form>
<%
String msg = request.getParameter("msg");
if(msg != null){
	out.print("<table align=center><tr><td><font color=red>*" +  msg + "</font color></td></tr></table>");
}
%>
</div>
</div>

<div class=well-lg size=70px style="background-color: #313637; margin-top: 130px"> <footer>
   <font color=white>Contact us:pickmyreel@gmail.com</font>
  <!--  <a href="mailto:someone@example.com"><font color=white>About us:</a> -->
  
</footer></div>
</div>
</body>
</html>

    