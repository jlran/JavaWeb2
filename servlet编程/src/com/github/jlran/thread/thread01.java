package com.github.jlran.thread;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * servlet�Ķ��̲߳�������
 * @author jlran
 *
 */
public class thread01 extends HttpServlet {
	int count = 1;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		synchronized (thread01.class) {	//���������Ψһ������ʹ�������
			resp.getWriter().write("�������ǵ�ǰ��վ�ĵ�" + count + "�ÿ�");
			count++;
		}
	}
}
