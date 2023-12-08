package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;


public class boardDeleteService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//dao 접근
		BoardDao bdao = new BoardDao();
		
		//변수선언
		int boardid=0,page=1;
		//String category=request.getParameter("category");
		//String sword =  request.getParameter("sword");
	//	page = Integer.parseInt(request.getParameter("page"));
		boardid = Integer.parseInt(request.getParameter("boardid"));
		System.out.println("boardDelectService : "+boardid);
		
		
		//호출
		int result2 = bdao.boardAttachdelete(boardid);
		int result = bdao.boardListdelete(boardid);
		
		//requst추가
	//	request.setAttribute("page",page);
	//	request.setAttribute("category",category);
	//	request.setAttribute("sword",sword);
	}

}
