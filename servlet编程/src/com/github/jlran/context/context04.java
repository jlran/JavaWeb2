package com.github.jlran.context;


import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * ��ȡ����
 * @author jlran
 *
 */
public class context04 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//�õ������
		ServletContext context = this.getServletContext();
		//���������ȡ������
		Student student = (Student) context.getAttribute("student");
		System.out.println(student);
	}
}
