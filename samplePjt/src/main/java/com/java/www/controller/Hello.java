package com.java.www.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Hello")
public class Hello extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		// 응답 문서에 출력하기 위한 PrintWriter 객체를 가지고 옴        
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head><title></title></head>");
		writer.println("<body>");
		writer.println("<h1>안녕하세요.</h1><br/>");
		writer.println("</body>");
		writer.println("</html>");
		// PrintWriter 객체 자원 해제        
		writer.close();
	}//
	//-----------------
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}
}
