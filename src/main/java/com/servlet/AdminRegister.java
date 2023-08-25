package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbconnection.ConnectionProvider;
import com.validation.Validation;

/**
 * Servlet implementation class AdminRegister
 */
@WebServlet("/AdminRegister")
public class AdminRegister extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
	    String email=request.getParameter("email");
	    String pass=request.getParameter("pass");
	    String mobile=request.getParameter("mobile");
	    
	    PrintWriter pw=response.getWriter();
	    response.setContentType("text/html");
	    if(!(Validation.validatePassword(pass))){
	        pw.print("<div class=\"alert alert-warning\" role=\"alert\">\r\n"
	        		+ "  A simple warning alert—wrong password\r\n"
	        		+ "</div>");
	    	
	    	
	    	RequestDispatcher rd=request.getRequestDispatcher("CreateAdmin.jsp");
			rd.include(request, response);
	    	
	    }
	    
	    Connection con =ConnectionProvider.getConnection();
		
		try {
			String s1="select * from admin where email=? and password=?";
			PreparedStatement ps=con.prepareStatement(s1);
			ps.setString(1,email);
			ps.setString(2,pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				pw.print("<div class=\"alert alert-warning\" role=\"alert\">\r\n"
						+ "  A simple warning alert already exist email id\r\n"
						+ "</div>");
				
				RequestDispatcher rd=request.getRequestDispatcher("CreateAdmin.jsp");
				rd.include(request, response);
			   	
			}
			
			else {
				String s2="insert into admin(name,email,mobile,password) values(?,?,?,?)";
				PreparedStatement ps1=con.prepareStatement(s2);
				
				ps1.setString(1, name);
				ps1.setString(2, email);
				ps1.setString(3, mobile);
				ps1.setString(4, pass);
				
				int i=ps1.executeUpdate();
				if(i>0) {
					
					RequestDispatcher rd=request.getRequestDispatcher("AdminHome.jsp");
					rd.include(request, response); 
				}else {
					pw.print("<div class=\"alert alert-warning\" role=\"alert\">\r\n"
							+ "  A simple warning alert—failesd\r\n"
							+ "</div>");
					RequestDispatcher rd=request.getRequestDispatcher("CreateAdmin.jsp");
					rd.include(request, response);
				}
			}
		}catch(Exception e){
			e.printStackTrace();
			
		}
	}

}
