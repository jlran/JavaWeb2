package com.github.jlran.config;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class config01 extends HttpServlet {
	/*
	 *  1��tomcat����������Щ�������ڼ���webӦ�õ�ʱ�򣬷�װ��ServletConfig������ 
	 *  2��tomcat����������init��������ServletConfig����
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//��ȡservlet�ĳ�ʼ����
		String path = this.getServletConfig().getInitParameter("path");
		System.out.println(path);
		File file = new File(path);
		//��ȡ����
		BufferedReader br = new BufferedReader(new FileReader(file));
		String str = null;
		while((str = br.readLine()) != null){
			System.out.println(str);
		}
		
		//��ѯ��ǰservlet�����г�ʼ������
		Enumeration<String> enums = this.getServletConfig().getInitParameterNames();
		while(enums.hasMoreElements()){
			String paranmName = enums.nextElement();
			String paramValue = this.getServletConfig().getInitParameter(paranmName);
			System.out.println(paranmName + " " + paramValue);
		}
		
		//�õ�servlet������
		String servletName = this.getServletConfig().getServletName();
		System.out.println(servletName);
	}
}
