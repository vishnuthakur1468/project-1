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



String  id=request.getParameter("id");
try{  
	Class.forName("oracle.jdbc.driver.OracleDriver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:oracle:thin:@localhost:1521:xe","system","oracle"); 
	PreparedStatement ps=con.prepareStatement("select * from student where id="+id);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
		
	{
		
	%>
<html>
<body>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<h1>Update data from database in jsp</h1>
<div class="container">
<form method="post" action="update-process.jsp" class="form-horizontal">
<div class="form-group">
<label class="control-label col-sm-4" for="id"></label>

<div class="col-sm-2">
<input type="hidden" class="form-control" id="id" value="<%=rs.getString("id") %>" > 
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-4" for="id">Id:</label>

<div class="col-sm-2">
<input type="text" class="form-control" name="id" value="<%=rs.getString("id") %>"> 
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-4" for="name">Name:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="name"  value="<%=rs.getString("name") %>"> 
</div>

</div>
<div class="form-group">
<label class="control-label col-sm-4" for="address">Address:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="address"  value="<%=rs.getString("address") %>"> 
</div>

</div>


<div class="form-group">
<label class="control-label col-sm-4" for="email">Email:</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="emails"  value="<%=rs.getString("email") %>"> 
</div>

</div>
 <div class="form-group">
    <div class="col-sm-offset-3 col-sm-4">
      <button type="submit" class="btn btn-success">Update:</button>
    </div>
  </div>
   
</form>
</div>
<%

}
}

catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>

