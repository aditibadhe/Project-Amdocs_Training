<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String course_id = request.getParameter("course_id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "demo_project";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from course where course_id="+course_id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<style>
.loginbox{
align:center;
height:600px;
width:500px;
background-color:#80c1ff;
color:beige;
top:50%;
left:50%;
position:absolute;
transform:translate(-50%,-50%);
box-sizing:border-box;
padding:40px 30px;
}
.loginbox p{
margin:0px;
padding:0px;
font-weight:bold;
}
.loginbox input{
width:100%;
margin-bottom:20px;
}

.loginbox input[type="text"],input[type="number"],input[type="email"], input[type="password"]
{
border:none;
border-bottom: 1px solid #fff;
background: transparent;
outline:none;
height:40px;
coloe:#fff;
font-size:16px;
}
.loginbox input[type="submit"]
{
border:none;
outline:none;
height:40px;
background:#339cff;
color:#fff;
font-size:20px;
border-radius:20px;
}
.loginbox input[type="submit"]:hover
{
cursor:pointer;
background:#0069cc;
color:#fff;
}
</style>
<body style="background-color:#cce6ff">
<div class="loginbox"></div>
<form method="post" action="update-process.jsp" class="loginbox">
<h2 style="color:#0069cc;font-size:20px;text-align:center;">Update field in the selected course</h2>
<p>Course ID: </p><input type="hidden" name="course_id" value="<%=resultSet.getString("course_id") %>">
<input type="text" name="course_id" value="<%=resultSet.getString("course_id") %>">
<br>
<p>Course Name:</p>
<input type="text" name="c_name" value="<%=resultSet.getString("c_name") %>">
<br>
<p>Course Description:</p>
<input type="text" name="c_desc" value="<%=resultSet.getString("c_desc") %>">
<br>
<p>Course Fees:</p>
<input type="text" name="c_fees" value="<%=resultSet.getString("c_fees") %>">
<br>
<p>Course Resource:</p>
<input type="text" name="c_resource" value="<%=resultSet.getString("c_resource") %>">
<br><br>
<input type="submit" value="submit">
</form></div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>