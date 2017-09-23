package com.resourcegrabber.dao;

import com.resourcegrabber.entity.RegisterDetailsEntity;
import com.resourcegrabber.service.LoginService;

import static com.resourcegrabber.service.OfyService.ofy;
import java.util.List;

@SuppressWarnings("unused")
public class RegisterDetailsDao {

	static RegisterDetailsEntity rd = null;

	// add new user
	public void save(RegisterDetailsEntity rde) {
		ofy().save().entity(rde);
		ofy().clear();
	}

	// check existing user
	public boolean check(String email) {
		RegisterDetailsEntity rde = ofy().load().type(RegisterDetailsEntity.class).id(email).now();

		if (rde != null)
			return true;
		else
			return false;
	}

	public boolean loginCheck(String email, String password) {
		
		System.out.println(password);
		System.out.println(email);
		
		
		RegisterDetailsEntity rd=ofy().load().type(RegisterDetailsEntity.class).id(email).now();
		
		System.out.println("rd" + rd.password);
		Boolean b =null;
		
		if(rd.password.equals(password))
		{	
			System.out.println(email);
			System.out.println(b);
			b=true;
			return b;
			
		}
		else{
			System.out.println(b);
			b = false;
			return b;
		}
		
		
}
}
