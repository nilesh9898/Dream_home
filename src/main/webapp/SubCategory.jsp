<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dbconnection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sub-category</title>
</head>
<body>
<jsp:include page="AdminHome.jsp"></jsp:include>
<%
try{
	String path="E:\\New folder\\DreamHome\\src\\main\\webapp\\upload\\";
	String fileName=null;

Connection con=ConnectionProvider.getConnection();
PreparedStatement ps=con.prepareStatement("select * from category");
ResultSet rs=ps.executeQuery();
%>
<div class="col-md-8 mt-3 CreateCategroy">

              <h1 >Create Sub-Category</h1>
              
              
              <form action="Sub_categoryServlet" method="post" enctype="multipart/form-data">
                <div class="mb-3">
               <label  class="form-label">Category Name</label>
               <select name="Cname" class="form-select" aria-label="Default select example">
  <% 
  while(rs.next()){
  %>
               <option ><%= rs.getString("cat_name") %></option>
     <%
  }
     %>           

                </select>
                 </div>
                <div class="mb-3 mt-3">
                  <label for="formFile" class="form-label">Sub-Category Image</label>
                  <input class="form-control" type="file" id="formFile" name="photo">
                </div>
                <div class="mb-3">
                  <label  class="form-label">Sub-Category Name</label>
                  <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">
                  
                </div>
                <div class="mb-3">
                  <label  class="form-label">Sub-Category Keyword</label>
                  <input type="text" class="form-control" id="key" name="key">
                </div>
                <div class="mb-3">
                <label  class="form-label">Category Status</label>
                 <select name="status" class="form-select" aria-label="Default select example">
  
                 <option >Show</option>
                  <option >Hide</option>

               </select>
               </div>
        
                <div class="mb-3">
                  <label  class="form-label">Sub-Category Title</label>
                  <input type="text" class="form-control" id="Ctitle" name="title">
                </div>
                <div class="mb-3">
                  <label  class="form-label">Sub-Category url</label>
                  <input type="text" class="form-control" id="Curl" name="url">
                </div>

                <div class="mb-3">
                  <label  class="form-label">Sub-Category Description</label>
                  <input type="text" class="form-control" id="Cdesc" name="desc">
                </div>
                
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>
             </div>  -->
<%
}
catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>