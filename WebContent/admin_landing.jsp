<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
  <h3 style="color: #0073e6;text-align:center;font-size:35px;">Hello Admin</h3>
  <center>  
<a href="course.jsp" style="background-color: #0066cc; border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;
display: inline-block; font-size: 25px; margin: 4px 2px;cursor: pointer;height:40px;width:200px;">Add Course</a>
<br>
<a href="update_course.jsp" style="background-color: #0066cc; border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;
display: inline-block; font-size: 25px; margin: 4px 2px;cursor: pointer;height:40px;width:200px;">Update Course</a>
<br>
<a href="delete_course.jsp" style="background-color: #0066cc; border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;
display: inline-block; font-size: 25px; margin: 4px 2px;cursor: pointer;height:40px;width:200px;">Delete Course</a>
<br>
<a href="userlist.jsp" style="background-color: #0066cc; border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;
display: inline-block; font-size: 25px; margin: 4px 2px;cursor: pointer;height:40px;width:200px;">User List</a>
<br>
<a href="feedbacklist.jsp" style="background-color: #0066cc; border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;
display: inline-block; font-size: 25px; margin: 4px 2px;cursor: pointer;height:40px;width:200px;">View Feedbacks</a>

<br>
<a href="messagelist.jsp" style="background-color: #0066cc; border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;
display: inline-block; font-size: 25px; margin: 4px 2px;cursor: pointer;height:40px;width:200px;">View Messages</a>

<br>
<a href="courselist.jsp" style="background-color: #0066cc; border: none;color: white;padding: 15px 32px;text-align: center;text-decoration: none;
display: inline-block; font-size: 25px; margin: 4px 2px;cursor: pointer;height:40px;width:200px;">Course List</a>
<br>
</center>
</div>
</div>

</body>
</html>