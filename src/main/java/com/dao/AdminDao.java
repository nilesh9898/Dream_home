package com.dao;

import com.bean.CategoryBean;
import com.bean.LoginBean;
import com.bean.ProductBean;
import com.bean.Sub_categoryBean;

public interface AdminDao {
	
    public String adminLogin(LoginBean loginbean );
	
	public String getCategory(CategoryBean bean);
		
	public String getSubCategory(Sub_categoryBean bean);
	
	public String getProduct(ProductBean bean);

}
