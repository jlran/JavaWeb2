<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>动作标签 传递参数</title>

  </head>
  
  <body>
  	<%--转发 --%>
  	<%
  		//request.getRequestDispatcher("/Demo09.jsp?name=jlran&password=123456").forward(request, response);
  	 %>
  	 <%--参数 动态--%>
  	 <%-- 
  	 <jsp:forward page="/Demo09.jsp">
  	 	<jsp:param value="jlran" name="name"/>
  	 	<jsp:param value="123456" name="password"/>
  	 </jsp:forward>
  	 --%>
  	 <%--包含 --%>
  	 <jsp:include page="/Demo09.jsp">
  	 	<jsp:param value="jlran" name="name"/>
  	 	<jsp:param value="123456" name="password"/>
  	 </jsp:include>
  	 <hr>
  	 主页的内容
  </body>
</html>
