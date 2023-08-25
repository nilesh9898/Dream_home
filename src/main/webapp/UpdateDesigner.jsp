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
<div class="col-md-9 mt-3 CreateCategroy" >
<table class="table table-hover ">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Fname</th>
      <th scope="col">Mname</th>
      <th scope="col">Lname</th>
       <th scope="col">Location</th>
      <th scope="col">Exprience</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
      <th scope="col">Brithday</th>
       <th scope="col">Edit</th>
      <th scope="col">Delete</th>
     
    </tr>
  </thead>
<% 
try{
	String path="E:\\New folder\\DreamHome\\src\\main\\webapp\\upload\\";
	String fileName=null;

Connection con=ConnectionProvider.getConnection();
PreparedStatement ps=con.prepareStatement("select * from designer");
ResultSet rs=ps.executeQuery();
while(rs.next()){
	
     fileName =rs.getString(2);
     System.out.println(fileName);
%>

  <tbody>
    <tr>
      <th ><%= rs.getInt(1) %>
          <img alt="" src="upload/<%= rs.getString(2)%>" style="width: 60px; height: 60px; border-radius: 30%">
      </th>
      <td><%=rs.getString("fname") %></td>
      <td><%=rs.getString(4) %></td>
      <td><%=rs.getString(5) %></td>
      <td><%=rs.getString(8) %></td>
      <td><%=rs.getString(7) %></td>
      <td><%=rs.getString(9) %></td>
      <td><%=rs.getString(10) %></td>
      <td><%=rs.getDate(11) %></td>
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
</div>