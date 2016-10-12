<%@ page 
	language="java" 
	import="java.util.*" 
	pageEncoding="utf-8"
	session="true"	
%>
	<%-- session="true" 允许使用--%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>page指令</title>
   
  </head>
  
 <body>
 	<% //使用session 需开启session="true"	
 		session.getId();
 	 %>  
  </body>
</html>
