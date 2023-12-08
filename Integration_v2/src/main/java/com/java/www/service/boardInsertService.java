package com.java.www.service;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class boardInsertService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//dao 접근
		BoardDao bdao = new BoardDao();
		//변수선언
		HttpSession session = request.getSession();
		String memberid = (String) session.getAttribute("session_id");
		String title="", bcontent="", filename=""; 
		
		//form 데이터 처리 multipart
		String upload = "c:/upload";
		int size = 10*1024*1024;
		
		try {
			MultipartRequest multi = new MultipartRequest(request, upload,size,"utf-8",new DefaultFileRenamePolicy());
		title = multi.getParameter("title");
		System.out.println("boardinsertService:" +title);
		bcontent = multi.getParameter("bcontent");
		//input type = file 인 것 이름 모두를 가져옴.
		Enumeration files = multi.getFileNames();
		while(files.hasMoreElements()) {
			String f = (String) files.nextElement();
			filename = multi.getFilesystemName(f);
		}
		BoardDto bdto = new BoardDto(filename, memberid, title, bcontent);
		
		//dao 접근 - 게시글 저장 메소드 호출
		int result = bdao.boardInsert(bdto);
		
		//request 추가 
		request.setAttribute("result",result);
		
		
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
