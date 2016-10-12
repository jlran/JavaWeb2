package com.github.jlran.thread;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * servlet的多线程并发问题
 * @author jlran
 *
 */
public class thread01 extends HttpServlet {
	int count = 1;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		synchronized (thread01.class) {	//锁对象必须唯一。建议使用类对象
			resp.getWriter().write("你现在是当前网站的第" + count + "访客");
			count++;
		}
	}
}
