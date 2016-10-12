<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>动作标签 接受参数</title>

  </head>
  
  <body>
  	${name } - ${password }
  	<hr>
  	<%=request.getParameter("name") %>
  	<%=request.getParameter("password") %>
  	
  </body>
</html>
