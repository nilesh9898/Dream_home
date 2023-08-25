package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.RagisterBean;
import com.dao.RagisterDao;
import com.dao.RagisterDaoImp;
import com.validation.Validation;

/**
 * Servlet implementation class Ragister
 */
@WebServlet("/Ragister")
public class Ragister extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String mobile=request.getParameter("mobile");
		//System.out.println(name+ " "+email+" "+pass+" "+mobail);
		//Connection con=ConnectionProvider.getConnection();
		//System.out.println(con);
		System.out.println(mobile);
		System.out.println(pass);

//		  if(!(Validation.validatePassword(pass))) {
//			  pw.println("<div class=\"alert alert-primary\" role=\"alert\">\r\n"
//			  		+ "  wrong password\r\n"
//			  		+ "</div>");
//			  RequestDispatcher rd=request.getRequestDispatcher("Ragister.html");
//				rd.include(request, response);
//			  
//		  }
		  if(!(Validation.validateMinMobile(mobile)) ) {
			  pw.println("<div class=\"alert alert-primary\" role=\"alert\">\r\n"
				  		+ "  Enter the 10 digit number\r\n"
				  		+ "</div>");
			  RequestDispatcher rd=request.getRequestDispatcher("Ragister.html");
			  rd.include(request, response);
		  }
		  else {
		
		RagisterBean ragisterbean =new RagisterBean(name,email,pass,mobile);
		//System.out.println(ragisterbean.getName());
		RagisterDao ragisterdao=new RagisterDaoImp();
		String s=ragisterdao.getRagisterDao(ragisterbean);
		System.out.println(s);
		if(s.equalsIgnoreCase("Succesfully data")) {
			  pw.println("<div class=\"alert alert-primary\" role=\"alert\">\r\n"
				  		+ "  insert data succesfully\r\n"
				  		+ "</div>");
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.forward(request, response);
			
		}else if(s.equalsIgnoreCase("email id already exist")) {
			  pw.println("<div class=\"alert alert-primary\" role=\"alert\">\r\n"
				  		+ "  Email id already exist\r\n"
				  		+ "</div>");
			RequestDispatcher rd=request.getRequestDispatcher("Ragister.html");
			rd.include(request, response);
			
		}else {
			  pw.println("<div class=\"alert alert-primary\" role=\"alert\">\r\n"
				  		+ "  unsuccesfully\r\n"
				  		+ "</div>");
			RequestDispatcher rd=request.getRequestDispatcher("Ragister.html");
			rd.include(request, response);
			
			
		}
     }
	}
}



