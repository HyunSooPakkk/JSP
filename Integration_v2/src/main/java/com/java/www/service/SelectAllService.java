package com.java.www.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;


public class SelectAllService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//dao 접근
		BoardDao bdao = new BoardDao();
		
		//검색부분
		
		//전체 게시글 가져오기 
		ArrayList<BoardDto>list = bdao.teamBoardAllSelect();
		
		//request 추가
		request.setAttribute("list",list);
	}

}
