package com.github.jlran.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.SkipPageException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
/**
 * ��ǩ��������
 * @author jlran
 *
 */
public class Demo02 extends SimpleTagSupport{
	//����˽�����Ա���
	private Integer num;
	//�ؼ��� �������ṩ������setter���������ڸ�������ֵ
	public void setNum(Integer num){
		this.num = num;
	}
	
	@Override
	public void doTag() throws JspException, IOException {
		System.out.println("ִ�б�ǩ...");
		/*
		 * ���Ʊ�ǩ�����Ƿ����
		 *    ����� ����jspFrament.invoke();
		 *    ������� ������jspFrament.invoke();
		 */
		//�õ���ǩ������
		JspFragment jspBody = this.getJspBody();
		//ִ��invoke������ �ѱ�ǩ�����������ָ����Writer������
		jspBody.invoke(null);
		
		/*
		 * �����ظ������ǩ������
		 *     ������ ִ�ж��jspBody.invoke()����
		 */
		for(int i = 0; i < num; i++){
			jspBody.invoke(null);
		}
		
		//�ı��ǩ������
		//����StringWriter��ʱ����
		//StringWriter sw = new StringWriter();
		// �ѱ�ǩ�忽������ʱ����
		//jspBody.invoke(sw);
		// ����ʱ�����еõ���ǩ������
		//String content = sw.toString();
		// �ı�����
		//content = content.toLowerCase();
		//System.out.println(content);
		//�Ѹı����������������
		//jspBody.invoke(null); ����ʹ�ô˷�ʽ�������ΪjsbBodyû�иı��
		//this.getJspContext().getOut().write(content);
		
		//���Ʊ�ǩ���������Ƿ����
		throw new SkipPageException();
	}
	
}
