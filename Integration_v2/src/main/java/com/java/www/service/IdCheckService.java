package com.java.www.service;

import com.java.www.dao.MemberInfoDao;
import com.java.www.dto.MemberInfoDto;

public class IdCheckService {
	
	public String idCheck(String memberId) {
		String result = null;
		
		//dao 접근
		MemberInfoDao mdao = new MemberInfoDao();
		MemberInfoDto mdto = mdao.selectOne(memberId);
		
		if(mdto == null) result = "사용가능";
		else result = "사용불가능";
		
		
		return result;
	}
	
	
}
