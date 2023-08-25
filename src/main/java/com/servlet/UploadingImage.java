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

import com.bean.DesignerBean;
import com.dao.DesignerDao;
import com.dao.DesignerDaoImp;

@MultipartConfig(fileSizeThreshold=1024*1024*30, 	// 10 MB 
                 maxFileSize=1024*1024*100,      	// 100 MB
                 maxRequestSize=1024*1024*100)
@WebServlet("/UploadingImage")
public class UploadingImage extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		
		Part file=request.getPart("photo");
	
		//System.out.println(file);
		String image=file.getSubmittedFileName();
		
		//System.out.println(image);
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
		String fname=request.getParameter("fname");
		String mname=request.getParameter("mname");
		String lname=request.getParameter("lname");
		Part file1=request.getPart("Certificate");
		String image1=file1.getSubmittedFileName();
		String p1="E:\\New folder\\DreamHome\\src\\main\\webapp\\upload\\"+image1;
		try {
			FileOutputStream fos1=new FileOutputStream(p1);
			InputStream is1=file1.getInputStream();
			
			byte[] data1=new byte[is1.available()];
			is1.read(data1);
			fos1.write(data1);
			fos1.close();
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		String experience=request.getParameter("Experience");
		String location=request.getParameter("location");
		String email1=request.getParameter("email");
		String phone1=request.getParameter("phone");
		String brithday=request.getParameter("birthday");
		
		
		Part file2=request.getPart("Design");
		String image2=file2.getSubmittedFileName();
		String p2="E:\\New folder\\DreamHome\\src\\main\\webapp\\upload\\"+image2;
		try {
			FileOutputStream fos2=new FileOutputStream(p2);
			InputStream is2=file2.getInputStream();
			
			byte[] data2=new byte[is2.available()];
			is2.read(data2);
			fos2.write(data2);
			fos2.close();
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		System.out.println(image);
		System.out.println(fname);
		System.out.println(mname);
		System.out.println(lname);
		System.out.println(image1);
		System.out.println(experience);
		System.out.println(location);
		System.out.println(email1);
		System.out.println(phone1);
		System.out.println(brithday);
		System.out.println(image2);
		
		DesignerBean designerbean=new DesignerBean(image,fname,mname,lname,image1,experience, location,email1,phone1,brithday,image2);
		System.out.println(designerbean.getFname());
		DesignerDao designerdao=new DesignerDaoImp();
		String msg=designerdao.getDesign(designerbean);
		System.out.println(msg);
		if(msg.equalsIgnoreCase("Succesfully insert data")) {
			  pw.println("<div class=\"alert alert-primary\" role=\"alert\">\r\n"
				  		+ "  insert data succesfully\r\n"
				  		+ "</div>");
			RequestDispatcher rd=request.getRequestDispatcher("Designerprofile.html");
			rd.forward(request, response);
			
		}else if(msg.equalsIgnoreCase("email id already exist")) {
			  pw.println("<div class=\"alert alert-primary\" role=\"alert\">\r\n"
				  		+ "  Email id already exist\r\n"
				  		+ "</div>");
			RequestDispatcher rd=request.getRequestDispatcher("Designerprofile.html");
			rd.include(request, response);
			
		}else {
			  pw.println("<div class=\"alert alert-primary\" role=\"alert\">\r\n"
				  		+ "  unsuccesfully\r\n"
				  		+ "</div>");
			RequestDispatcher rd=request.getRequestDispatcher("Designerprofile.html");
			rd.include(request, response);
			
			
		}
		
	}

}
