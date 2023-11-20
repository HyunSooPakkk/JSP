package com.java.www.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;

public class BListService implements Service {

	//dao접근
	BoardDao bdao = new BoardDao();
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		//-----하단 넘버링-----//
		//Page와 listCount가 있으면 됨
		//1. 현재 페이지
		int page = 1;
		if(request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
			System.out.println("request.getParameter page: "+page);
		}
		System.out.println("현재페이지: "+page);
		String bCategory = request.getParameter("bCategory");
		String bSearch = request.getParameter("bSearch");

		//--> 넘버링 메소드 호출
		Map<String, Object> map = numbering(page,bCategory,bSearch);
		int listCount = (int)map.get("listCount");
		int maxPage = (int)map.get("maxPage");
		int startPage = (int)map.get("startPage");
		int endPage = (int)map.get("endPage");
		int startRow = (int)map.get("startRow");
		int endRow = (int)map.get("endRow");
		
		
		//***전체게시글 가져오기 >> 10개씩만 ***
		ArrayList<BoardDto> list = bdao.bList(bCategory,bSearch,startRow, endRow);
		
		//확인
		System.out.println("BListService list : "+list.get(0).getBno());
		
		//request추가
		request.setAttribute("list", list);
		request.setAttribute("listCount", listCount);
		request.setAttribute("page", page);
		request.setAttribute("maxPage", maxPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("bCategory", bCategory);
		request.setAttribute("bSearch", bSearch);

	}//execute
	
	//하단 넘버링 메소드 추출: 리턴타입 메소드명(매개변수){}
	public Map<String, Object> numbering(int page, String bCategory, String bSearch){
		Map<String, Object> map = new HashMap();
		
		
		//-----
		int rowPage = 10; //1페이지당 10개의 게시글 표시
		int bottomNumbers = 10; //하단넘버링 개수
		
		
		//1. 전체 게시글 개수
		int listCount = bdao.listCount(bCategory, bSearch);
		
		//2. 최대 하단 넘버링 페이지 41/10 = 4.1 -> 5.0 -> 5
		int maxPage = (int)Math.ceil((double)listCount/rowPage);
		
		//3. Start Page (하단 넘버링 시작번호) (int)(7-1/10)*10+1= 1
		int startPage = (int)((page-1)/bottomNumbers)*bottomNumbers+1;
		
		//4. End Page (하단 넘버링 끝번호) 1+10-1 = 10
		int endPage = startPage+bottomNumbers-1;
		if(endPage>maxPage) endPage = maxPage; //101-110 104, ->104
		
		//5. startRow (오라클에서 가져오는 시작번호) (3-1)*10+1 = 21
		int startRow = (page-1)*10+1;
		
		//6. endRow (오라클에서 가져오는 끝번호) 21+10-1 = 30
		int endRow = startRow+rowPage-1;
		
		//map >> listCount, maxPage, startPage, endPage, startRow, endRow
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		//-----
		return map;
	}
	

}
