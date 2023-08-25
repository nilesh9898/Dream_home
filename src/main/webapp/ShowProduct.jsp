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
    <title>Dream home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

     <!-- ican link -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

     <!-- style  -->
     <link rel="stylesheet" href="css/home.css">


</head>
<body>
  <jsp:include page="Header.jsp"></jsp:include>
  


<div class="container">
<div class = "row" >
<div class= "col">



<%

int  id = Integer.parseInt(request.getParameter("id"));

try{  
	
	//int  id = Integer.parseInt(request.getParameter("sid"));
	//int  sid = Integer.parseInt(request.getParameter("sid"));
	   String path="C:/Users/saten/eclipse-workspace/shopingsurface/image/";
String imgFileName=null;
Connection con = ConnectionProvider.getConnection();

PreparedStatement ps=con.prepareStatement("select * from product where sub_cat_id="+id);
ResultSet rs = ps.executeQuery();

while(rs.next()){
	  
	  imgFileName=rs.getString("product_image_name");
%>

<div class="ccard-columns  d-inline-flex " style="width:400px; height:50%   display:inline;"   >
<div class="card m-3" >

 <a href="">
 <img class="card-img-top" src="upload/<%=rs.getString("product_image_name")%>"  alt="Card image cap" style="width:350px;height:250px"></a>
 <div class="card-body">
 
  <a href=""> <h5 class="card-title"><%=rs.getString("product_name") %></h5>  </a>
  
   
   
   <p class="card-text text-truncate"  style="max-width:300px;"><%=rs.getString(5) %></p>
   <p class="card-text text-truncate"  style="max-width:300px;"><%=rs.getInt("price") %></p>
 </div>
 <div class="card-footer">
   <button type="button" class="btn  btn-outline-success mx-1">BUY NOW</button>
   
    <button type="button" class="btn  btn-outline-warning mx-1"><a href="DetailProduct.jsp?id=<%= rs.getInt(1)%>">view</a>></button>
 </div>
</div>

</div>
<%}}
catch(Exception e)
{
	   e.printStackTrace();
	   
}
 %>




</div>
</div>

</div>


  
  <jsp:include page="Footer.jsp"></jsp:include>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>