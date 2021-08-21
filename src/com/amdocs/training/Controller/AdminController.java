package com.amdocs.training.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.AdminDAO;
import com.amdocs.training.dao.impl.AdminDAOImpl;
import com.amdocs.training.model.Admin;

import sun.awt.RepaintArea;

@WebServlet("/admin")
public class AdminController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		double admin_id = Double.parseDouble(request.getParameter("admin_id"));
		String admin_name = request.getParameter("admin_name");
		String admin_password = request.getParameter("admin_password");
		String admin_email = request.getParameter("admin_email");
		

		Admin admin = new Admin(admin_id, admin_name,admin_email,admin_password);
		
		AdminDAO dao = (AdminDAO) new AdminDAOImpl();
		
		boolean saveAdmin = dao.saveAdmin(admin);
		
	if(saveAdmin) {
			out.println("Admin Saved Successfully!");
		}
		else {
			out.println("try again");
		}
		

	}
}