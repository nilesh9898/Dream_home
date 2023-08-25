package com.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bean.Sub_categoryBean;
import com.dao.AdminDao;
import com.dao.AdminDaoImp;


@MultipartConfig(fileSizeThreshold=1024*1024*30, 	// 10 MB 
                 maxFileSize=1024*1024*100,      	// 100 MB
                 maxRequestSize=1024*1024*100)
@WebServlet("/Sub_categoryServlet")
public class Sub_categoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		
		
        Part file=request.getPart("photo");
		
		System.out.println(file);
		String image=file.getSubmittedFileName();
		
		System.out.println(image);
		//String p=this.getServletConfig().getServletContext().getRealPath("upload");
		String p="E:\\New folder\\DreamHome\\src\\main\\webapp\\upload\\"+image;
		//String upload=p+"\\"+image;
		//System.out.println(upload);
		try {
		FileOutputStream fos=new FileOutputStream(p);
		InputStream is=file.getInputStream();
		
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		String cname=request.getParameter("Cname");
		String name=request.getParameter("name");
		String key=request.getParameter("key");
		String status=request.getParameter("status");
		String title=request.getParameter("title");
		String url=request.getParameter("url");
		String desc=request.getParameter("desc");
		
		System.out.println(cname);
		System.out.println(name);
		System.out.println(key);
		System.out.println(status);
		System.out.println(title);
		System.out.println(url);
		System.out.println(desc);
		
		Sub_categoryBean bean=new Sub_categoryBean(cname, image, name, key, status, title, url, desc);
		AdminDao adminDao=new AdminDaoImp();
		String msg=adminDao.getSubCategory(bean);
		System.out.println(msg);
		if(msg.equalsIgnoreCase("insert categroy")) {
			pw.println("<div class=\"alert alert-success\" role=\"alert\">\r\n"
					+ "  insert category\r\n"
					+ "</div>");
			RequestDispatcher rd=request.getRequestDispatcher("AdminHome.jsp");
			rd.include(request, response); 
		}
		else if(msg.equalsIgnoreCase("name  already exist")) {
			pw.println("<div class=\"alert alert-success\" role=\"alert\">\r\n"
					+ "  This product name allready exist\r\n"
					+ "</div>");
			RequestDispatcher rd=request.getRequestDispatcher("AdminHome.jsp");
			rd.include(request, response); 
		}
		else {
			
			
			RequestDispatcher rd=request.getRequestDispatcher("AdminHome.jsp");
			rd.include(request, response); 
		}
	}

}
