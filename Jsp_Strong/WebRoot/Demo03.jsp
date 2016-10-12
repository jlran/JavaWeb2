<%@ page language="java" import="java.util.*" pageEncoding="utf-8" session="true"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>pageContext对象</title>
  </head>
  
  <body>
  	<% //1）可以获取其他8个内置对象
  		response.getWriter().write("是否相等？" + (out == pageContext.getOut()));	
  		out.write("是否相等？" + (session == pageContext.getSession()));
  	 %>
  	 <hr/>
  	 <%	//保存数据。默认情况下，保存在page域中
  		pageContext.setAttribute("msg", "page's message");
  		pageContext.setAttribute("msg", "request's message", PageContext.REQUEST_SCOPE);
  	 	pageContext.setAttribute("msg", "session's message", PageContext.SESSION_SCOPE);
  	 	pageContext.setAttribute("msg", "context's message", PageContext.APPLICATION_SCOPE);
  	  %>
  	  <%--获取数据
  	  	原则： 
           	1）在哪个域中保存数据，就必须从哪个域取出数据！！！
  	   --%>
  	   <%=pageContext.getAttribute("msg", PageContext.PAGE_SCOPE) %> <br>
  	   <%=pageContext.getAttribute("msg", PageContext.REQUEST_SCOPE) %><br>
  	   <%=pageContext.getAttribute("msg", PageContext.SESSION_SCOPE) %><br>
  	   <%=pageContext.getAttribute("msg", PageContext.APPLICATION_SCOPE) %>
  	  <hr>
  	  <%-- 
  	  findAttribute(): 在四个域自动搜索数据
        		顺序： page域 -> request域  -> session域 -> context域
  	  --%>
  	  <%=pageContext.findAttribute("msg") %>
  	  
  	  <hr>
  	  <%
  	  		//转发
  	  		//request.getRequestDispatcher("/Demo02.jsp").forward(request, response);
  	  		//重定向
  	  		response.sendRedirect(request.getContextPath() + "/Demo02.jsp");
  	   %>
  </body>
</html>
