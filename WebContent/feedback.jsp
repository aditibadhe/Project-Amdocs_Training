
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback Page</title>
</head>
<body>
     <form action="feedback" method="POST">
        <pre>
        User Id   : <input type="number" name="user_id" /><br>
        Username  : <input type="text" name="user_name" /><br>
        Email     : <input type="email" name="email" /><br>
        Feedback  : <input type="text" name="user_feedback" /><br>
        
                    <input type="submit" value="Submit" /><br>
       </pre>
     </form>
</body>
</html>