package com.github.jlran.life;


import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

public class life01 extends HttpServlet {
	//���췽��
	public life01(){
		System.out.println("���췽��");
	}
	//init����
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init����");
	}
	//service����
	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		System.out.println("service����");
	}
	
	//destroy����
	@Override
	public void destroy() {
		System.out.println("destroy����");
	}
}
