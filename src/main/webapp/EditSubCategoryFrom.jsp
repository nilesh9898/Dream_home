<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dbconnection.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bean.Sub_categoryBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! int id=0; %>
<%
int  id1 = Integer.parseInt(request.getParameter("id"));
String cname=request.getParameter("Cname");
String name=request.getParameter("name");
String key=request.getParameter("key");
String status=request.getParameter("status");
String title=request.getParameter("title");
String url=request.getParameter("url");
String desc=request.getParameter("desc");

System.out.println(cname);
System.out.println(name);
System.out.println(key);
System.out.println(status);
System.out.println(title);
System.out.println(url);
System.out.println(desc);

Sub_categoryBean bean=new Sub_categoryBean(cname, null, name, key, status, title, url, desc);
Connection con=ConnectionProvider.getConnection();
try{
String s1 ="select * from  category where cat_name=?";
PreparedStatement ps1=con.prepareStatement(s1);
ps1.setString(1, bean.getCname());
ResultSet rs1=ps1.executeQuery();
if(rs1.next()) {
id=rs1.getInt("cat_id");
}
//System.out.println(id);
PreparedStatement preparedStatement =con.prepareStatement("update sub_category set subcat_desc=?,subcat_image_name=?,subcat_keyword=?,subcat_name=?,subcat_status=?,subcat_title=?,subcat_url=?,category_cat_id=? where subcat_id= "+id1);
preparedStatement.setString(1, bean.getDesc());
preparedStatement.setString(2, bean.getImage());
preparedStatement.setString(3, bean.getKeyword());
preparedStatement.setString(4, bean.getName());
preparedStatement.setString(5, bean.getStatus());
preparedStatement.setString(6, bean.getTitle());
preparedStatement.setString(7, bean.getUrl());
preparedStatement.setInt(8, id);
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