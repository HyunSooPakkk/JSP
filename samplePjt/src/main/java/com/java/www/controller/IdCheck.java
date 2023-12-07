package com.java.www.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.IdCheckService;
import com.java.www.service.Service;


@WebServlet("/IdCheck")
public class IdCheck extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		System.out.println("IdCheck id : "+id);
		
		//service접근
		IdCheckService idChkeckService = new IdCheckService();
		//리턴 - 사용가능,사용불가능
		String result = idChkeckService.idCheck(id);
		
		//ajax전송
		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		writer.print(result); //리턴값
		writer.close();
		
	}//
	
	//-----------------
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}

}
