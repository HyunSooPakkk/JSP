package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/S_04")
public class Servlet1030_04 extends HttpServlet {
	
   
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8"); //Post 방식으로 접근할 때 필수 기입
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>서블릿 페이지</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>서블릿 페이지</h1>");
		writer.println("<h2>전달받은 아이디</h2>");
		writer.println("<h2>"+request.getParameter("id")+"</h2>");
		writer.println("<h2>전달받은 패스워드</h2>");
		writer.println("<h2>"+request.getParameter("pw")+"</h2>");
		writer.println("<h2>전달받은 이름</h2>");
		writer.println("<h2>"+request.getParameter("name")+"</h2>");
		writer.println("</body>");
		writer.println("</html>");
	
		writer.close();
	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}

}
