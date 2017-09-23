package com.resourcegrabber.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.resourcegrabber.entity.RegisterDetailsEntity;
import com.resourcegrabber.service.LoginService;
import com.resourcegrabber.service.RegisterDetailsService;

import static com.resourcegrabber.service.OfyService.ofy;
import java.util.List;;

@SuppressWarnings("serial")
public class LoginController extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("login-form-email");
		String password = req.getParameter("login-form-password");
		
		HttpSession session = req.getSession();
		
		session.setAttribute("sess",email);
		
		
		System.out.println(password);
		
		LoginService loginService =  new LoginService();
		
		RegisterDetailsEntity rde = ofy().load().type(RegisterDetailsEntity.class).id(email).now();
		RegisterDetailsService rds = new RegisterDetailsService();
		
		if(rds.checkIfUserAlreadyExist(email)){
		if(loginService.checkIfUserAlreadyExist(email,password)){
	        
	        if(rde.password.equals(password)){
	        	session.setAttribute("pass", password);
			resp.sendRedirect("/shop");
	        }
	        
	        else{
	        	resp.sendRedirect("/loginfail");
	        }
			
		}
		else{
			resp.sendRedirect("/loginfail");
		}
		}
		else{
			resp.sendRedirect("/loginfail");
		}
		
	}

}
