package com.github.jlran.forward;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * ת����Ч������תҳ�棩
 * @author jlran
 *
 */
public class forward01 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//�������ݵ��������
		req.setAttribute("name", "Joran");
		//ת�� ע�⣺����ת����ǰwebӦ���������Դ
		this.getServletContext().getRequestDispatcher("/GetData").forward(req, resp);
	}
}
