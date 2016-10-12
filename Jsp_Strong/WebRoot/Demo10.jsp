<%@ page language="java" import="java.util.*,com.github.jlran.*" pageEncoding="UTF-8"%>
<%--导入标签库 --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>核心标签库</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  <body>
  <%--使用标签 --%>
  <%--set标签：保存数据到域中--默认保存到page域 --%>
  <c:set var="name" value="joran" scope="request"></c:set>
  ${requestScope.name }
  
  <%--out标签：获取数据从域中
  default：当value值为null时，使用默认值
  escapeXml：是否对value值进行转义，false，不转义 true转义 （默认）
   --%>
   <%
   	String msg = "hello";
   	pageContext.setAttribute("msg", msg);
   	%>
   	
   <c:out value="${msg }"></c:out>
   
   <%--if:单条件判断 --%>
   <c:if test="${!empty msg }">
   		条件成立
   </c:if>
   
   <c:set var="score" value="55"></c:set>
   
   <%--多条件判断 --%>
   <c:choose>
   		<c:when test="${score < 50}">
   			不合格
   		</c:when>
   		<c:when test="${score > 50 && score < 100 }">
   			良好
   		</c:when>
   		<c:otherwise>
   			不知道了
   		</c:otherwise>
   </c:choose>
   
   <%--循环 --%>
   <%
    	//List
     	List<Student>  list = new ArrayList<Student>();
     	list.add(new Student("jlran",18));
     	list.add(new Student("j",28));
     	list.add(new Student("o",38));
     	//放入域中
     	pageContext.setAttribute("list",list);
     	
     	//Map
     	Map<String,Student> map = new HashMap<String,Student>();
     	map.put("100",new Student("j",20));
     	map.put("101",new Student("o",30));
     	map.put("102",new Student("jlran",40));
     	//放入域中
     	pageContext.setAttribute("map",map);
     %>
      <%--
      begin="" : 从哪个元素开始遍历，从0开始.默认从0开始
      end="":     到哪个元素结束。默认到最后一个元素
      step="" ： 步长    (每次加几)  ，默认1
      items=""： 需要遍历的数据（集合） 
      var=""： 每个元素的名称 
      varStatus=""： 当前正在遍历元素的状态对象。（count属性：当前位置，从1开始）
     --%>
     <br/>
   <c:forEach items="${list }" var="stu">
   		${stu.name } - ${stu.age} <br/>
   </c:forEach>
   <hr>
   <c:forEach items="${map }" var="entry">
   		${entry.key } - ${entry.value.name } - ${entry.value.age }<br/>
   </c:forEach>
   
   <%--循环特殊字符串 --%>
   <%
   		String str = "jlran-jo-ran";
   		pageContext.setAttribute("str", str);
    %>
    
    <c:forTokens items="${str }" delims="-" var="s">
    	${s } <br />
    </c:forTokens>
    
    <%--重定向 --%>
    <c:redirect url="http://www.baidu.com"></c:redirect>
  </body>
</html>
