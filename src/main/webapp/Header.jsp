<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dbconnection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Header</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

     <!-- ican link -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

     <!-- style  -->
     <link rel="stylesheet" href="css/home.css">
</head>
<body>
<% 
try{
	String path="E:\\New folder\\DreamHome\\src\\main\\webapp\\upload\\";
	String fileName=null;

Connection con=ConnectionProvider.getConnection();
PreparedStatement ps=con.prepareStatement("select * from category");
ResultSet rs=ps.executeQuery();

%>

 <nav class="navbar navbar-expand-lg bg-body-tertiary" id="navbar-main">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Dream Home</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent" >
            <ul class="navbar-nav me-auto mb-2 mb-lg-0" id="content">
              <li class="nav-item">
                <a class="nav-link active"  aria-current="page" href="Home.html">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Aboutas.jsp">AboutAs</a>
              </li>
              
             
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Product
                </a>
                <ul class="dropdown-menu">
             <%
             while(rs.next()){
            	int id =rs.getInt(1);
             %>
                  <li><a class="dropdown-item" href="ShowSubCategory.jsp?id=<%= rs.getInt(1)%>"><%= rs.getString("cat_name") %></a></li>
                  <li><hr class="dropdown-divider"></li>
                  
             <%
             session.setAttribute("id1", "id");
             }
             %>
                  
                </ul>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"  aria-expanded="false">
                  Designer
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="Designerprofile.html"> New account </a></li>
                  <li><a class="dropdown-item" href="Updateprofile.html">Update account</a></li>
                  
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#"></a></li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="logout.jsp" >logout</a>
              </li>
            </ul>
            <form class="d-flex" role="search">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
          </div>
        </div>
      </nav>
<%


}catch(Exception e){
	e.printStackTrace();
	}

      %>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>