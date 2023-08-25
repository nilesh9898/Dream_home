package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.CategoryBean;
import com.bean.LoginBean;
import com.bean.ProductBean;
import com.bean.Sub_categoryBean;
import com.dbconnection.ConnectionProvider;

public class AdminDaoImp implements AdminDao {

	@Override
	public String getCategory(CategoryBean bean) {
		Connection con=ConnectionProvider.getConnection();
		try {
			//Connection con=ConnectionProvider.getConnection();
			String s ="select * from category where cat_name=?";
			PreparedStatement ps=con.prepareStatement(s);
			ps.setString(1, bean.getName());
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				return "name  already exist";
				 
			}else {
			PreparedStatement preparedStatement =con.prepareStatement("insert into category(cat_image_name,cat_description,cat_keyword,cat_name,cat_status,cat_title,cat_url) values(?,?,?,?,?,?,?)");
			preparedStatement.setString(1, bean.getImage());
			preparedStatement.setString(2, bean.getDesc());
			preparedStatement.setString(3, bean.getKeyword());
			preparedStatement.setString(4, bean.getName());
			preparedStatement.setString(5, bean.getStatus());
			preparedStatement.setString(6, bean.getTitle());
			preparedStatement.setString(7, bean.getUrl());
			int i=preparedStatement.executeUpdate();
			if(i>0)
				return "insert categroy";
			else
				return "failed";
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return null;
	}

	@Override
	public String adminLogin(LoginBean loginbean) {
		
	Connection con =ConnectionProvider.getConnection();
		
		try {
			String s1="select * from admin where email=? and password=?";
			PreparedStatement ps=con.prepareStatement(s1);
			ps.setString(1,loginbean.getEmail());
			ps.setString(2,loginbean.getPass());
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				
				String s=rs.getString("name");
				System.out.println(s);
				return "Admin succesfully"+"/"+s;
			   	
			}
			else 
				return "plz ragister first";
		}catch(Exception e) {
			e.printStackTrace();
			}
		return null;
		}

	@Override
	public String getSubCategory(Sub_categoryBean bean) {
		int id = 0;
		Connection con=ConnectionProvider.getConnection();
		try {
			//Connection con=ConnectionProvider.getConnection();
			String s ="select * from  sub_category where subcat_name=?";
			PreparedStatement ps=con.prepareStatement(s);
			ps.setString(1, bean.getName());
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				return "name  already exist";
				 
			}else {
				
				 String s1 ="select * from  category where cat_name=?";
				PreparedStatement ps1=con.prepareStatement(s1);
				ps1.setString(1, bean.getCname());
				ResultSet rs1=ps1.executeQuery();
				if(rs1.next()) {
				 id=rs1.getInt("cat_id");
				}
				System.out.println(id);
			PreparedStatement preparedStatement =con.prepareStatement("insert into sub_category(subcat_desc,subcat_image_name,subcat_keyword,subcat_name,subcat_status,subcat_title,subcat_url,category_cat_id) values(?,?,?,?,?,?,?,?)");
			preparedStatement.setString(1, bean.getDesc());
			preparedStatement.setString(2, bean.getImage());
			preparedStatement.setString(3, bean.getKeyword());
			preparedStatement.setString(4, bean.getName());
			preparedStatement.setString(5, bean.getStatus());
			preparedStatement.setString(6, bean.getTitle());
			preparedStatement.setString(7, bean.getUrl());
			preparedStatement.setInt(8, id);
			int i=preparedStatement.executeUpdate();
			if(i>0)
				return "insert categroy";
			else
				return "failed";
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		

		return null;
	}

	@Override
	public String getProduct(ProductBean bean) {
		int id = 0;
		int sid=0;
		Connection con=ConnectionProvider.getConnection();
		try {
			//Connection con=ConnectionProvider.getConnection();
			String s ="select * from  product where product_name=?";
			PreparedStatement ps=con.prepareStatement(s);
			ps.setString(1, bean.getName());
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				return "name  already exist";
				 
			}else {
				
				 String s1 ="select * from  category where cat_name=?";
				PreparedStatement ps1=con.prepareStatement(s1);
				ps1.setString(1, bean.getCname());
				ResultSet rs1=ps1.executeQuery();
				if(rs1.next()) {
				 id=rs1.getInt("cat_id");
				}
				
				System.out.println(id);
				
				String s2 ="select * from  sub_category where subcat_name=?";
					PreparedStatement ps2=con.prepareStatement(s2);
					ps2.setString(1, bean.getSname());
					ResultSet rs2=ps2.executeQuery();
					if(rs2.next()) {
					 sid=rs2.getInt("subcat_id");
					}
				
				
				System.out.println(sid);
			PreparedStatement preparedStatement =con.prepareStatement("insert into product(category_id,product_name,product_desc,product_image_name,product_keywords,product_status,product_sub_title,product_title,product_url,sub_cat_id,price) values(?,?,?,?,?,?,?,?,?,?,?)");
			preparedStatement.setInt(1, id);
			preparedStatement.setString(2, bean.getName());
			preparedStatement.setString(3, bean.getDesc());
			preparedStatement.setString(4, bean.getImage());
			preparedStatement.setString(5, bean.getKeyword());
			preparedStatement.setString(6, bean.getStatus());
			preparedStatement.setString(7, null);
			preparedStatement.setString(8, bean.getTitle());
			preparedStatement.setString(9, bean.getUrl());
			preparedStatement.setInt(10, sid);
			preparedStatement.setInt(11, bean.getPrice());
			int i=preparedStatement.executeUpdate();
			if(i>0)
				return "insert categroy";
			else
				return "failed";
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

}