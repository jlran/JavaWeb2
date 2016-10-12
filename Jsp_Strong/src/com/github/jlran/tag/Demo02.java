package com.github.jlran.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.SkipPageException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
/**
 * 标签处理器类
 * @author jlran
 *
 */
public class Demo02 extends SimpleTagSupport{
	//声明私有属性变量
	private Integer num;
	//关键点 ：必须提供公开的setter方法，用于给变量赋值
	public void setNum(Integer num){
		this.num = num;
	}
	
	@Override
	public void doTag() throws JspException, IOException {
		System.out.println("执行标签...");
		/*
		 * 控制标签内容是否输出
		 *    输出： 调用jspFrament.invoke();
		 *    不输出： 不调用jspFrament.invoke();
		 */
		//得到标签的内容
		JspFragment jspBody = this.getJspBody();
		//执行invoke方法： 把标签体内容输出到指定的Writer对象中
		jspBody.invoke(null);
		
		/*
		 * 控制重复输出标签体内容
		 *     方法： 执行多次jspBody.invoke()方法
		 */
		for(int i = 0; i < num; i++){
			jspBody.invoke(null);
		}
		
		//改变标签体内容
		//创建StringWriter临时容器
		//StringWriter sw = new StringWriter();
		// 把标签体拷贝到临时容器
		//jspBody.invoke(sw);
		// 从临时容器中得到标签体内容
		//String content = sw.toString();
		// 改变内容
		//content = content.toLowerCase();
		//System.out.println(content);
		//把改变的内容输出到浏览器
		//jspBody.invoke(null); 不能使用此方式输出，因为jsbBody没有改变过
		//this.getJspContext().getOut().write(content);
		
		//控制标签余下内容是否输出
		throw new SkipPageException();
	}
	
}
