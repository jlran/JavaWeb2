<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Jsp语法</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   	<!-- jsp表达式 -->
   	<%
   		//变量
   		String name="jlran";
   		int a = 10;
   		int b = 20;
   	 %>
   	 <%=name %><br>
   	 <%=(a-b) %>
   	 <hr>
   	 <!-- jsp脚本 -->
   	 <%
   	 	//生成随机数
   	 	Random random = new Random();
   	 	float num = random.nextFloat();
   	  %>
   	  随机数：<%=num %>
   	  <hr>
   	  <!-- 穿插html代码 -->
   	  <%for(int i =0 ; i< 6; i++){ %>
   	   		<h<%=i %>>标题</h<%=i %>>
   	   <% } %>
   	   
   	   <hr>
   	   <%
   	   		//脚本中不能声明方法
   	   		/*
   	   		String age = "10";
   	   		public String getAge(){
   	   			return age;
   	   		}*/
   	    %>
   	    <!-- jsp声明 -->
   	    <%!
   	    	//变量
   	    	String name = "jlran";
   	    	public String getName(){
   	    		return name;
   	    	}
   	    	//jsp不能重复定义翻译好的一些方法
   	     %>
   	     <%=getName() %>
   	     <!-- html注释 -->
   	     <%--jsp注释 --%>
   	     <!-- 显示第一个页面 -->
   	     <%-- <jsp:forward page="Demo01.jsp"></jsp:forward> --%>
  </body>
</html>
