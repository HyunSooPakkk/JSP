package com.java.www.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.java.www.dao.MemberInfoDao;
import com.java.www.dto.MemberInfoDto;




@WebServlet("/PwChange")
public class PwChange extends HttpServlet {
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("UTF-8");
		
		
		//Ajax에서 넘어온 데이터
		String memberid = request.getParameter("memberid");
		String mempw = request.getParameter("mempw");
		System.out.println("doAction memberid: "+memberid);
		System.out.println("doAction mempw: "+mempw);
		
		//dao 접근: 저장 
		MemberInfoDao mdao = new MemberInfoDao();
		int result = mdao.mPwUpdate(memberid, mempw);
		
		//jsp페이지로 정보전송
		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		
		writer.print(result);
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

}
