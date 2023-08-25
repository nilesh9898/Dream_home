<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="com.dbconnection.*" import=" java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update category</title>
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
PreparedStatement ps=con.prepareStatement("select * from category");
ResultSet rs=ps.executeQuery();
while(rs.next()){
	
     fileName =rs.getString("cat_image_name");
    // System.out.println(fileName);
%>

  <tbody>
    <tr>
      <th ><%= rs.getInt(1) %>
          <img alt="" src="upload/<%= rs.getString("cat_image_name") %>" style="width: 60px; height: 60px; border-radius: 30%">
      </th>
      <td><%=rs.getString("cat_name") %></td>
      <td><%=rs.getString("cat_status") %></td>
      <td><%=rs.getString("cat_description") %></td>
      <td><%=rs.getString("cat_title") %></td>
  
      <td><a href="EditCategory.jsp?id=<%= rs.getInt(1) %>">Edit</a></td>
      <td><a href="DeleteCategory.jsp?id=<%= rs.getInt(1)%>">Delete</a></td>
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