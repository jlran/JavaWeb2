<%@ page 
language="java" 
import="java.util.*" 
pageEncoding="utf-8"
buffer="1kb"
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>缓存区</title>
  </head>
  
  <body>
  <%
  	for(int i = 1; i<= 1024; i++){
  		out.write("a");
  	}
  	
  	//查看缓存区大小
  	System.out.println("当前缓存区的大小：" + out.getBufferSize());
  	//查看缓存区剩余大小
  	System.out.println("缓存区剩余大小：" + out.getRemaining());
  	//刷新缓存
  	out.flush();
  	response.getWriter().write("123");
  	
   %>
  </body>
</html>
