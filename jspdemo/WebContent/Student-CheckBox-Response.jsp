<html>

<head><title>Student Confirmation Title</title></head>
<body>

The student is confirmed: ${param.firstName}${param.lastName}
</br></br>
<!-- display list of languages -->

The Student language:


<ul>

<%
String[] langs=request.getParameterValues("favouriteLanguage");

if (langs != null){
for(String tempLang:langs){
	
	out.println("<li> " +tempLang+" </li>");
	
}
}

%>

</ul>
</body>
</html>