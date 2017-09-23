package com.resourcegrabber.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Entity
public class ProductDetailsEntity {
	@Id
	public
	String blobKeyPic;
	@Index
	public
	String email;
	@Index
	public
	String itemName;
	public
	String price;
	public
	String description;
	@Index
	public
	String category;
	public
	String name;
	public
	String phone;
	public 
	String address;
	
	public ProductDetailsEntity(){
		
	}
	
	public ProductDetailsEntity(String address,String email, String blobKeyPic, String itemName, String price, String description, String category, String name, String phone){
		
		this.email = email;
		this.blobKeyPic = blobKeyPic;
		this.itemName = itemName;
		this.price = price;
		this.description = description;
		this.category = category;
		this.name = name;
		this.phone = phone;
		this.address = address;
	}
}
