package com.github.jlran.init;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
/**
 * �в�����init���޲ε�init����
 * @author jlran
 *
 */
public class Init01 extends HttpServlet {

	/*
	 * �޲�����init����
	 * �÷�����servlet�ı�д��ʼ������ķ�������Sun��˾��Ƴ���ר�Ÿ�����
	 * �߽��и��ǣ�Ȼ���������дservlet�ĳ�ʼ�߼�����ķ�����
	 * 
	 */
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init()");
	}
	/*
	 * �в�����init����
	 * �÷�����servlet���������ڷ�����һ���ᱻtomcat����������
	 * ע�⣺���Ҫ��д��ʼ���룬����Ҫ�����в�����init����
	 */
//	@Override
//	public void init(ServletConfig config) throws ServletException {
//		// TODO Auto-generated method stub
//		super.init(config);
//	}
}
