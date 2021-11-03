<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<%
String username=request.getParameter("uname");
String password=request.getParameter("pass");
if(username.equals("Vishnu")&& password.equals("2468"))
{
	session.setAttribute("username", username);
	response.sendRedirect("Login3.jsp");
	
}
else
{
	out.println("Invalid username or password");
	
	%>
	<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="index.jsp">Login</a>
</body>
</html>
<% 
	}
%>


