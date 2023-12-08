package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.MemberInfoDao;
import com.java.www.dto.MemberInfoDto;

public class DoLoginService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int result = 0;
		String memberid = request.getParameter("id");
		String mempw = request.getParameter("pw");
		
		//dao접근
		MemberInfoDao mdao = new MemberInfoDao();
		MemberInfoDto mdto = mdao.Do_Login(memberid,mempw);
		
		if(mdto != null) {
			result = 1;
			HttpSession session = request.getSession();
			session.setAttribute("session_memberId", mdto.getMemberId());
			session.setAttribute("session_NicName", mdto.getNicName());
			System.out.println("DoLoginService session_memberId : "+ mdto.getMemberId());
		}
		
		
		//request
		System.out.println("DoLoginService result : "+result);
		request.setAttribute("result", result);
		
		
		

	}//execute

}
