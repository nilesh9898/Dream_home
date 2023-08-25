package com.bean;

public class Sub_categoryBean {
	private String cname, image;
	private String name,keyword,status,title,url,Desc;
	public Sub_categoryBean(String cname, String image, String name, String keyword, String status, String title,
			String url, String desc) {
		super();
		this.cname = cname;
		this.image = image;
		this.name = name;
		this.keyword = keyword;
		this.status = status;
		this.title = title;
		this.url = url;
		Desc = desc;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getDesc() {
		return Desc;
	}
	public void setDesc(String desc) {
		Desc = desc;
	}

}
