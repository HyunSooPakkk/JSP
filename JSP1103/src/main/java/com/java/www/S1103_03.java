package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/S_03")
public class S1103_03 extends HttpServlet {
    
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		int page = Integer.parseInt(request.getParameter("page"));
		String searchword = request.getParameter("searchword");
		int srow = (10*(page-1))+1;
		int erow = page*10;
		System.out.println("호출한 페이지: "+page); //7페이지
		System.out.println("가져올 시작 번호: "+srow); //61번
		System.out.println("가져올 마지막 번호: "+erow); //70번
		System.out.println("가져올 마지막 번호: "+searchword); //넘어온 검색어
		
		String query = "select * from"
		+"(select row_number() over(order by bno desc) as rnum,bno,btitle,bcont,bdate"
		+" from board "
		+"where bcont like '%"+searchword+"%'"
		+ ") a where a.rnum>="+srow+" and a.rnum<="+erow+"";
		
		System.out.println("Oracle Query 구문: "+query);
				
		//1: 1,10   1*10
		//2: 11,20  (10*(i-1))+1    /i=page
		//3: 21,30	(20*(i-1))+1
		//4: 31,30	(30*(i-1))+1
		//5: 41,30	(40*(i-1))+1
		
		}//doAction
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
		}//doGet

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
		}//doPost

}//Public
