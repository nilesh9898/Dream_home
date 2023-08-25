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
    <title>Dream Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

     <!-- ican link -->
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
     
     <!-- style  -->
     <link rel="stylesheet" href="css/Payment.css">
     <script type="text/javascript">
function validate()
{
	if(/^[0-9]{2}[/]{1}[0-9]{3}$/.test(document.getElementById("expires").value))
	{
		return true;
	}
	else
	{
		alert("galat");
		return false;
	}
	

}	
</script>
</head>
<body>
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

<div class="container">
        <div class="row m-0">
            <div class="col-lg-7 pb-5 pe-lg-5">
                <div class="row">
                    <div class="col-12 p-5">
                        <img src="upload/<%= rs.getString("product_image_name") %>"
                            alt="">
                    </div>
                   
                </div>
            </div>
            <div class="col-lg-5 p-0 ps-lg-4">
                <div class="row m-0">
                    <div class="col-12 px-4">
                        <div class="d-flex align-items-end mt-4 mb-2">
                            <p class="h4 m-0">Dream Home</p>
                            <P class="ps-3 textmuted">1L</P>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <p class="textmuted">Qty</p>
                            <p class="fs-14 fw-bold">1</p>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <p class="textmuted">Price:</p>
                            <p class="fs-14 fw-bold"><span class="fas fa-dollar-sign pe-1"></span><%= rs.getInt("price")%></p>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <p class="textmuted">Shipping</p>
                            <p class="fs-14 fw-bold">Free</p>
                        </div>
                        <div class="d-flex justify-content-between mb-2">
                            <p class="textmuted">Promo code</p>
                            <p class="fs-14 fw-bold">-<span class="fas fa-dollar-sign px-1"></span>0</p>
                        </div>
                        <div class="d-flex justify-content-between mb-3">
                            <p class="textmuted fw-bold">Total</p>
                            <div class="d-flex align-text-top ">
                                <span class="fas fa-dollar-sign mt-1 pe-1 fs-14 "></span><span class="h4"><%= rs.getString("price") %></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 px-0">
                        <div class="row bg-light m-0">
                            <div class="col-12 px-4 my-4">
                                <p class="fw-bold">Payment detail</p>
                            </div>
                            <div class="col-12 px-4">
                                <div class="d-flex  mb-4">
                                    <span class="">
                                        <p class="text-muted">Card number</p>
                                        
                                        <input class="form-control" type="tel" min="1" maxlength="16" required="required"
                                            placeholder="1234 5678 9012 3456" id="card">
                                    </span>
                                    <div class=" w-100 d-flex flex-column align-items-end">
                                        <p class="text-muted">Expires</p>
                                        <input class="form-control2" type="text" id="expires" value="01/2020" placeholder="MM/YYYY" required="required">
                                    </div>
                                </div>

                                    <div class="w-100 d-flex flex-column align-items-end">
                                        <p class="text-muted">CVC</p>
                                        <input class="form-control3" type="tel" id="cvc" maxlength="3" value="630" placeholder="XXX" required="required">
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="row m-0">
                            <div class="col-12  mb-4 p-0">
                                <div class="btn btn-primary " id="btn"><a href="" ">Purchase<span class="fas fa-arrow-right ps-2" ></a></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <%
}
}catch(Exception e){
	e.printStackTrace();
}
%>
<script type="text/javascript">
const btn=document.getElementById("btn");
btn.addEventListener("click", function(){
	alert("Hello! payment succesfully");
});
</script>
</body>
</html>