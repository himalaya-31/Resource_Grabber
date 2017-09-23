package com.resourcegrabber.dao;

import com.resourcegrabber.entity.ProductDetailsEntity;
import static com.resourcegrabber.service.OfyService.ofy;

public class ProductDetailsDao {
	
	static ProductDetailsEntity pd = null;
	
	public void save(ProductDetailsEntity pde){
		ofy().save().entity(pde);
		ofy().clear();
	}
	
	public void delete(ProductDetailsEntity pde){
		ofy().delete().entities(pde);
		ofy().clear();
	}

}
