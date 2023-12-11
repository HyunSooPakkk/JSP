package com.java.www.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;

public class NListService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//가져올 데이터가 있으면 request.getParameter();로 불러오면 됨
		//Dao 접근
		BoardDao bdao = new BoardDao();
		ArrayList<BoardDto> list = bdao.SelectAll();
		
		//Request에 담기
		request.setAttribute("list", list);
		
		
	}

}
