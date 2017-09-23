package com.resourcegrabber.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.resourcegrabber.service.SendMailService;

public class SubscribeController extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String toAddress = req.getParameter("subscribe");
		
		String subject = "Subscription";
		String messageBody = "Thank you for subscribing Resource Grabber. We will give you the updated information.";
		
		SendMailService sms = new SendMailService();
		
		sms.subscribeMail(toAddress, subject, messageBody);
		
	}

}
