<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
     <form action="register" method="POST">
        <pre>
        Username  : <input type="text" name="user_name" /><br>
        Phone     : <input type="number" name="phone_no" /><br>
        Email     : <input type="email" name="email" /><br>
        Address   : <input type="text" name="address" /><br>
        Registration date  : <input type="text" name="reg_date" /><br>
        Password  : <input type="password" name="password" /><br>
        Upload photo: <input type="text" name="upload_photo" /><br>
                    <input type="submit" value="Sign Up" /><br>
       </pre>
     </form>
</body>
</html>