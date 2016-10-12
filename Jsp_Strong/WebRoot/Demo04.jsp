<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>pageContext对象  从四个域中获取数据</title>

  </head>
  
  <body>
  	page域：<%=pageContext.getAttribute("message",PageContext.PAGE_SCOPE) %><br/>
    request域： <%=pageContext.getAttribute("message",PageContext.REQUEST_SCOPE) %><br/>
    session域： <%=pageContext.getAttribute("message",PageContext.SESSION_SCOPE) %><br/>
    context域：<%=pageContext.getAttribute("message",PageContext.APPLICATION_SCOPE) %><br/>
  </body>
</html>
