
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="register.css">
<meta charset="ISO-8859-1">
<title>Feedback</title>
</head>
<style>
.loginbox{
align:center;
height:520px;
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
<div class="loginbox">
    <form action="feedback" method="POST">
        
          <h2 style="color:#0069cc;font-size:20px;text-align:center;">FEEDBACK FORM</h2>
       <p>User Id   : </p><input type="number" name="user_id" /><br>
       <p> Username  :</p> <input type="text" name="user_name" /><br>
        <p>Email     : </p><input type="email" name="email" /><br>
         <p>Feedback   : </p><input type="text" name="user_feedback" /><br>
       
                    <input type="submit" value="Submit" /><br>
     </form>
     </div>
</body>
</html>

