package com.github.jlran.context;


import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 得到web应用路径
 * @author jlran
 *
 */
public class context01 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//得到servletcontext对象
		ServletContext context = this.getServletContext();
		//得到web应用路径 web应用路径：部署到tomcat服务器上运行的web应用名称
		String contextPath = context.getContextPath();
		System.out.println(contextPath);
		
		//应用到请求重定向
		resp.sendRedirect(contextPath + "/index.html");
	}
}
