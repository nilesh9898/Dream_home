package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ForgetBean;
import com.dao.LoginDao;
import com.dao.LoginDaoImp;

/**
 * Servlet implementation class ForgetPassword
 */
@WebServlet("/ForgetPassword")
public class ForgetPassword extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		//pw.println("Forget password");
		
		response.setContentType("text/html");
		
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String cpass=request.getParameter("cpass");
		
		//pw.println(email+" "+pass+" "+cpass);
		
		ForgetBean forgetbean = new ForgetBean(email,pass,cpass);
		LoginDao loginDao=new LoginDaoImp();
		String msg= loginDao.updateForgetDao(forgetbean);
		System.out.println(msg);
	
		if(msg.equalsIgnoreCase("Forget succesfully")) {
			pw.println("Forget succesfully");
			RequestDispatcher rp=request.getRequestDispatcher("Forget.html");
			
		    rp.include(request, response);
		}else{
			pw.println("plz create the account");
			RequestDispatcher rp=request.getRequestDispatcher("Forget.html");
			
		    rp.include(request, response);
		}
		
		
	    
	}
	}


