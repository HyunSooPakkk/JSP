package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.MemberDao;
import com.java.www.dto.MemberDto;


public class MDoLoginService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("Service id: "+id);
		//dao 접근 >> 아이디와 패스워드를 가지고 1명의 회원정보를 가져옴
		MemberDao mdao = new MemberDao();
		MemberDto mdto = mdao.mDoLogin(id,pw);
		
		//1명이 검색되었는지 확인. 검색되었으면 1, 검색 안되었으면 0
		int result = 0; 
		if(mdto!=null) {
			result = 1;
			HttpSession session = request.getSession();
			session.setAttribute("session_id", mdto.getId());
			session.setAttribute("session_name", mdto.getName());
		}//if

		//Request 객체에 담기
		request.setAttribute("result", result);
		
	}//Service

}//class
