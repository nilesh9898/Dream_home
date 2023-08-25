package com.bean;

import java.util.List;

public class DesignerBean {
 

	private String profile;
	private String fname;
	private String mname;
	private String lname;
	
	private String certification;
	private String experience;
	private String location;
	private String email;
	private String phone;
	private String dateofbrith;
	private String uploadimage;

	public DesignerBean(String profile, String fname, String mname, String lname, String certification,
			String experience, String location, String email, String phone, String dateofbrith, String uploadimage) {
		super();
		this.profile = profile;
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.certification = certification;
		this.experience = experience;
		this.location = location;
		this.email = email;
		this.phone = phone;
		this.dateofbrith = dateofbrith;
		this.uploadimage = uploadimage;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getCertification() {
		return certification;
	}
	public void setCertification(String certification) {
		this.certification = certification;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDateofbrith() {
		return dateofbrith;
	}
	public void setDateofbrith(String dateofbrith) {
		this.dateofbrith = dateofbrith;
	}
	public String getUploadimage() {
		return uploadimage;
	}
	public void setUploadimage(String uploadimage) {
		this.uploadimage = uploadimage;
	}

	
}
