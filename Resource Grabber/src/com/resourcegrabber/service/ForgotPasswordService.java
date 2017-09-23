package com.resourcegrabber.service;

import static com.resourcegrabber.service.OfyService.ofy;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.resourcegrabber.dao.RegisterDetailsDao;
import com.resourcegrabber.entity.RegisterDetailsEntity;

public class ForgotPasswordService  {
	
	public void updatePassword(String email, String newPassword){
	
		RegisterDetailsEntity rd=ofy().load().type(RegisterDetailsEntity.class).id(email).now();
		
		RegisterDetailsEntity rde = new RegisterDetailsEntity(rd.getEmail(), rd.getName(), newPassword, rd.getSemester(), rd.getBranch());
		
		RegisterDetailsDao rdd = new RegisterDetailsDao();
		
		rdd.save(rde);
	}
	
}
