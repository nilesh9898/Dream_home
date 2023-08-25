<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="AdminHome.jsp"></jsp:include>
<div >

   
            
                  
            
            <div class="col-lg-7 " style="position: absolute; top: 35%; left: 30%">
                <!-- Account details card-->
              
                <div class="card mb-4">
                    <div class="card-header">Designer Details</div>
                    <div class="card-body">
                     <form action="UploadingImage" method="post" enctype="multipart/form-data" >
                              <input type="file" class="form-control mb-3" id="picField" name="photo">
                            <!-- Form Group (username)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="inputUsername">First name</label>
                                <input class="form-control" id="inputUsername" type="text" placeholder="Enter your username"  name="fname" >
                            </div>
                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (first name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputFirstName">Middle name</label>
                                    <input class="form-control" id="inputFirstName" type="text" placeholder="Enter your first name" name="mname" required="required">
                                </div>
                                <!-- Form Group (last name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputLastName">Last name</label>
                                    <input  class="form-control" id="inputLastName" type="text" placeholder="Enter your last name" name="lname" required="required">
                                </div>
                            </div>
                            <!-- Qualification-->
                            <div class="row gx-3 mb-2">
                                <!-- Form Group (organization name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputcertificate">Upload Certificate Design </label>
                                    <input type="file" class="form-control"  name="Certificate" id="inputcertificate">
                                </div>
                            <!-- Form Row        -->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (organization name)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputOrgName">Experience</label>
                                    <input class="form-control" id="inputOrgName" type="text" placeholder="Enter your organization name" name="Experience" required="required">
                                </div>
                                <!-- Form Group (location)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputLocation">Location</label>
                                    <input class="form-control" id="inputLocation" type="text" placeholder="Enter your location" name="location" required="required">
                                </div>
                            </div>
                            <!-- Form Group (email address)-->
                            <div class="mb-3">
                                <label class="small mb-1" for="inputEmailAddress">Email address</label>
                                <input class="form-control" id="inputEmailAddress" type="email" placeholder="Enter your email address" name="email" required="required">
                            </div>
                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (phone number)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputPhone">Phone number</label>
                                    <input class="form-control" id="inputPhone" type="tel" placeholder="Enter your phone number" name="phone" required="required">
                                </div>
                                <!-- Form Group (birthday)-->
                                <div class="col-md-6">
                                    <label class="small mb-1" for="inputBirthday">Birthday</label>
                                    <input class="form-control" id="inputBirthday" type="text"  placeholder="dd/mm/yy" name="birthday" required="required">
                                </div>
                                 <!-- upload pdesign(birthday)-->
                                 <div class="col-md-6">
                                    <label class="small mb-1" for="inputuploaddesign">Upload Design Picture</label>
                                    <input type="file" class="form-control"  name="Design"  id="inputuploaddesign">
                                </div>
                            </div>
                            <!-- Save changes button-->
                            <input class="btn btn-primary button-d" type="submit">
                        </form>

</div>
</body>
</html>