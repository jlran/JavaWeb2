package com.github.jlran.tag;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;


//向浏览器输出客户的ip地址
public class Demo1 extends SimpleTagSupport{
	
	//覆盖doTag()
	@Override
	public void doTag() throws JspException, IOException {
		PageContext context = (PageContext) this.getJspContext();
		HttpServletRequest request = (HttpServletRequest)context.getRequest();
		String ip = request.getRemoteHost();
		JspWriter out = context.getOut();
		out.write(ip);
	}
}
