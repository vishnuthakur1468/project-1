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

if(session.getAttribute("username")==null)
{
	response.sendRedirect("index.jsp");
}
int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");

String address=request.getParameter("address");
String email=request.getParameter("email");
try{  
	Class.forName("oracle.jdbc.driver.OracleDriver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:oracle:thin:@localhost:1521:xe","system","oracle");  
	              
	
	PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?)");
	ps.setInt(1,id);
	ps.setString(2,name);
	ps.setString(3,address);
	ps.setString(4,email);
	int i=ps.executeUpdate();
	if(i>0)
	{
response.sendRedirect("Show.jsp");
	}
	else
	{
		out.println("not inserted");
	}
}
	
	catch(Exception e)
	{
		out.println(e);
		
	}




%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="Show.jsp">Show</a>

</body>
</html>