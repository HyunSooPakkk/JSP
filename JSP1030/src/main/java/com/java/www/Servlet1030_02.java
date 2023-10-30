package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet1030_02
 */
@WebServlet("/S_02")
public class Servlet1030_02 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// h2태그를 생성 후 "controller 페이지로 사용됩니다." 출력
		System.out.println("controller 페이지로 사용됩니다.");
		response.setContentType("text/html; charset=utf-8"); //html 파일임을 선언
		PrintWriter writer = response.getWriter();
			writer.println("<html>");
			writer.println("<head>");
			writer.println("<title>controller</title>");
			writer.println("</head>");
			writer.println("<body>");
			writer.println("<h2>controller 페이지로 사용됩니다.</h2>");
			writer.println("</body>");
			writer.println("</html>");
			
		writer.close();	
	}//doGet

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 접근");
	}//doPost

}
