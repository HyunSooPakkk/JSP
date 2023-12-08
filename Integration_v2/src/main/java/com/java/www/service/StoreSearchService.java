package com.java.www.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.StoreInfoDao;
import com.java.www.dto.StoreInfoDto;

public class StoreSearchService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String searchword = null;
		ArrayList<StoreInfoDto> df = null;
		
		if( request.getParameter("query")!=null)
		{
			searchword = request.getParameter("query");
			
			StoreInfoDao sdao = new StoreInfoDao();
			
			sdao.getItemCounte(searchword);
			
		}

	}

}
