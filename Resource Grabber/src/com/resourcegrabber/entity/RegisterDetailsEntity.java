package com.resourcegrabber.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class RegisterDetailsEntity {

	@Id
	public
	String email;
	@Index
	public
	String name;
	@Index
	public
	String password;
	@Index
	String semester;
	@Index
	String branch;

	public RegisterDetailsEntity() {

	}

	public RegisterDetailsEntity(String email, String name, String password, 
			 String semester, String branch) {
		this.email = email;
		this.name = name;
		this.password = password;
		
		this.semester = semester;
		this.branch = branch;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String Password) {
		this.password = Password;
	}

	
	public String getSemester() {
		return semester;
	}

	public void setsemester(String semester) {
		this.semester = semester;
	}

	public void setbranch(String branch) {
		this.branch = branch;
	}

	public String getBranch() {

		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	

}
