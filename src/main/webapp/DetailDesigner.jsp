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
    <title>Dream Home!</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

     <!-- ican link -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

     <!-- style  -->
     <link rel="stylesheet" href="css/home.css">
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<div class="cantainer-fluid">
<div class="row justify-content-center">
<div class="col-lg-10">
<%
int  id = Integer.parseInt(request.getParameter("id"));

try{  
	
	//int  id = Integer.parseInt(request.getParameter("sid"));
	//int  sid = Integer.parseInt(request.getParameter("sid"));
	   String path="C:/Users/saten/eclipse-workspace/shopingsurface/image/";
String imgFileName=null;
Connection con = ConnectionProvider.getConnection();

PreparedStatement ps=con.prepareStatement("select * from designer where id="+id);
ResultSet rs = ps.executeQuery();

while(rs.next()){
	
	imgFileName=rs.getString("image");
%>




<div class="card mb-3 ">
  <img src="upload/<%=rs.getString("image")%>" style="width: 100%; height: 500px"  class="card-img-top img-fluid" alt="...">
  <div class="card-body">
    <h5 class="card-title text-center"><%= rs.getString("fname") %><%= rs.getString("lname")%> %></h5>
    <p class="card-text text-center"> <%=rs.getString("email") %></p>
    
    <p class="card-text text-center"><small class="text-body-secondary">Experience:<%= rs.getString("exprience") %></small></p>
    <h1 class="card-text text-center"> Location:<%= rs.getString("location") %></h1>
     <h1 class="card-text text-center"> Phone:<%= rs.getString("phone") %></h1>
  </div>
      <button type="button" class="btn  btn-outline-success mx-1">CALL NOW</button>
</div>


<%
}
}catch(Exception e){
	e.printStackTrace();
}
%>
</div>
</div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>