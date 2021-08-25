<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String id=request.getParameter("course_id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_project", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM course WHERE course_id="+id);

//request.getRequestDispatcher("admin_landing.jsp").forward(request, response);
//out.println("Data Deleted Successfully!");
out.println("<script type=\"text/javascript\">");
out.println("alert('Course Deleted Succcessfully !!');");
out.println("location='admin_landing.jsp';");
out.println("</script>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>