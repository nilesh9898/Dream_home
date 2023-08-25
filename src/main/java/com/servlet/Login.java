package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.LoginBean;
import com.dao.AdminDao;
import com.dao.AdminDaoImp;
import com.dao.LoginDao;
import com.dao.LoginDaoImp;
import com.mysql.cj.xdevapi.SessionFactory;


@WebServlet("/Login")
public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
		
		HttpSession sis=request.getSession();
		//sis.setAttribute("email", email);
		//sis.setAttribute("pass", pass);
		
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		LoginBean loginbean=new LoginBean(email,pass);
		LoginDao logindao=new LoginDaoImp();
		AdminDao adminDao=new AdminDaoImp();
		String s=logindao.getLoginDao(loginbean);
		String s1=adminDao.adminLogin(loginbean);
		String[] s2=s1.split("/");
		
		for(int i=0;i<s2.length;i++)
		{
			System.out.println("Admin name");
			HttpSession httpSession=request.getSession();
			httpSession.setAttribute("name", s2[i]);
		}
		
		//System.out.println(s3[]);
	
		//System.out.println(s2);
//		HttpSession httpSession=request.getSession();
//		httpSession.setAttribute("name", "s2[]");
		
		if(s.equalsIgnoreCase("succesfully")) {
			pw.println("<div class=\"alert alert-success\" role=\"alert\">\r\n"
					+ "  Welcome to Dream Home\r\n"
					+ "</div>");
			RequestDispatcher rd=request.getRequestDispatcher("Home.jsp");
			rd.forward(request, response);
			
			//request.getRequestDispatcher("");
		}else if(s1.equalsIgnoreCase("plz ragister first")) {
			pw.println("<div class=\"alert alert-success\" role=\"alert\">\r\n"
					+ "  Create Account\r\n"
					+ "</div>");
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.include(request, response);
		}
		 else if(s1.equalsIgnoreCase(s1)) {
			 
			
			 RequestDispatcher rd=request.getRequestDispatcher("AdminHome.jsp");
			 rd.forward(request, response);
		}
		else {
			pw.println("<div class=\"alert alert-success\" role=\"alert\">\r\n"
					+ "  Create Account\r\n"
					+ "</div>");
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.include(request, response);
		}
		
		
		
		System.out.println(email+" "+pass);
	}

	}


