<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log In</title>
<style>  
h3{
  font-family: Calibri; 
  font-size: 25pt;         
  font-style: normal; 
  font-weight: bold; 
  color:SlateBlue;
  text-align: center; 
  text-decoration: underline
}
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

</style> 
</head>
<body>

	<h3>Logged In Successfully</h3>
	<%
		
		 response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
		
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("/login");
		}
	
	%>
	Welcome to Global Logic, ${sessionScope.username }
	<br>
	
	<a href="${pageContext.request.contextPath }/logout">Logout</a>
</body>
</html>

