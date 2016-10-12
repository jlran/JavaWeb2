<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>EL语法</title>

  </head>
  
  <body>
  	<%
  		String name ="rose";
  		//放入域中
  		pageContext.setAttribute("name", name);
  	 %>
  	 <%=name %>
  	 <br/>
  	 <%--
  	 	从四个域中搜索
  	  --%>
  	  EL表达式 : ${name }
  	  <%--${name } 等价于
	  	    <%=pageContext.findAttribute("name")%> --%>
	  	    
	  
  	  <%--
  	  	从指定的域中获取数据
  	   --%><br />
  	  EL表达式: ${pageScope.name }
  	  <%--
  	  	${pageScope.name } 等价于
	    	 <%= pageContext.getAttribute("name",PageContext.PAGE_SCOPE)%>
  	   --%>
  </body>
</html>
