package com.java.www.controller;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.java.www.service.MSelectOneService;
import com.java.www.service.MUpdateService;


import com.java.www.service.Service;

@WebServlet("*.do")
public class FController extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");
		String url = null;
		Service service = null;
		//파일이름 추출
		String uri = request.getRequestURI();
		String cPath = request.getContextPath();
		String fileName = uri.substring(cPath.length());
		//파일호출 이름
		System.out.println("파일호출 이름 : "+fileName);
		
		//switch
		switch(fileName) {
		case "html/main.do":
			response.sendRedirect("main.jsp");
			break;
		
		case "/change_info.do": //회원정보수정 페이지를 열어주는 거 - 회원정보 1명 가져오기
			service = new MSelectOneService();
			service.execute(request, response);
			url = "change_info.jsp";
			break;
			
		case "/doM_info_update.do": //회원정보수정
			service = new MUpdateService();
			service.execute(request, response);
			url = "doM_info_update.jsp";
			break;
		
		
		
		default:
			break;
			
		}//switch
		
		if(url != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}//if
	
		
	}//doAction

	//------
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request,response);
	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request,response);
	}//doPost

}
