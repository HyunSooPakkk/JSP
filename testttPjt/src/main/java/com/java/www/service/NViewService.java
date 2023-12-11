package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;

public class NViewService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//Request에서 데이터 받아오기
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		//Dao 접근
		BoardDao bdao = new BoardDao();
		BoardDto bdto = bdao.SelectOne(bno);
		
		//request에 담기
		request.setAttribute("bdto", bdto);
		
	}

}
