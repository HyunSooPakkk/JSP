package com.java.www;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("UTF-8");
		//링크로 연결된 파일명 알아내기
		String uri = request.getRequestURI();
		String upath = request.getContextPath();
		String fileName = uri.substring(upath.length());
		System.out.println("Controller에서 클릭한 파일 주소: "+fileName);
		
		//이동 주소
		String url = "";
		
		if(fileName.equals("/login.do")) {
			url = "login.jsp";
		}else if(fileName.equals("/write.do")){
			url = "write.jsp";
		}else if(fileName.equals("/mwrite.do")){
			url = "mwrite.jsp";
		}else if(fileName.equals("/doLogin.do")){
			url = "Do_login";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("");
		dispatcher.forward(request, response);
		
		
		
		//페이지 호출
		//response.sendRedirect(fileName);
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
