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

PreparedStatement ps=con.prepareStatement("select * from product where product_id="+id);
ResultSet rs = ps.executeQuery();

while(rs.next()){
	
	imgFileName=rs.getString("product_image_name");
%>




<div class="card mb-3 ">
  <img src="upload/<%=rs.getString("product_image_name")%>" style="width: 100%; height: 500px"  class="card-img-top img-fluid" alt="...">
  <div class="card-body">
    <h5 class="card-title text-center"><%= rs.getString("product_name") %></h5>
    <p class="card-text"> <%=rs.getString("product_desc") %></p>
    
    <p class="card-text"><small class="text-body-secondary">Status:<%= rs.getString("product_status") %></small></p>
    <h1 class="card-text text-center"> Price:<%= rs.getInt("price") %></h1>
  </div>
     <button type="button" class="btn  btn-outline-success mx-1"><a href="Payment.jsp?id=<%= rs.getInt(1)%>"> BUY NOW</a></button>
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