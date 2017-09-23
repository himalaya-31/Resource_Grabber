package com.resourcegrabber.service;

import com.resourcegrabber.dao.RegisterDetailsDao;
import com.resourcegrabber.entity.RegisterDetailsEntity;

public class RegisterDetailsService {
	
	RegisterDetailsDao registerDetailsDao = new RegisterDetailsDao();
	
	public boolean checkIfUserAlreadyExist(String email){
		
		return registerDetailsDao.check(email);
	}
	
	public void registerUser(String email, String name, String password, String semester, String branch){
		RegisterDetailsEntity registerDetailsEntity = new RegisterDetailsEntity(email, name, password, semester, branch);
		
		registerDetailsDao.save(registerDetailsEntity);
	}

}
