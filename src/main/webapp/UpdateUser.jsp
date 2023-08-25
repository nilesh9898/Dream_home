<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dbconnection.*" import=" java.sql.*"%>
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
      <th scope="col">email</th>
      <th scope="col">Mobile</th>
       <th scope="col">password</th>
       <th scope="col">Edit</th>
       <th scope="col">Delete</th> 
      
     
    </tr>
  </thead>
<% 
try{
	String path="E:\\New folder\\DreamHome\\src\\main\\webapp\\upload\\";
	String fileName=null;

Connection con=ConnectionProvider.getConnection();
PreparedStatement ps=con.prepareStatement("select * from ragister");
ResultSet rs=ps.executeQuery();
while(rs.next()){
	
     fileName =rs.getString(2);
    // System.out.println(fileName);
%>

  <tbody>
    <tr>
      <th ><%= rs.getInt(1) %>
 
      </th>
      <td><%=rs.getString(2) %></td>
      <td><%=rs.getString(3) %></td>
      <td><%=rs.getString(5) %></td>
      <td><%=rs.getString(4) %></td>
  
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