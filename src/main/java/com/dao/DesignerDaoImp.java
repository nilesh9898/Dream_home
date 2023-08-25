package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.DesignerBean;
import com.dbconnection.ConnectionProvider;

public class DesignerDaoImp implements DesignerDao{
	
	
     public static String s2;

	@Override
	public String getDesign(DesignerBean designerbean) {
        Connection con=ConnectionProvider.getConnection();
		
		//String s ="select * from Ragister where email=?";
		try {
			String s ="select * from designer where email=?";
			PreparedStatement ps=con.prepareStatement(s);
			ps.setString(1, designerbean.getEmail());
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				s2= "email id already exist";
				return s2;
			}
			else {
				String s1="insert into designer(image,fname,mname,lname,certification,exprience,location,email,phone,brithday,design) values(?,?,?,?,?,?,?,?,?,?,?)";
				PreparedStatement ps1=con.prepareStatement(s1);
				ps1.setString(1, designerbean.getProfile());
				ps1.setString(2, designerbean.getFname());
				ps1.setString(3, designerbean.getMname());
				ps1.setString(4, designerbean.getLname());
				ps1.setString(5, designerbean.getCertification());
				ps1.setString(6, designerbean.getExperience());
				ps1.setString(7, designerbean.getLocation());
				ps1.setString(8, designerbean.getEmail());
				ps1.setString(9, designerbean.getPhone());
				ps1.setString(10, designerbean.getDateofbrith());
				ps1.setString(11, designerbean.getUploadimage());
			
				int i=ps1.executeUpdate();
				if(i>0){
					s2="Succesfully insert data";
					return s2;
				}else
				{
					s2="unsuccesfully data";
					return s2;
				}
			}
	      }catch(Exception e) {
	    	  e.printStackTrace();
	      }
     
	

			return null;
	}
}
