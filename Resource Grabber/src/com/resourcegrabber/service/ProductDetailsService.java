package com.resourcegrabber.service;

import com.resourcegrabber.dao.ProductDetailsDao;
import com.resourcegrabber.entity.ProductDetailsEntity;


public class ProductDetailsService {
	
	ProductDetailsDao pdd = new ProductDetailsDao();

	public void registerProduct(String address,String blobKeyPic, String email, String itemName, String price, String description, String category, String name, String phone){
		ProductDetailsEntity pde = new ProductDetailsEntity(address, email, blobKeyPic, itemName, price, description, category, name, phone);
		
		pdd.save(pde);
	}
	
}
