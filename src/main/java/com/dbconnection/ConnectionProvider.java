package com.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.util.DB_Properties;

public class ConnectionProvider {
     
	public static Connection con;
	
	public static Connection getConnection()  {
		
		if(con==null) {
			try {
				Class.forName(DB_Properties.DB_Driver);
				con =DriverManager.getConnection(DB_Properties.DB_url,DB_Properties.DB_user, DB_Properties.DB_pass);
				return con;
			} 
			catch (ClassNotFoundException | SQLException e) {
				
				e.printStackTrace();
			}
		
		}
	
		return con;
		
		
	}
}
