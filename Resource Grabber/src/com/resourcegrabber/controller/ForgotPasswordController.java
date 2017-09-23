package com.resourcegrabber.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.resourcegrabber.service.ForgotPasswordService;
import com.resourcegrabber.service.RegisterDetailsService;
import com.resourcegrabber.service.SendMailService;

public class ForgotPasswordController extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		System.out.println(email);
		String subject = "Reset Password";
		String messageBody = "Click on this link http:/1-dot-resource-grabber-msit.appspot.com/forgotpassword to reset your password";
		HttpSession session = req.getSession();
		/*ServletContext ctx = getServletContext();*/
		RequestDispatcher rd = req.getRequestDispatcher("/emailsuccessful");
		SendMailService sms = new SendMailService();
		
		
		RegisterDetailsService registerDetailsService = new RegisterDetailsService();
		
		if(registerDetailsService.checkIfUserAlreadyExist(email)){
			session.setAttribute("email", email);
			sms.forgotPasswordMail(email, subject, messageBody);
			rd.forward(req, resp);
		}
		
		else{
			resp.sendRedirect("/loginfail");
			
		}
	}
}
