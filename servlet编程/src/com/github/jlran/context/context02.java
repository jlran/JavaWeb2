package com.github.jlran.context;


import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *  得到web应用参数
 * @author jlran
 *
 */
public class context02 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//得到servletcontext对象
		ServletContext context = this.getServletContext();
		System.out.println("参数：" + context.getInitParameter("AAA"));
		
		Enumeration<String> enums = context.getInitParameterNames();
		while(enums.hasMoreElements()){
			String parmName = enums.nextElement();
			String parmVlaue = context.getInitParameter(parmName);
			System.out.println(parmName + " " + parmVlaue);
		}
	}
}
