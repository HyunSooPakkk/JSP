package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/S_01")
public class S1107_01 extends HttpServlet {
	
    
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println("id: "+id);
		System.out.println("pw: "+pw);
		HttpSession session = request.getSession();
		//DB 연결해서 성공할 경우 , 실패할 경우
		if(id.equals("admin") && pw.equals("1111")) {
			session.setAttribute("session_id", id);
			session.setAttribute("session_nickName", "유신쓰");
			response.sendRedirect("J1107_01.jsp");
		}else{
			writer.println("<script>");
			writer.println("alert('아이디 또는 패스워드가 일치하지 않습니다. 다시 로그인해주세요.');");
			writer.println("location.href='jsp_login.jsp';");
			writer.println("</script>");
		}
			writer.close();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
