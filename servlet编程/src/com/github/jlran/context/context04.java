package com.github.jlran.context;


import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 获取数据
 * @author jlran
 *
 */
public class context04 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//得到域对象
		ServletContext context = this.getServletContext();
		//从域对象中取出数据
		Student student = (Student) context.getAttribute("student");
		System.out.println(student);
	}
}
