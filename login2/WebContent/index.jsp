<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>

.body
{
margin-top:110px;
}


</style>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<div class="container">

<form class="form-horizontal" action="Login2.jsp" method="get">
<div class="body">
<div class="form-group">
<label class="control-label col-sm-4" for="username">Username</label>
<div class="col-sm-2">
<input type="text" class="form-control" name="uname">
</div>

</div>
<div class="form-group">
<label class="control-label col-sm-4" for="password">Password</label>
<div class="col-sm-2">
<input type="password" class="form-control" name="pass"> 
</div>

</div>


 <div class="form-group">
    <div class="col-sm-offset-3 col-sm-4">
      <button type="submit" class="btn btn-success">Login</button>
    </div>
  </div>
   <div class="form-group">
    <div class="col-sm-offset-3 col-sm-4">
      <button type="reset" class="btn btn-danger">Reset</button>
    </div>
  </div>
  </div>



</form>
</div>

</body>
</html>
<%
String username=(String)session.getAttribute("username");  


%>