
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dbconnection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" ></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"  />

</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>

<div class="container">
<div class = "row" >
<div class= "col">



<%

int  id = Integer.parseInt(request.getParameter("id"));


try{  
	   String path="C:/Users/saten/eclipse-workspace/shopingsurface/image/";
String imgFileName=null;


Connection con=ConnectionProvider.getConnection();
PreparedStatement ps=con.prepareStatement("select * from sub_category where category_cat_id="+id);
ResultSet rs=ps.executeQuery();

while(rs.next()){
	  
	  imgFileName=rs.getString("subcat_image_name");
%>

<div class="ccard-columns  d-inline-flex " style="width:400px; height:50%   display:inline;"   >
<div class="card m-3" >

<a href="ShowProduct.jsp?id=<%= rs.getInt(1)%>">
 <img class="card-img-top" src="upload/<%=imgFileName%>"  alt="Card image cap" style="width:350px;height:250px"></a>
 <div class="card-body">
 
   <h5 class="card-title"><%=rs.getString("subcat_name") %></h5>
   <h4>price :   <%=rs.getString(7) %></h4>
   
   
   <p class="card-text text-truncate"  style="max-width:300px;"><%=rs.getString(3) %></p>
 </div>
 <div class="card-footer">
   <button type="button" class="btn  btn-outline-success mx-1">Add to cart</button>
    <button type="button" class="btn  btn-outline-danger mx-1">wishlist</button>
    <button type="button" class="btn  btn-outline-warning mx-1">view</button>
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