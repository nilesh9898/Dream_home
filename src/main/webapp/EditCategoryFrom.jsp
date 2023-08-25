<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dbconnection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bean.CategoryBean"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileOutputStream"%>
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




String name=request.getParameter("name");
String keyword=request.getParameter("keyword");
String status=request.getParameter("status");
String title=request.getParameter("title");
String url=request.getParameter("url");
String Desc=request.getParameter("Desc");
//String title=request.getParameter("title");

System.out.println(name);
System.out.println(keyword);
System.out.println(status);
System.out.println(title);
System.out.println(url);
System.out.println(Desc);

CategoryBean bean=new CategoryBean(null, name, keyword, status, title, url, Desc);


Connection con=ConnectionProvider.getConnection();
try {
	//Connection con=ConnectionProvider.getConnection();
	
	PreparedStatement preparedStatement =con.prepareStatement("update  category set cat_image_name=?,cat_description=?,cat_keyword=?,cat_name=?,cat_status=?,cat_title=?,cat_url=? where cat_id="+id);
	preparedStatement.setString(1, bean.getImage());
	preparedStatement.setString(2, bean.getDesc());
	preparedStatement.setString(3, bean.getKeyword());
	preparedStatement.setString(4, bean.getName());
	preparedStatement.setString(5, bean.getStatus());
	preparedStatement.setString(6, bean.getTitle());
	preparedStatement.setString(7, bean.getUrl());
	int i=preparedStatement.executeUpdate();
	if(i>0){
	%>	
	<div class="alert alert-primary" role="alert">
     update successfully
     </div>
     <jsp:include page="EditCategory.jsp"></jsp:include>
	<% 
	}
	else{
	 %>
	 <div class="alert alert-primary" role="alert">
     failed
     </div>
     <jsp:include page="EditCategory.jsp"></jsp:include>
	<% 
      }
   }
catch(Exception e){
	e.printStackTrace();
}




%>

</body>
</html>