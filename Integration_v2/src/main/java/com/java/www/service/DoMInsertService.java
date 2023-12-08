package com.java.www.service;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.MemberInfoDao;
import com.java.www.dto.MemberInfoDto;

public class DoMInsertService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String memberid = request.getParameter("id");
		String mempw = request.getParameter("pw");
		String nicname = request.getParameter("nicname");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String address = address1 + "," +address2;
		String birth_year = request.getParameter("birth_year");
		String birth_month = request.getParameter("birth_month");
		String birth_day = request.getParameter("birth_day");
		String dateTime = birth_year+"-"+birth_month+"-"+birth_day+" 00:00:00";
		System.out.println("service dateTime 저장이전 : "+dateTime);
	    Timestamp birthday = Timestamp.valueOf(dateTime);
	    System.out.println("service birthday 저장이전 : "+birthday);
	    String mail_tail = request.getParameter("mail_tail");
		String email2 = request.getParameter("email2");
		String email = email2 +"@" + mail_tail ;
		
		
		MemberInfoDto mdto = new MemberInfoDto(memberid, nicname, mempw, address, email, birthday);
		System.out.println("service birthday : "+mdto.getBirthday());
		
		
		//dao 접근
		MemberInfoDao mdao = new MemberInfoDao();
		int result = mdao.doMInsert(mdto);
		
		//request
		request.setAttribute("result", result);
		

	}

}
