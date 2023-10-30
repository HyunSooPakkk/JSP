package com.java.www;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/JJJ")
public class JavaAction extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//web browser 에서 url 입력 시 모두 doGet으로 들어옴. form tag method = "get"으로 설정되면 이 페이지가 열림
		System.out.println("Servlet doGet method가 호출되었습니다.");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//form tag method = "post"으로 전송할 때 이 페이지가 열림
		doGet(request, response);
	}

}
