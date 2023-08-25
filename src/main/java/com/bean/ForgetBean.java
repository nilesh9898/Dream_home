package com.bean;

public class ForgetBean {
	
   private String email,pass,cpass;
   
   public ForgetBean(String email, String pass, String cpass) {
		super();
		this.email = email;
		this.pass = pass;
		this.cpass = cpass;
	}



public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPass() {
	return pass;
}

public void setPass(String pass) {
	this.pass = pass;
}

public String getCpass() {
	return cpass;
}

public void setCpass(String cpass) {
	this.cpass = cpass;
}
}
