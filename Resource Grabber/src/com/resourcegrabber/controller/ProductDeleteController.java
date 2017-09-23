package com.resourcegrabber.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.resourcegrabber.entity.ProductDetailsEntity;
import com.resourcegrabber.service.ProductDeleteService;;

public class ProductDeleteController extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String blobKeyPic = req.getParameter("blob-key");
		
		ProductDeleteService pds = new ProductDeleteService();
		pds.deleteProduct(blobKeyPic);
		
		resp.sendRedirect("/uploadItems");
	}

}
