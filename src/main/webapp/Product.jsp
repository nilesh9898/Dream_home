<%@page import="com.dbconnection.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert Product</title>
</head>
<body>
<jsp:include page="AdminHome.jsp"></jsp:include>
<%
Connection con=ConnectionProvider.getConnection();
PreparedStatement ps=con.prepareStatement("select * from category");
ResultSet rs=ps.executeQuery();

%>
<div class="col-md-8  CreateCategroy">

              <h1 >Create Product</h1>
              
              
              <form action="Product" method="post" enctype="multipart/form-data">
             <div class="mb-3">
            <label  class="form-label">Category </label>
            <select name="Cname" class="form-select" aria-label="Default select example">
  <%
  while(rs.next()){
  %>
           <option ><%= rs.getString("cat_name") %></option>
       
  <%
  }
  %>
  
  <%
  Connection con1=ConnectionProvider.getConnection();
  PreparedStatement ps1=con1.prepareStatement("select * from sub_category");
  ResultSet rs1=ps1.executeQuery();
  %>
           </select>
             </div>
            <div class="mb-3">
            <label  class="form-label">Sub-Category </label>
            <select name="Sname" class="form-select" aria-label="Default select example">
  <%
  while(rs1.next())
  {
  %>
           <option ><%= rs1.getString("subcat_name") %></option>
   <%
  }
   %>
           </select>
             </div>
                <div class="mb-3 mt-3">
                  <label for="formFile" class="form-label">Product Image</label>
                  <input class="form-control" name="photo" type="file" id="formFile">
                </div>
                <div class="mb-3">
                  <label  class="form-label">Product Name</label>
                  <input type="text" class="form-control" id="name"  name="name" aria-describedby="emailHelp">
                  
                </div>
                <div class="mb-3">
                  <label  class="form-label">Product Keyword</label>
                  <input type="text" class="form-control" name="key" id="key">
                </div>
                <div class="mb-3">
                <label  class="form-label">product status </label>
                <select name="status" class="form-select" aria-label="Default select example">
  
                 <option >Show</option>
                  <option >Hide</option>

                   </select>
                    </div>
         
                <div class="mb-3">
                  <label  class="form-label">Product Title</label>
                  <input type="text" class="form-control" name="title" id="Ctitle">
                </div>
                <div class="mb-3">
                  <label  class="form-label">Product url</label>
                  <input type="text" class="form-control" name="url" id="Curl">
                </div>

                <div class="mb-3">
                  <label  class="form-label">Product Description</label>
                  <input type="text" class="form-control" id="Cdesc" name="desc">
                </div>
                <div class="mb-3">
                  <label  class="form-label">Price</label>
                  <input type="text" class="form-control" name="price" id="Cdesc">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>
             </div>  -->


</body>
</html>