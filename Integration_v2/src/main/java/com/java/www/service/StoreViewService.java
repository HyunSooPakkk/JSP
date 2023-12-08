package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.StoreAttachDao;
import com.java.www.dao.StoreInfoDao;
import com.java.www.dto.StoreAttachDto;
import com.java.www.dto.StoreInfoDto;

public class StoreViewService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		StoreInfoDto sdto = null;
		StoreAttachDto sadto = null;
		
		int storeId = Integer.parseInt(request.getParameter("storeid"));
		
		System.out.println("storeid : " + storeId);
		
		StoreInfoDao sdao = new StoreInfoDao();
		StoreAttachDao sadao = new StoreAttachDao();
		
		sdto = sdao.getOneStoreInfo(storeId);
		
		
		request.setAttribute("sdto", sdto);

	}

}
