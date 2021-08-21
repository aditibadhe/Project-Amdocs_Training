
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Page</title>
</head>
<body>
     <form action="contact" method="POST">
        <pre>
        User Id   : <input type="number" name="user_id" /><br>
        Username  : <input type="text" name="user_name" /><br>
        Email     : <input type="email" name="email" /><br>
        Phone number    : <input type="number" name="phone_no" /><br>
        Message   : <input type="text" name="message" /><br>
                    <input type="submit" value="Submit" /><br>
       </pre>
     </form>
</body>
</html>