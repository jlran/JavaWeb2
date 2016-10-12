<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>EL表达式计算</title>
  </head>
  
  <body>
  <%--算术表达式 + - * / --%>
  ${(10+5) }	<br>
  ${(10*5) }	<br>
  <hr>
  <%--比较运算  > >= < <= == != --%>
  ${(10 > 5) } <br>
  ${(10 < 5) } <br>
  ${(10 == 5) } <br>
  <%-- 逻辑运算 && || !--%>
  ${true && false } <br>
  ${true || false } <br>
  ${!false } 
  <hr>
  <%--判空 null 或 空字符串：empty --%>
  <%
  	String name ="";
  	pageContext.setAttribute("name", name);
   %>
   
   ${name == null } <br>
   ${name == "" } <br>
   ${name == null || name == "" } <br>
   ${empty name } 
   <%-- 
	   ${name == null || name = "" } 等价于  ${empty name } 
	--%>
  
  </body>
</html>
