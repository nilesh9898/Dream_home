package com.bean;

public class RagisterBean {
	
  private String name,email,pass,mobail;
  public RagisterBean(String name, String email, String pass, String mobail) {
		super();
		this.name = name;
		this.email = email;
		this.pass = pass;
		this.mobail = mobail;
	}


  
  public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getMobail() {
		return mobail;
	}

	public void setMobail(String mobail) {
		this.mobail = mobail;
	}


}
