package com.amdocs.training.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.CourseDAO;
import com.amdocs.training.dao.impl.CourseDAOImpl;
import com.amdocs.training.model.Course;

import sun.awt.RepaintArea;

@WebServlet("/course")
public class CourseController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		String c_name = request.getParameter("c_name");
		String c_desp = request.getParameter("c_desp");
		double c_fees = Double.parseDouble(request.getParameter("c_fees"));
		String c_resource = request.getParameter("c_resource");
		
		Course course = new Course(c_name,c_fees, c_desp,c_resource);
		
		CourseDAO dao = (CourseDAO) new CourseDAOImpl();
		
		boolean saveCourse = dao.saveCourse(course);
		
	if(saveCourse) {
			out.println("Course Saved Successfully!");
		}
		else {
			out.println("try again");
		}
	}	

	}
