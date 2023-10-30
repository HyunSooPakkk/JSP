package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/S_06")
public class Servlet1030_06 extends HttpServlet {
	//div 만들어서 배경 노랑/사이즈 가로 600 세로 600
	//글자는 서블릿에서 만든 사각형 / 보더는 솔리드 블랙
	//alert("서블릿 파일에 접근했습니다.")
	
    //프로그램을 시작할 때 한 번 실행
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init()메소드는 시작할 때 1번 실행됨.");
	}
	
	//프로그램을 종료할 때 한 번 실행
	public void destroy() {
		System.out.println("destroy()메소드는 종료할 때 1번 실행됨.");
	}

	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8"); //Post 방식으로 접근할 때 필수 기입
		response.setContentType("text/html; charset=utf-8");
		String a = request.getParameter("name");
		System.out.println(a);
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<style>");
		writer.println("div{width:600px; height:600px; font-size:70px; text-align:center; background:yellow; border:3px solid black;}");
		writer.println("</style>");
		writer.println("<script>alert('당신이 입력한 이름: "+request.getParameter("name")+"');</script>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<div>");
		writer.println("<h3>서블릿에서<br>만든<br>사각형</h3>");
		writer.println("</div>");
		writer.println("</body>");
		writer.println("</html>");
	
		writer.close();
	} 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("doGet은 URL 접속/Get방식으로 접근할 때 모두 매 번 실행됨.");
		doAction(request, response);
	}
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("doPost는 Post방식으로 접근할 때 매 번 실행됨.");
		doAction(request, response);
	}

}
