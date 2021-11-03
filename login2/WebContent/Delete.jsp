<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*"%>
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
String username=(String)session.getAttribute("username");  
String id=request.getParameter("id");
try{  
	Class.forName("oracle.jdbc.driver.OracleDriver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:oracle:thin:@localhost:1521:xe","system","oracle"); 
	Statement st=con.createStatement();
int i=st.executeUpdate("delete FROM student WHERE id="+id);
if(i>0)
{
	response.sendRedirect("Show.jsp");
}
else
{
	out.println("not deleted");
}
}
catch (Exception e) {
		e.printStackTrace();
		}
		%>