<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*"%>
      
		<html>
		<body>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

		<h1>Retrieve data from database</h1>
		<table border="1">
		<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Address</th>
		<th>Email</th>
			<th>Delete</th>
				<th>Update</th>

		</tr>

<%

response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Progma","no-cache");
response.setHeader("Expires","0");
if(session.getAttribute("username")==null)
{
	response.sendRedirect("index.jsp");
}

try{  
	Class.forName("oracle.jdbc.driver.OracleDriver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:oracle:thin:@localhost:1521:xe","system","oracle"); 
	PreparedStatement ps= con.prepareStatement("select * from student order by id");  
	ResultSet rs=ps.executeQuery(); 
	while(rs.next()){
		%>
		<tr>
		<td><%=rs.getInt("id") %></td>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("address") %></td>
		<td><%=rs.getString("email") %></td>
	<td><a href="Delete.jsp?id=<%=rs.getString("id") %>"><button type="button" class="delete">Delete</button></a></td>
	<td><a href="Edit.jsp?id=<%=rs.getString("id") %>"><button type="button" class="edit">Edit</button></a></td>
	
		</tr>
		<%
		}
		con.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
	
	              

</table>
		</body>
		<a href="Logout.jsp">Logout</a>

		</html>
	