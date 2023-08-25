
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
<title>Insert title here</title>
</head>
<body>
<jsp:include page="AdminHome.jsp"></jsp:include>
<div class="col-md-8 mt-3 CreateCategroy">
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Id</th>
       
      <th scope="col">Name</th>
      <th scope="col">status</th>
      <th scope="col">Description</th>
       <th scope="col">title</th>
     
       
      
     
    </tr>
  </thead>
<% 
try{
	String path="E:\\New folder\\DreamHome\\src\\main\\webapp\\upload\\";
	String fileName=null;

Connection con=ConnectionProvider.getConnection();
PreparedStatement ps=con.prepareStatement("select * from product");
ResultSet rs=ps.executeQuery();
while(rs.next()){
	
     fileName =rs.getString("product_image_name");
    // System.out.println(fileName);
%>

  <tbody>
    <tr>
      <th ><%= rs.getInt(1) %>
          <img alt="" src="upload/<%= rs.getString("product_image_name") %>" style="width: 60px; height: 60px; border-radius: 30%">
      </th>
      <td><%=rs.getString("product_name") %></td>
      <td><%=rs.getString("product_status") %></td>
      <td><%=rs.getString("product_desc") %></td>
      <td><%=rs.getString("product_title") %></td>
  
      <td><a href="#">Edit</a></td>
      <td><a href="*">Delete</a></td>
    </tr>
 
  </tbody>

<% 
}
}catch(Exception e){
	e.printStackTrace();
}
%>
</table>
</div>
</body>
</html>