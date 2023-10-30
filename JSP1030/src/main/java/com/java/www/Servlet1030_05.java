package com.java.www;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/S_05")
public class Servlet1030_05 extends HttpServlet {
	
    //프로그램을 시작할 때 한 번 실행
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init()메소드는 시작할 때 1번 실행됨.");
	}
	
	//프로그램을 종료할 때 한 번 실행
	public void destroy() {
		System.out.println("destroy()메소드는 종료할 때 1번 실행됨.");
	}

	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("doAction");
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
