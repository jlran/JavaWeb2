package com.github.jlran.forward;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 
 * @author jlran
 *
 */
public class forward02 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//保存数据到request域对象
		req.setAttribute("name", "joran");
		//重定向
		//注意：可以跳转到web应用内，或其他web应用，甚至其他外部域名
		resp.sendRedirect("/Servlet/GetDate");
	}
}
