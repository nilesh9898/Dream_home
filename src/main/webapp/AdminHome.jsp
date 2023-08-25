<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dbconnection.*" import=" java.sql.*"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- style link  -->
    <link rel="stylesheet" href="css/admin.css">
    <title>Admin page!</title>
  </head>
  <body>
 <%
 String s=(String)session.getAttribute("name");
 System.out.println(s);
 %>
    <header class="header">
        <nav class="nav">
            <h1>Dashboard!!!</h1>

            
            <nav class="navbar navbar-expand-lg navbar-light bg-light" style="width: 100%;">
                <div class="container-fluid">
                  <a class="navbar-brand" href="#">Dream Home</a>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                      <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="AdminHome.jsp">Home</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="CreateAdmin.jsp">Create Admin</a>
                      </li>

                      <li class="nav-item">
                        <a class="nav-link" href="logout.jsp">Logout</a>
                      </li>
                    </ul>
                    
                  </div>
                </div>
              </nav>
            
        </nav>
    </header>
     
    <!-- body part  -->

    <div class="container-fluid">
        <div class="row">
          <h1 class="wel">Welcome <%= s %>
      	 </h1>
            <div class="row">
             <div class="col-md-3 sidebar">
              <ul>
                <li ><a href="AdminCreateCategroy.jsp">Create category</a></li>
                <!-- <li><button id="CreateCategroyFrom"><a href="">Create categroy</a></button></li> -->
                <li><a href="UpdateCategory.jsp">Update category</a></li>
                <li><a href="SubCategory.jsp">Create sub-category</a></li>
                <li><a href="UpdateSubCategory.jsp">Update sub-category</a></li>
                <li><a href="Product.jsp">Create product</a></li>
                <li><a href="UpdateProduct.jsp">Update product</a></li>
                <li><a href="Designerprofile.jsp">Create Designer</a></li>
                <li><a href="UpdateDesigner.jsp">Update Designer</a></li>
                <li ><a href="UpdateUser.jsp">Show User</a></li>
              </ul> 
             </div>
            

                    
            </div>
           
              
        </div>
    </div>

   

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 
  </body>
</html>