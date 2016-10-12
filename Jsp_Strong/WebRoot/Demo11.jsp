<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="joran" uri="http://52joran.duapp.com"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Demo11.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  
  <%--使用标签库中的标签--%>
  <joran:Demo1></joran:Demo1>
  
  
  <joran:Demo02 num="3">
  	你好啊
  </joran:Demo02>
  </body>
</html>
