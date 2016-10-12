<%@ page language="java" 
import="java.util.*, com.github.jlran.*"
 pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>EL输出不同类型的数据</title>
  </head>
  
  <body>
  	<%--EL输出对象的属性 --%>
  	<%
  		//保存数据
  		Student student =  new Student("jlran", 20);
  		//放入域中
  		pageContext.setAttribute("student", student);
  		//List
  		List<Student> list = new ArrayList<Student>();
  		list.add(new Student("jlran", 12));
  		list.add(new Student("joran", 20));
  		list.add(new Student("ran", 22));
  		//放入域中
  		pageContext.setAttribute("list", list);
  		
  		//Map
  		Map<String , Student> map =new HashMap<String, Student>();
  		map.put("110", new Student("j", 13));
  		map.put("111", new Student("l", 20));
  		map.put("112", new Student("r", 22));
  		//放入域中
  		pageContext.setAttribute("map", map);
  	 %>
  	 
  	 <%--使用EL获取对象 --%>
  	 ${student.name} - ${student.age }
  	 <%--
       ${student.name} 等价于     （点相对于调用getXX（）方法）
          <%=((Student)pageContext.findAttribute("student")).getName()%>
       --%>
      
     <hr/>
     <%--使用EL获取list对象 --%>
     ${list[0].name } - ${list[0].age }	<br>
     ${list[1].name } - ${list[1].age }<br>
     ${list[2].name } - ${list[2].age }<br>
     <%--
       list[0]等价于       (中括号相对于调用get(参数)方法)
       		((List)pageContext.findAttribute("list")).get(0)
        --%>
     <hr>
     <%--s使用EL获取Map对象 --%>
     ${map['110'].name } - ${map['110'].age }<br>
     ${map['111'].name } - ${map['111'].age }<br>
     ${map['112'].name } - ${map['112'].age }
  </body>
</html>
