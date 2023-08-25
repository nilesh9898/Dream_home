<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dbconnection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit category</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

     <!-- ican link -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

     <!-- style  -->
     <style type="text/css">
      .CreateCategroy{
         
          border:1px solid black ;
       
      }
     </style>
     
</head>
<body>
<%
int  id = Integer.parseInt(request.getParameter("id"));
%>
 <div class="cantainer-fluid">
  <div class="row justify-content-center">
   <div class="col-md-8 mt-3 ">
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
              
              
              <form action="EditSubCategoryFrom.jsp?id=<%=id %>" method="post">
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
                
                <button type="submit text-center" class="btn btn-primary">Submit</button>
              </form>
             </div>  
<%
}
catch(Exception e){
	e.printStackTrace();
}
%>
</div>
</div>
</div>