package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.ForgetBean;
import com.bean.LoginBean;
import com.dbconnection.ConnectionProvider;

public class LoginDaoImp implements LoginDao {
    public static String s;
    public static String msg;
	@Override
	public String getLoginDao(LoginBean loginbean) {
		
		
		
		Connection con =ConnectionProvider.getConnection();
		
		try {
			String s1="select * from ragister where email=? and pass=?";
			PreparedStatement ps=con.prepareStatement(s1);
			ps.setString(1,loginbean.getEmail());
			ps.setString(2,loginbean.getPass());
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				
			   return "succesfully";	
			}
			else 
				return "plz ragister first";
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return s;
	}



public String updateForgetDao( ForgetBean forgetbean) {
	//String msg=null;
	
	Connection con=ConnectionProvider.getConnection();
	try {
		
		String s="select * from ragister where email=?";
		PreparedStatement ps=con.prepareStatement(s);
		ps.setString(1, forgetbean.getEmail());
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			String up="update ragister set pass=? , pass=?";
			PreparedStatement ps1=con.prepareStatement(up);
			ps1.setString(1, forgetbean.getPass());
			ps1.setString(2, forgetbean.getCpass());
			//ps.setString(3, forgetbean.getEmail());
			int i =ps1.executeUpdate();
			if(i>0) 
				 return "Forget succesfully";
			else
				return "incorrect password";
			
      // return msg;
		}else {
			return "plz create the account";
		}
		
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
 return msg;
	
}

}