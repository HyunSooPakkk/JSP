package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/S_01")
public class S1103_01 extends HttpServlet {
    
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		
		//구구단 표 출력
		//HTML 쓰려면 PrintWriter 사용해야 함**
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head><title>표</title>");
		writer.println("<style>");
		writer.println("table,th,td{border:3px solid yellowgreen; border-collapse: collapse; text-align:center;}");
		writer.println("th,td{width:200px; height:40px;}");
		writer.println("</style>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<table>");
		writer.println("<tr><th>단</th><th>*</th><th>숫자</th><th>=</th><th>결과</th></tr>");
		
		for(int i=2;i<=9;i++) {
			for(int j=1;j<=9;j++) {
				writer.println("<tr>");
				writer.println("<td>"+i+"</td>");
				writer.println("<td>*</td>");
				writer.println("<td>"+j+"</td>");
				writer.println("<td>=</td>");
				writer.println("<td>"+(i*j)+"</td>");
				writer.println("</tr>");
				
				}//j
			}//i
		
		writer.println("</table>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
		
		
		//1-100까지 sum
		int sum = 0;
		for(int i=1;i<=100;i++) {
			sum += i;
			System.out.println("합계: "+sum);
		}//for
		
		
		
		
		}//doAction
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}

}
