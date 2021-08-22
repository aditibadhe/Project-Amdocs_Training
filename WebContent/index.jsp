<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href=”bootstrap/css/bootstrap.min.css” rel=”stylesheet” type=”text/css” />
<script type=”text/javascript” src=”bootstrap/js/bootstrap.min.js”></script>
<meta charset="ISO-8859-1">
<title>e-Learning Portal</title>
</head>
<style type="text/css"> 
.column {
  float: left;
  width: 50%;
}
.a {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}


/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.vl {
  border-left: 1px solid #0066cc;
  height: 250px;
  position: absolute;
  left: 50%;
  margin-left: -3px;
  top: 160px;
</style>
<body style="background-color:#cce6ff;">
<h2 style="color: #2952a3;text-align:center;font-size:45px;"> Welcome to e-learning portal</h2>

<div class="row">
  <div class="column">
  <h3 style="color: #0073e6;text-align:center;font-size:35px;">User</h3>
  <br>
<center>  
<a href="user_signin.jsp" style="background-color: #0066cc; border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;
display: inline-block; font-size: 20px; margin: 4px 2px;cursor: pointer;height:12px;width:60px;">Sign In</a>
<br>
<a href="registration.jsp" style="background-color: #0066cc; border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;
display: inline-block; font-size: 20px; margin: 4px 2px;cursor: pointer;height:12px;width:60px;">Register</a>
<br></center>
</div>
<div class="vl"></div>
  <div class="column">
  <h3 style="color: #0073e6;text-align:center;font-size:35px;">Admin</h3>
<br>
<center>
<a href="admin_signin.jsp" style="background-color: #0066cc; border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;
display: inline-block; font-size: 20px; margin: 4px 2px;cursor: pointer;height:15px;width:60px;">Sign In</a></center>
  </div>
</div>


</body>
</html>