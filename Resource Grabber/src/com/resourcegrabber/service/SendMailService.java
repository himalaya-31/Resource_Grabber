package com.resourcegrabber.service;

import java.io.IOException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMailService {
	private static Logger log = Logger.getLogger(SendMailService.class.getCanonicalName());
	
	//sender email
	private static String fromAddress = "linkinparkhoney@gmail.com";
	
	public void welcomeMail(String toAddress, String subject, String messageBody)throws IOException{
		Properties props = new Properties();
		Session session = Session.getDefaultInstance(props, null);
		
		try{
			Message msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(fromAddress));
			InternetAddress to = new InternetAddress(toAddress);
			msg.addRecipient(Message.RecipientType.TO, to);
			msg.setSubject(subject);
		    msg.setText(messageBody);
		    Transport.send(msg);
		}
		catch (AddressException addressException) {
		      log.log(Level.SEVERE, "Address Exception , mail could not be sent", addressException);
		    } catch (MessagingException messageException) {
		      log.log(Level.SEVERE, "Messaging Exception , mail could not be sent", messageException);
		    }
		
	}
	
	//an email has been sent to your email id
	public void resetMail1(String toAddress, String subject, String messageBody)throws IOException{
		
	}
	
	//your password has been reset
	public void resetMail12(String toAddress, String subject, String messageBody)throws IOException{
		
	}
	
	public void subscribeMail(String toAddress, String subject, String messageBody)throws IOException{
		Properties props = new Properties();
		Session session = Session.getDefaultInstance(props, null);
		
		try{
			Message msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(fromAddress));
			InternetAddress to = new InternetAddress(toAddress);
			msg.addRecipient(Message.RecipientType.TO, to);
			msg.setSubject(subject);
		    msg.setText(messageBody);
		    Transport.send(msg);
		}
		catch (AddressException addressException) {
		      log.log(Level.SEVERE, "Address Exception , mail could not be sent", addressException);
		    } catch (MessagingException messageException) {
		      log.log(Level.SEVERE, "Messaging Exception , mail could not be sent", messageException);
		    }
	}
	
	public void forgotPasswordMail(String toAddress, String subject, String messageBody){
		Properties props = new Properties();
		Session session = Session.getDefaultInstance(props, null);
		
		try{
			Message msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(fromAddress));
			InternetAddress to = new InternetAddress(toAddress);
			msg.addRecipient(Message.RecipientType.TO, to);
			msg.setSubject(subject);
		    msg.setText(messageBody);
		    Transport.send(msg);
		}
		catch (AddressException addressException) {
		      log.log(Level.SEVERE, "Address Exception , mail could not be sent", addressException);
		    } catch (MessagingException messageException) {
		      log.log(Level.SEVERE, "Messaging Exception , mail could not be sent", messageException);
		    }
	}
}
