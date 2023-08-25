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
<% 
int  id = Integer.parseInt(request.getParameter("id"));
try{
	String path="E:\\New folder\\DreamHome\\src\\main\\webapp\\upload\\";
	String fileName=null;

Connection con=ConnectionProvider.getConnection();
PreparedStatement ps=con.prepareStatement("Delete FROM category WHERE cat_id="+id);

int i=ps.executeUpdate();
if(i>0){
%>	
<div class="alert alert-primary" role="alert">
 Delete successfully
 </div>
 <jsp:include page="UpdateCategory.jsp"></jsp:include>
<% 
}
else{
 %>
 <div class="alert alert-primary" role="alert">
 failed
 </div>
 <jsp:include page="UpdateCategory.jsp"></jsp:include>
<% 
  }
}catch(Exception e){
	e.printStackTrace();
	
}
%>

</body>
</html>