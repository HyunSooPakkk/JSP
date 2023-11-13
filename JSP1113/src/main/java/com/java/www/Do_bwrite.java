package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/Do_bwrite")
public class Do_bwrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("UTF-8");
		//파일 첨부 - 선언
		//String uPath = request.getRealPath("upload");
		String uPath = "c:/upload"; //절대경로
		int size = 10*1024*1024; //10Mb = 10m*1024kb*1024b
		//request, 파일저장경로, 크기, 인코딩, 같은이름변경정책 ex>>1.jpg ->1(0).jpg
		//객체선언할때 파일을 먼저 업로드 시킴
		MultipartRequest multi = new MultipartRequest(request, uPath, size, "UTF-8", new DefaultFileRenamePolicy());
		String btitle = multi.getParameter("btitle");
		String id = multi.getParameter("id");
		String bcont = multi.getParameter("bcont");
		
		//파일 1개 업로드
		Enumeration files = multi.getFileNames();
		//input name 가져오기
		String file1 = (String)files.nextElement(); //원본 파일명
		//실제 업로드되는 파일 이름
		String bfile = multi.getFilesystemName(file1); //변경된 파일명
		
		System.out.println("제목 : "+btitle);
		System.out.println("아이디 : "+id);
		System.out.println("내용 : "+bcont);
		System.out.println("파일 이름 : "+bfile);
		
		BoardDto bdto = new BoardDto(btitle,id,bcont,bfile);
		BoardDao bdao = new BoardDao();
		int result = bdao.insertOne(bdto);
		
		//페이지 이동
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head><title>게시글 저장</title></head>");
		writer.println("<body>");
		writer.println("<script>");
		writer.println("alert('게시글 저장 완료')");
		writer.println("location.href='blist.jsp'");
		writer.println("</script>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
		
		
		//파일 3개 업로드
		//Enumeration files = multi.getFileNames();
		//String[] file_arr = new String[3];
		//String[] bfile = new String[3];
		//int i=0;
		//while(files.hasMoreElements()) {
			//file_arr[i] = (String)files.nextElement();
			//bfile[i] = multi.getFilesystemName(file_arr[i]);
			//i++;
		//}
		//for(i=0;i<file_arr.length;i++) {
				//System.out.println("인풋 파일명: "+file_arr); //input name
				//System.out.println("변경 파일명: "+bfile); //1(0).jpg
				//}
		
		
		
		//파일 1개일 때
		//System.out.println("인풋 파일명: "+file_arr); //input name
		//System.out.println("변경 파일명: "+bfile); //1(0).jpg
		
		
	}
		
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}

}
