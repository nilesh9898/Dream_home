<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="com.dbconnection.*" import=" java.sql.*"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin page</title>
    <!-- stylelink in bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

     <!-- ican link -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

    <!-- style link  -->
    <link rel="stylesheet" href="css/createadmin.css">

  </head>
  <body>
    
    <div class="container-fluid">
        <div class="row justify-content-center" id="row">
            <div class="col-lg-6" id="col">
                <h1 id="logo">Admin page</h1>
                <form action="AdminRegister" method="post">
                    <div class="mb-3  ">
                        <label for="exampleInputText1" class="form-label text-light">Enter Name</label>
                        <input type="Text" class="form-control" name="name" required="requried" placeholder="Enter the name" id="exampleInputPassword1">
                    </div>
                    <div class="mb-3">
                      <label for="exampleInputEmail1" class="form-label"> Enter Email </label>
                      <input type="email" class="form-control" id="exampleInputEmail1" name="email" required="requried" placeholder="Enter the email" aria-describedby="emailHelp">
                    
                    </div>
                   

                   

                     <div class="mb-3">
                        <label for="exampleInputMobail1" class="form-label">Enter Mobile</label>
                        <input type="number" class="form-control" name="mobile" maxlength="10" 
                       minlength="0" required="requried" placeholder="Enter the mobail" id="exampleInputPassword1">
                    </div>
                     <div class="mb-3">
                      <label for="exampleInputPassword1" class="form-label">Enter Password</label>
                      <input type="password" class="form-control" name="pass" required="requried" placeholder="Enter the password" id="exampleInputPassword1">
                    </div>
                   
                    <button type="submit" class="btn btn-primary" id="btn">Submit</button>
                  </form>
            </div>
        </div>
    </div>
  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
</html>