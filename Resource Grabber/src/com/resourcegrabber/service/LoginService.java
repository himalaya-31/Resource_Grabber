package com.resourcegrabber.service;

import com.resourcegrabber.dao.RegisterDetailsDao;

public class LoginService {

	RegisterDetailsDao registerDetailsDao = new RegisterDetailsDao();

	public boolean checkIfUserAlreadyExist(String email,String pass) {

		return registerDetailsDao.loginCheck(email, pass);
	}
}
