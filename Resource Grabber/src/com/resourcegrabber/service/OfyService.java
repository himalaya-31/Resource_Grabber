package com.resourcegrabber.service;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyFactory;
import com.googlecode.objectify.ObjectifyService;
import com.resourcegrabber.entity.ProductDetailsEntity;
import com.resourcegrabber.entity.RegisterDetailsEntity;

public class OfyService {
	static{
			ObjectifyService.register(RegisterDetailsEntity.class);
			ObjectifyService.register(ProductDetailsEntity.class);
		}
	
	public static Objectify ofy(){
		return ObjectifyService.ofy();
	}
	
	 public static ObjectifyFactory factory() {
	        return ObjectifyService.factory();
	    }
}
