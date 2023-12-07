package com.java.www.service;

import java.sql.Timestamp;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.MemberInfoDao;
import com.java.www.dto.MemberInfoDto;

public class MUpdateService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String memberid = request.getParameter("memberid");
		System.out.println("MUpdateService memberid: "+memberid);
		
		String nicname = request.getParameter("nicname");
		String mempw = request.getParameter("mempw");
		String mail_id = request.getParameter("mail_id");
		String mail_tail = request.getParameter("mail_tail");
		String email = mail_id + "@" + mail_tail;
		System.out.println("MUpdateService email: "+email);
		
		String zonecode = request.getParameter("zonecode");
		String addressType = request.getParameter("addressType");
		String address = zonecode + ","+ addressType;
		System.out.println("MUpdateService address: "+address);
		
		String birth_year = request.getParameter("birth_year");
		String birth_month = request.getParameter("birth_month");
		String birth_day = request.getParameter("birth_day");
		String dateTime = birth_year + "-" + birth_month + "-" + birth_day+" 00:00:00";
		System.out.println("MUpdateService dateTime: "+dateTime);
	    Timestamp birthday = Timestamp.valueOf(dateTime);
	    System.out.println("MUpdateService birthday: "+birthday);
		
		
		MemberInfoDto mdto = new MemberInfoDto(memberid, nicname, mempw, email, address, birthday);
		
		//dao 접근
		MemberInfoDao mdao = new MemberInfoDao();
		int result = mdao.mInfoUpdate(mdto);
				
		//request에 담기
		request.setAttribute("result", result);
		System.out.println("MUpdateService result : "+result);

	}

}
