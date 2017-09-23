package com.resourcegrabber.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.resourcegrabber.service.ForgotPasswordService;

public class ForgotPassword2Controller extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String newPassword = req.getParameter("password");
		 
		 HttpSession session = req.getSession(false);
		 ServletContext ctx = getServletContext();
		 
		 String email = (String)session.getAttribute("email");
		 
		 ForgotPasswordService fps = new ForgotPasswordService();
		 
		 if(email != null){
		 
		 fps.updatePassword(email, newPassword);
		 
		 session.invalidate();
		 
		 resp.sendRedirect("/resetsuccess");
		 }
		 else{
			 resp.sendRedirect("/error");
		 }
	}

}
