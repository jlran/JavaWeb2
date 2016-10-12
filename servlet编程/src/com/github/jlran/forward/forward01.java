package com.github.jlran.forward;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 转发（效果：跳转页面）
 * @author jlran
 *
 */
public class forward01 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//保存数据到域对象中
		req.setAttribute("name", "Joran");
		//转发 注意：不能转发当前web应用以外的资源
		this.getServletContext().getRequestDispatcher("/GetData").forward(req, resp);
	}
}
