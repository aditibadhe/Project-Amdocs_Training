package com.amdocs.training.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.CourseDAO;
import com.amdocs.training.dao.impl.CourseDAOImpl;
import com.amdocs.training.model.Course;

import sun.awt.RepaintArea;
import static javax.swing.JOptionPane.showMessageDialog;
@WebServlet("/course")
public class CourseController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		String c_name = request.getParameter("c_name");
		String c_desc = request.getParameter("c_desc");
		double c_fees = Double.parseDouble(request.getParameter("c_fees"));
		String c_resource = request.getParameter("c_resource");
		
		Course course = new Course(c_name,c_fees, c_desc,c_resource);
		
		CourseDAO dao = null;
		try {
			dao = (CourseDAO) new CourseDAOImpl();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		boolean saveCourse = dao.saveCourse(course);
		
	if(saveCourse) {

		//out.println("Course added successfuly !");
		//request.getRequestDispatcher("admin_landing.jsp").forward(request, response);
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Course Added Succcessfully !!');");
		out.println("location='admin_landing.jsp';");
		out.println("</script>");
	}		
	else {
			out.println("try again");
		}
	}	

	}
