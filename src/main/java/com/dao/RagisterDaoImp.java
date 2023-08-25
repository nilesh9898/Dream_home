package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.RagisterBean;
import com.dbconnection.ConnectionProvider;

public class RagisterDaoImp implements RagisterDao {
	
	public static String s2;

	@Override
	public String getRagisterDao(RagisterBean ragisterbean) {
		Connection con=ConnectionProvider.getConnection();
		
		//String s ="select * from Ragister where email=?";
		try {
			String s ="select * from ragister where email=?";
			PreparedStatement ps=con.prepareStatement(s);
			ps.setString(1, ragisterbean.getEmail());
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				s2= "email id already exist";
				return s2;
			}
			else {
				String s1="insert into ragister(name,email,pass,mobail) values(?,?,?,?)";
				PreparedStatement ps1=con.prepareStatement(s1);
				
				ps1.setString(1, ragisterbean.getName());
				ps1.setString(2, ragisterbean.getEmail());
				ps1.setString(3, ragisterbean.getPass());
				ps1.setString(4, ragisterbean.getMobail());
				
				int i=ps1.executeUpdate();
				if(i>0) {
					return "Succesfully data";
				}else {
					return "Unsuccesfully data";
				}
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s2;
	}

}
