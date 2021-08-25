<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*,java.util.*"%>
	
<!DOCTYPE html>
<html>
<head>
<link href=”bootstrap/css/bootstrap.min.css” rel=”stylesheet” type=”text/css” />
<script type=”text/javascript” src=”bootstrap/js/bootstrap.min.js”></script>
<meta charset="ISO-8859-1">
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

</style>
<body style="background-color:#cce6ff;">
<a href="user_logout.jsp" style="float:right;">LogOut</a>
<div class="row">
<% String user_name = request.getParameter("user_name"); %>

  <h3 style="color: #0073e6;text-align:center;font-size:35px;">Welcome   <% out.println(user_name); %></h3>
  <br>
<center>  
<a href="courselist.jsp" style="background-color: #0066cc; border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;
display: inline-block; font-size: 25px; margin: 4px 2px;cursor: pointer;height:40px;width:150px;">Course List</a>
<br>
<a href="feedback.jsp" style="background-color: #0066cc; border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;
display: inline-block; font-size: 25px; margin: 4px 2px;cursor: pointer;height:40px;width:150px;">Give Feedback</a>
<br>
<a href="contact.jsp" style="background-color: #0066cc; border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;
display: inline-block; font-size: 25px; margin: 4px 2px;cursor: pointer;height:40px;width:150px;">Contact team</a></center>

</div>
</div>

</body>
</html>