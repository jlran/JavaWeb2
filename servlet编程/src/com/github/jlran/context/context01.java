package com.github.jlran.context;


import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * �õ�webӦ��·��
 * @author jlran
 *
 */
public class context01 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//�õ�servletcontext����
		ServletContext context = this.getServletContext();
		//�õ�webӦ��·�� webӦ��·��������tomcat�����������е�webӦ������
		String contextPath = context.getContextPath();
		System.out.println(contextPath);
		
		//Ӧ�õ������ض���
		resp.sendRedirect(contextPath + "/index.html");
	}
}
