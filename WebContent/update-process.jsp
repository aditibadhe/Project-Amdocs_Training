<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/demo_project";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String course_id = request.getParameter("course_id");
String c_name=request.getParameter("c_name");
String c_desc=request.getParameter("c_desc");
String c_fees=request.getParameter("c_fees");
String c_resource=request.getParameter("c_resource");
if(course_id != null)
{
Connection con = null;
PreparedStatement ps = null;
//int personID = Integer.parseInt(course_id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update course set course_id=?,c_name=?,c_desc=?,c_fees=?,c_resource=? where course_id="+course_id;
ps = con.prepareStatement(sql);
ps.setString(1,course_id);
ps.setString(2, c_name);
ps.setString(3, c_desc);
ps.setString(4, c_fees);
ps.setString(5, c_resource);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
//request.getRequestDispatcher("admin_landing.jsp").forward(request, response);
out.println("<script type=\"text/javascript\">");
out.println("alert('Course Updated Succcessfully !!');");
out.println("location='admin_landing.jsp';");
out.println("</script>");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>