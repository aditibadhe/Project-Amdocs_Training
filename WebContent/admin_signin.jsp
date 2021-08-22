<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <h2 style="color:#0069cc;font-size:25px;text-align:center;">ADMIN LOGIN</h2>
       <p> Username  : </p><input type="text" name="user_name" /><br>
        
       <p> Password  : </p><input type="password" name="password" /><br>
        
                    <input type="submit" value="Sign In" /><br>
     </form>
     </div>
</body>
</html>