<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String user_name=request.getParameter("user_name");
session.putValue("user_name",user_name);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_project","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from user1 where user_name='"+user_name+"' and password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("user_name").equals(user_name))
{
out.println("Welcome " +user_name);
}
else{
out.println("Invalid password or username.");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="register.css">
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<style>
.loginbox{
align:center;
height:380px;
width:380px;
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

.loginbox input[type="text"], input[type="password"]
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
<div class="loginbox">
     <form>
        <h2 style="color:#0069cc;font-size:25px;text-align:center;">USER LOGIN</h2>
       <p> Username  : </p><input type="text" name="user_name" /><br>
        
       <p> Password  : </p><input type="password" name="password" /><br>
        
                    <input type="submit" value="Sign In" /><br>
     </form>
     </div>
</body>
</html>