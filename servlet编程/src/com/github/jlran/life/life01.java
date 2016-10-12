package com.github.jlran.life;


import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

public class life01 extends HttpServlet {
	//构造方法
	public life01(){
		System.out.println("构造方法");
	}
	//init方法
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init方法");
	}
	//service方法
	@Override
	public void service(ServletRequest req, ServletResponse res)
			throws ServletException, IOException {
		System.out.println("service方法");
	}
	
	//destroy方法
	@Override
	public void destroy() {
		System.out.println("destroy方法");
	}
}
