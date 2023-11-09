package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(asyncSupported = true, urlPatterns = { "/doLogin" })
public class DoM_login extends HttpServlet {
	
      
    protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("DoM_login doAction");
    	HttpSession session = request.getSession();
    	request.setCharacterEncoding("UTF-8");
    	String uid = request.getParameter("id");	
    	String upw = request.getParameter("pw");
    	String msg = "";
    	String url = "";
    	
    	System.out.println("id: "+uid);
    	System.out.println("pw: "+upw);
    	
    	//DB연결
    	MemberDao mdao = new MemberDao();
    	mdao.loginCheck(uid,upw);
    	//MemberDto uid,upw 입력하려면?
    	MemberDto mdto = mdao.loginCheck(uid,upw);
    	if(mdto==null) {
    		msg = "아이디 또는 패스워드가 일치하지 않습니다. 다시 입력해주세요.";
    		url = "m_login.jsp";
    	}else {
    		msg = "로그인 되었습니다.";
    		url = "m_main.jsp";
    	
    	session.setAttribute("session_id", uid);	
    	session.setAttribute("session_nickName", "길동");	
    	}
    	
    	response.setContentType("text/html; charset=UTF-8");
    	PrintWriter writer = response.getWriter();
    	writer.println("<html>");
    	writer.println("<head>");
    	writer.println("<title>로그인체크</title>");
    	writer.println("</head>");
    	writer.println("<body>");
    	writer.println("<script>");
    	writer.println("alert('"+msg+"');");
    	writer.println("location.href='"+url+"';");
    	writer.println("</script>");
    	writer.println("</body>");
    	writer.println("</html>");
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
