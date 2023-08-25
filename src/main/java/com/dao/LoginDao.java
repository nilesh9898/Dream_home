package com.dao;

import com.bean.ForgetBean;
import com.bean.LoginBean;

public interface LoginDao {
	
	public String getLoginDao(LoginBean loginbean);
	
	public String updateForgetDao(ForgetBean  forgetbean);

}
