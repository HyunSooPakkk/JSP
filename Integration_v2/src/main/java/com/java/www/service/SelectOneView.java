package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;


public class SelectOneView implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// int page = Integer.parseInt(request.getParameter("page"));
		int boardid = Integer.parseInt(request.getParameter("boardid"));
		String category = request.getParameter("category");
		String sword = request.getParameter("sword");
		BoardDao bdao = new BoardDao();
		BoardDto bdto = bdao.selectOne(boardid);
		
		System.out.println("SelectOneView boardid : "+boardid);

		// ㅠㅏ일이름 추출
		String uri = request.getRequestURI();
		String cPath = request.getContextPath();
		String fileName = uri.substring(cPath.length());
		BoardDto preDto = null;
		BoardDto nextDto = null;

		
		
		
		
		  if(fileName.equals("/teamProject/teamBoard.do")) { preDto =
		  bdao.preSelectOneView(boardid); //next -1 nextDto =
		  bdao.nextSelectOneView(boardid); //pre +1 }
		  
		  }

		// request 추가
		request.setAttribute("bdto", bdto);
		System.out.println("selectoneview : "+ bdto.getBoardid());
		
		// request.setAttribute("page",page);
		request.setAttribute("category", category);
		request.setAttribute("sword", sword);
		request.setAttribute("preDto", preDto);
		request.setAttribute("nextDto", nextDto);

	}

}
