package com.amdocs.training.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.ContactDAO;
import com.amdocs.training.dao.impl.ContactDAOImpl;
import com.amdocs.training.model.Contact;

import sun.awt.RepaintArea;

@WebServlet("/contact")
public class ContactController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		double user_id = Double.parseDouble(request.getParameter("user_id"));
		String user_name = request.getParameter("user_name");
		String email = request.getParameter("email");
		double phone_no = Double.parseDouble(request.getParameter("phone_no"));
		String message = request.getParameter("message");

		Contact contact = new Contact(user_id, user_name, email,phone_no,message);
		
		ContactDAO dao = null;
		try {
			dao = (ContactDAO) new ContactDAOImpl();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		boolean saveContact = dao.saveContact(contact);
		
	if(saveContact) {
	
			//out.println("Contact Saved Successfully!");
			//request.getRequestDispatcher("user_landing.jsp").forward(request, response);
		out.println("<script type=\"text/javascript\">");
		out.println("alert('Message sent Succcessfully !!');");
		out.println("location='user_landing.jsp';");
		out.println("</script>");

	}
		else {
			out.println("try again");
		}
		

	}
}