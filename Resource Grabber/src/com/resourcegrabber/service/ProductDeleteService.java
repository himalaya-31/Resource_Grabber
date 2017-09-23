package com.resourcegrabber.service;

import com.resourcegrabber.dao.ProductDetailsDao;
import com.resourcegrabber.entity.ProductDetailsEntity;
import static com.resourcegrabber.service.OfyService.ofy;

public class ProductDeleteService {
	
	ProductDetailsDao pdd = new ProductDetailsDao();
	
	public void deleteProduct(String blobKeyPic){
		ProductDetailsEntity pde = ofy().load().type(ProductDetailsEntity.class).id(blobKeyPic).now();
		pdd.delete(pde);
	}
}
