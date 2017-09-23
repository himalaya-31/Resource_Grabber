package com.resourcegrabber.controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.resourcegrabber.service.RegisterDetailsService;
import com.resourcegrabber.service.SendMailService;

@SuppressWarnings("serial")
public class RegisterDetailsController extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		RegisterDetailsService registerDetailsService = new RegisterDetailsService();
		SendMailService sendMailService = new SendMailService();
		
		
		String name = req.getParameter("register-form-name");
		String email = req.getParameter("register-form-email");
		String semester = req.getParameter("register-form-semester");
		String branch = req.getParameter("register-form-branch");
		String password = req.getParameter("register-form-password");
		
		String messageBody;
		String subject;
		
		if(registerDetailsService.checkIfUserAlreadyExist(email)){
			resp.sendRedirect("/userexist");
		}
		
		else{
			subject = "Welcome to Resource Grabber";
			messageBody = "Thank You for registration. We are happy to have you as a part of our family.";
			sendMailService.welcomeMail(email, subject, messageBody);
			registerDetailsService.registerUser(email, name, password, semester, branch);
			resp.sendRedirect("/registrationsuccessful");
		}
		
	}

}
