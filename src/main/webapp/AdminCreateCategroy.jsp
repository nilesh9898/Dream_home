<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category Information</title>
</head>
<body>
<jsp:include page="AdminHome.jsp"></jsp:include>
<div class="col-md-8 mt-3 CreateCategroy">
              <h1 >Create Category</h1>
              <form action="CategoryServlet" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                  <label for="formFile" class="form-label">Category Image</label>
                  <input class="form-control" type="file" id="formFile" name="photo">
                </div>
                <div class="mb-3">
                  <label  class="form-label"> Category Name</label>
                  <input type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name">
                  
                </div>
                <div class="mb-3">
                  <label  class="form-label">Category Keyword</label>
                  <input type="text" class="form-control" id="key" name="keyword">
                </div>
               <div class="mb-3">
             <label  class="form-label">Category Status</label>
             <select name="status" class="form-select" aria-label="Default select example">
  
            <option >Show</option>
              <option >Hide</option>

          </select>
            </div>
                <div class="mb-3">
                  <label  class="form-label">Category Title</label>
                  <input type="text" class="form-control" id="Ctitle" name="title">
                </div>
                <div class="mb-3">
                  <label  class="form-label">Category url</label>
                  <input type="text" class="form-control" id="Curl" name="url">
                </div>

                <div class="mb-3">
                  <label  class="form-label">Category Description</label>
                  <input type="text" class="form-control" id="Cdesc" name="Desc">
                </div>
                
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>
             </div>  -->
           
</body>
</html>