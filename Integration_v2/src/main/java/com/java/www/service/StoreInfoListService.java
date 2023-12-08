package com.java.www.service;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.StoreInfoDao;
import com.java.www.dto.StoreInfoDto;

public class StoreInfoListService implements Service{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {


		String sort = request.getParameter("sort");
		int start = 1;
		int end = 4;
		
		
		StoreInfoDao storeDao = new StoreInfoDao();
		
		String searchword = null;
		
		if(sort==null)
		{
			sort = "rate";
		}
		
		if(request.getParameter("start")!=null)
		{
			start = Integer.parseInt(request.getParameter("start"));
		}
		
		if(request.getParameter("end")!=null)
		{
			end = Integer.parseInt(request.getParameter("end"));
		}
		
		
		


		if( request.getParameter("query")!=null)
		{
			searchword = request.getParameter("query");
			System.out.println("StoreInfoListService searchword : " + searchword );
		}
		
		int itemcounter = storeDao.getItemCounte(searchword);

		if( end > itemcounter )
		{
			end = itemcounter;
		}
		if(end<=0)
		{
			end=1;
		}
		
		ArrayList<StoreInfoDto> list = storeDao.getStoreInfoList(start,end,sort,searchword);
		
		request.setAttribute("list", list);
		request.setAttribute("start", start);
		request.setAttribute("end", end);
		request.setAttribute("sort", sort);
		request.setAttribute("query", searchword);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("sort", sort);
		
	}

}
