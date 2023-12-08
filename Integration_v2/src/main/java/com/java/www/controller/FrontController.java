package com.java.www.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.service.DoLoginService;
import com.java.www.service.DoMInsertService;
import com.java.www.service.MSelectOneService;
import com.java.www.service.MUpdateService;
import com.java.www.service.SelectAllService;
import com.java.www.service.SelectOneView;
import com.java.www.service.Service;
import com.java.www.service.StoreInfoListService;
import com.java.www.service.StoreRegistService;
import com.java.www.service.StoreSearchService;
import com.java.www.service.StoreViewService;
import com.java.www.service.boardDeleteService;
import com.java.www.service.boardInsertService;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public FrontController() {
  
    }
    
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String url = null;
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String fileName = uri.substring(path.length()+1);
		Service serv = null;
		
		System.out.println("▶ fileName : "+fileName);
		
		switch(fileName)
		{
			case "main.do" : 
				HttpSession session = request.getSession();
				session.setAttribute("session_id", "TestAdmin");
				
				response.sendRedirect("html/main.do");
			break;
			
			case  "html/main.do":
				response.sendRedirect("main.jsp");
				break;
				
			case "searchCard.do" :
				serv = new StoreInfoListService();
				serv.execute(request, response); 
				url = "searchCard.jsp";
				break;
			case "searchList.do" :
				serv = new StoreInfoListService();
				serv.execute(request, response); 
				url = "searchList.jsp";
				break;
			case "SearchQuery.do" :
				serv = new StoreInfoListService();
				serv.execute(request, response); 
				String viewType = request.getParameter("viewtype");
				
				if(viewType.equals("Card"))
				{
					url="searchCard.jsp";
				}
				else if(viewType.equals("List"))
				{
					url="searchList.jsp";
				}
				break;
			case "StoreRegist.do" :
				serv = new StoreRegistService();
				serv.execute(request, response); 
				url ="main.do";/*임시*/
				break;
			case "store_view.do" :
				serv = new StoreViewService();
				serv.execute(request, response);
				url ="store_view.jsp";/*임시*/
				break;
			case "join01_terms.do":
				response.sendRedirect("join01_terms.jsp");
				break;
			case "Insert.do":
				url ="Insert.jsp";
				break;
			case "join03_success.do":
				serv =  new DoMInsertService();
				serv.execute(request, response);
				url = "join03_success.jsp";
				break;
			case "regStore.do":
				response.sendRedirect("regStore.jsp");
				break;
			case "Login.do":
				response.sendRedirect("Login.jsp");
				break;
			case "doLogin.do":
				serv =  new DoLoginService();
				serv.execute(request, response);
				url = "doLogin.jsp";
				break;
			case "review/review_List.do":
				serv =  new DoLoginService();
				serv.execute(request, response);
				url = "review_List.jsp";
				break;
			case "Logout.do":
				response.sendRedirect("Logout.jsp");
				break;
			case "change_info.do": //회원정보수정 페이지를 열어주는 거 - 회원정보 1명 가져오기
				serv = new MSelectOneService();
				serv.execute(request, response);
				url = "change_info.jsp";
				break;
				
			case "doM_info_update.do": //회원정보수정
				serv = new MUpdateService();
				serv.execute(request, response);
				url = "doM_info_update.jsp";
				break;
			case "teamProject/teamBoard.do":
				serv = new SelectAllService();
				serv.execute(request, response);
				url = "teamBoard.jsp";
				break;
				
			case "teamProject/teamBoardView.do":
				serv = new SelectOneView();
				serv.execute(request, response);
				url = "teamBoardView.jsp";
				break;
				
			case "teamProject/teamBoardWrite.do":
				response.sendRedirect("teamBoardWrite.jsp");
				break;
				
			case "teamProject/bWrite.do":
				serv = new boardInsertService();
				serv.execute(request, response);
				url = "bWrite.jsp";
				break;
			case "teamProject/bDelete.do":
				serv = new boardDeleteService();
				serv.execute(request, response);
				url = "./bDelete.jsp";
				break;	
				
			default :
				System.out.println("● default");
				break;
				
		}
		
		if(url!=null)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}
		
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
		
	}

}
