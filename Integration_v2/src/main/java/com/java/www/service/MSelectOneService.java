package com.java.www.service;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.MemberInfoDao;
import com.java.www.dto.MemberInfoDto;

public class MSelectOneService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//ID 가져오기
		HttpSession session = request.getSession();
		//String memberid = (String) session.getAttribute("session_id");
		String memberid = "aaa";
		
		//dao 접근
		MemberInfoDao mdao = new MemberInfoDao();
		MemberInfoDto mdto = mdao.selectOne(memberid);
		System.out.println("execute mdto: "+mdto.getNicName());
		
		//format
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String birthdayStr = sdf.format(mdto.getBirthday());
		System.out.println("생일 : "+birthdayStr); //1999-01-25
		
		
		//request에 담기
		request.setAttribute("mdto", mdto);
		request.setAttribute("birthdayStr", birthdayStr);
		
			
	}

}
