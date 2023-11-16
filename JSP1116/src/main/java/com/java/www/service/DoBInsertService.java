package com.java.www.service;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class DoBInsertService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String btitle="", id="", bcont="", bfile="";
		String upload = "c:/upload"; 
		int size = 10*1024*1024; //파일을 10Mb까지만 올리겠다~
		try {
			MultipartRequest multi = new MultipartRequest(request, upload, size, "UTF-8", new DefaultFileRenamePolicy());
			
			btitle = multi.getParameter("btitle");
			System.out.println("execute btitle: "+btitle);
			id = multi.getParameter("id");
			bcont = multi.getParameter("bcont");
			
			//파일이름: form에서 input type="file"인 이름을 모두 가져오는 메소드
			Enumeration files = multi.getFileNames();
			while(files.hasMoreElements()) {
				String f = (String)files.nextElement();
				bfile = multi.getFilesystemName(f);
			}//while
		
			//dto 객체를 담음
			BoardDto bdto = new BoardDto(btitle, bcont, id, bfile);
			
			//dao 연결
			BoardDao bdao = new BoardDao();
			int result = bdao.bInsert(bdto);
			System.out.println("execute result: "+result);
			
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}//class
