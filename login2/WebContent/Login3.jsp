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
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <div class="container">
 
<form action="Login4.jsp" method="get" class="form-horizontal">
<div class="form-group">
<label class="control-label col-sm-4" for="id">Id</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="id">
</div>

</div>
<div class="form-group">
<label class="control-label col-sm-4" for="name">Name</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="name">
</div>

</div>
<div class="form-group">
<label class="control-label col-sm-4" for="address">Address</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="address">
</div>

</div>

<div class="form-group">
<label class="control-label col-sm-4" for="email">Email</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="email">
</div>

</div>
<div class="form-group">
    <div class="col-sm-offset-3 col-sm-4">
      <button type="submit" class="btn btn-success">Insert</button>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-3 col-sm-4">
      <button type="reset" class="btn btn-danger">Reset</button>
    </div>
  </div>
  



</form>
</div>

</body>
</html>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Progma","no-cache");
response.setHeader("Expires","0");
if(session.getAttribute("username")==null)
{
	response.sendRedirect("index.jsp");
}
%>
