package com.amdocs.training.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.FeedbackDAO;
import com.amdocs.training.dao.impl.FeedbackDAOImpl;
import com.amdocs.training.model.Feedback;

import sun.awt.RepaintArea;

@WebServlet("/feedback")
public class FeedbackController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		double user_id = Double.parseDouble(request.getParameter("user_id"));
		String user_name = request.getParameter("user_name");
		String email = request.getParameter("email");
		String user_feedback = request.getParameter("user_feedback");


		Feedback feedback = new Feedback(user_id, user_name,email,user_feedback);
		
		FeedbackDAO dao = (FeedbackDAO) new FeedbackDAOImpl();
		
		boolean saveFeedback = dao.saveFeedback(feedback);
		
	if(saveFeedback) {
			out.println("Feedback Saved Successfully!");
		}
		else {
			out.println("try again");
		}
		

	}
}