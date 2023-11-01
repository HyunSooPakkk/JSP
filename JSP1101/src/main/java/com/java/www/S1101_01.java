package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


   
		@WebServlet("/S_01")
		public class S1101_01 extends HttpServlet {
			
			
			protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				System.out.println("doAction");
				
				request.setCharacterEncoding("UTF-8"); //doPost로 들어오는 데이터를 한글변환처리
				response.setContentType("text/html; charset=UTF-8"); //페이지를 HTML로 열어줭
				
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
				String name = request.getParameter("name");
				String gender = request.getParameter("gender"); //남자,여자
				String address = request.getParameter("address"); //서울,부산...
				String[] hobbys = request.getParameterValues("hobby"); //게임,골프,요리...
				String hobby = "";
					for(int i=0;i<hobbys.length;i++) {
						if(i==0) hobby=hobbys[i];
						else hobby += ","+hobbys[i]; //게임,골프,요리...
						System.out.println(hobby);
					}//for
				
				PrintWriter writer = response.getWriter();
				writer.println("<html>");
				writer.println("<head>");
				writer.println("<title>form data result</title>");
				writer.println("</head>");
				writer.println("<body>");
				writer.println("<h3>id: "+id+"</h3>");
				writer.println("<h3>pw: "+pw+"</h3>");
				writer.println("<h3>이름: "+name+"</h3>");
				writer.println("<h3>성별: "+gender+"</h3>");
				writer.println("<h3>취미 배열: "+Arrays.toString(hobbys)+"</h3>");
				writer.println("<h3>취미: "+hobby+"</h3>");
				writer.println("<h3>주소: "+address+"</h3>");
				writer.println("</body>");
				writer.println("</html>");
				
				writer.close();
			}//doAction
			
			protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				System.out.println("doGet");
				doAction(request, response);
			}//doGet
		
			
			protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				System.out.println("doPost");
				doAction(request, response);
			}//doPost
		
			
		}//public class
