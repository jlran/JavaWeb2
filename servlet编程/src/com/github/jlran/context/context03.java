package com.github.jlran.context;


import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 保存数据
 * @author jlran
 *
 */
public class context03 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//保存到域对象
		ServletContext context = this.getServletContext();
		//将数据保存到域对象中
		context.setAttribute("student", new Student("Joran", 21));
		System.out.println("保存成功了吧");
	}
}

class Student{
	private String name;
	private int id;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Student(String name, int id){
		this.id = id;
		this.name = name;
	}
	
	public Student(){
		
	}
	
	@Override
	public String toString() {
		return this.name + " " + this.id;
	}
}
