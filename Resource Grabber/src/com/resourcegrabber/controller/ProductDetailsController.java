package com.resourcegrabber.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static com.resourcegrabber.service.OfyService.ofy;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.resourcegrabber.dao.ProductDetailsDao;
import com.resourcegrabber.entity.ProductDetailsEntity;
import com.resourcegrabber.service.ProductDetailsService;
import com.resourcegrabber.service.RegisterDetailsService;

@SuppressWarnings({ "unused", "serial" })
public class ProductDetailsController extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");
		
        BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
		
		Map<String, List<BlobKey>> blobs = blobstoreService.getUploads(req);
		
		List<BlobKey> blobKeys = blobs.get("myFile");
		
		
		String email = req.getParameter("email");
		String itemName = req.getParameter("itemName");
		String blobKeyPic = blobKeys.get(0).getKeyString();
		String description = req.getParameter("description");
		String price = req.getParameter("price");
		String category = req.getParameter("category");
		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String address = req.getParameter("address");
		
		
		//System.out.println(email);
		
		ProductDetailsService pds = new ProductDetailsService();
		
		RegisterDetailsService rds = new RegisterDetailsService();
		
		if(rds.checkIfUserAlreadyExist(email)){
		
		pds.registerProduct(address, blobKeyPic, email, itemName, price, description, category, name, phone);
		
		resp.sendRedirect("/uploadsuccess");
		}
		
		else{
			resp.sendRedirect("/uploads");
		}
		
		/*ProductDetailsDao pdd = new ProductDetailsDao();
		pdd.save(pde);*/
		
		
		//resp.sendRedirect("/buyer?blob-key=" + blobKeys.get(0).getKeyString());
		
		
	}
	
	

}
