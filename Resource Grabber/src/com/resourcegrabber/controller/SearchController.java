package com.resourcegrabber.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SearchController extends HttpServlet{
	
     @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String itemName = req.getParameter("itemName");
    	
    	System.out.println("hello " + itemName);
    	
    		resp.sendRedirect("/shop1.jsp?itemName=" + itemName);
    	
    }

}
