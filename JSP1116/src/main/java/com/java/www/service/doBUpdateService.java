package com.java.www.service;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class doBUpdateService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//bno,id,btitle,bcont,bfile,oldBfile 모두 6개가 넘어와야 함

		String upload = "c:/upload";
		int size = 10*1024*1024;
		int bno = 0;
		String id="", btitle="", bcont="", bfile="", oldBfile="";
		
		try {
			MultipartRequest multi = new MultipartRequest(request, upload, size, "UTF-8", new DefaultFileRenamePolicy());
			bno = Integer.parseInt(multi.getParameter("bno"));
			id = multi.getParameter("id");
			btitle = multi.getParameter("btitle");
			bcont = multi.getParameter("bcont");
			oldBfile = multi.getParameter("oldBfile");
			System.out.println("doBUpdateService oldBfile: "+oldBfile);
			
			//파일이름 가져오기
			Enumeration files = multi.getFileNames();
			
			//1개의 input type=file 있기때문에 무조건 실행됨
			if(files.hasMoreElements()) {
				System.out.println("파일 있음");
				String f = (String)files.nextElement();
				bfile = multi.getFilesystemName(f);//파일첨부가 있으면 null, 있으면 파일이름을 넣어줌 
			}//if
			
			//bfile에 파일첨부가 안 되어있으면 oldBfile 이름으로 변경
			if(bfile==null) {
				System.out.println("파일 없음");
				bfile = oldBfile; //새로운 파일첨부가 없으면 이전 파일로 저장
			}
			
			
			//객체에 담기
			System.out.println("bfile: "+bfile);
			BoardDto bdto = new BoardDto(bno, btitle, bcont, id, bfile);
			
			//dao 접근
			BoardDao bdao = new BoardDao();
			int result = bdao.doBUpdate(bdto);
			
			//Request 객체에 담기
			request.setAttribute("result", result);
			request.setAttribute("bno", bno);
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}//Service
