package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.java.www.dto.StoreInfoDto;

public class StoreInfoDao {

	String storeId;
	String storeName;
	String memberId;
	String phone;
	String address;
	int categoryId;
	String workingTime;
	String keywordId;
	String webAddr;
	String menu;
	String menuPicture;
	String openDate;
	String storeContent;
	int rate;
	int hit;
	int ratecounter;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public StoreInfoDao() {
	
	}

	public ArrayList<StoreInfoDto> getStoreInfoList(int start, int end, String sort, String searchword)
	{

		ArrayList<StoreInfoDto> list = new ArrayList<StoreInfoDto>();
		
		try {
			conn = getConnection();
			String query=null;
			if(searchword==null)
			{
				if(sort.equals("rate"))
				{
					query ="select * from (select row_number() over(order by (si.rate/si.ratecounter) desc) as rnum, si.*  from storeinfo si) where rnum>=? and rnum <=?";

				}
				else if(sort.equals("nameAsc"))
				{
					query ="select * from (select row_number() over(order by storename asc) as rnum, si.*  from storeinfo si) where rnum>=? and rnum <=?";
					
				}
				else if(sort.equals("createdDateDesc"))
				{
					query ="select * from (select row_number() over(order by opendate desc) as rnum, si.*  from storeinfo si) where rnum>=? and rnum <=?";
				}
				
				pstmt = conn.prepareStatement(query);
				pstmt.setInt(1, start);
				pstmt.setInt(2, end);
				
			}
			else
			{
				if(sort.equals("rate"))
				{
					query ="select * from (select * from (select row_number() over(order by (si.rate/si.ratecounter) desc) as rnum, si.*  from storeinfo si where storename like '%'||?||'%'))where rnum>=? and rnum <=?";

				}
				else if(sort.equals("nameAsc"))
				{
					query ="select * from (select * from (select row_number() over(order by storename asc) as rnum, si.*  from storeinfo si where storename like '%'||?||'%'))where rnum>=? and rnum <=?";
					
				}
				else if(sort.equals("createdDateDesc"))
				{
					query ="select * from (select * from (select row_number() over(order by opendate desc) as rnum, si.*  from storeinfo si where storename like '%'||?||'%'))where rnum>=? and rnum <=?";
				}
				
				
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, searchword);
				pstmt.setInt(2, start);
				pstmt.setInt(3, end);
				
			}
			

			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				storeId=rs.getString("storeId");
				storeName=rs.getString("storeName");
//				memberId=rs.getString("");
				phone=rs.getString("phone");
				address=rs.getString("address");
//				categoryId=rs.getInt("");
//				workingTime=rs.getString("");
				keywordId=rs.getString("keywordId");
//				webAddr=rs.getString("");
//				menu=rs.getString("");
				menuPicture=rs.getString("menuPicture");
//				openDate=rs.getTimestamp("");
				storeContent=rs.getString("storeContent");
				rate=rs.getInt("rate");
				hit=rs.getInt("hit");
				ratecounter=rs.getInt("ratecounter");
				
				list.add(new StoreInfoDto(storeId, storeName, phone,address,keywordId, menuPicture, storeContent, rate,hit,ratecounter));

				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) {rs.close();}
				if(pstmt!=null) {pstmt.close();}
				if(conn!=null) {conn.close();}
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return list;
	}


	public int getItemCounte(String searchword) {
		
		int count = 0 ;
		try {
			if(searchword == null)
			{
				String query ="select count(*) as count from storeinfo";
				conn = getConnection();
				pstmt = conn.prepareStatement(query);
			}
			else {
				String query ="select count(*) as count from storeinfo where storename like '%'||?||'%'";
				conn = getConnection();
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, searchword);
			}
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				count = rs.getInt("count");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) {rs.close();}
				if(pstmt!=null) {pstmt.close();}
				if(conn!=null) {conn.close();}
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return count;
	}




	public int InsertStoreInfo(StoreInfoDto sdto) {

		int result=0;
		try {
			String query ="insert into storeinfo (STOREID, STORENAME, MEMBERID, PHONE, ADDRESS, CATEGORYID, WORKINGTIME,  WEBADDR, MENU, MENUPICTURE, OPENDATE, STORECONTENT, RATE, HIT, createdate )"
					+ "values (STOREINFO_SEQ.nextval, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, 0, 0,sysdate)";
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sdto.getStoreName());
			pstmt.setString(2, sdto.getMemberId());
			pstmt.setString(3, sdto.getPhone());
			pstmt.setString(4, sdto.getAddress());
			pstmt.setInt(5, sdto.getCategoryId());
			pstmt.setString(6, sdto.getWorkingTime());
			pstmt.setString(7,sdto.getWebAddr());
			pstmt.setString(8, sdto.getMenu());
			pstmt.setString(9, sdto.getMenuPicture());
			pstmt.setString(10, sdto.getOpenDate());
			pstmt.setString(11, sdto.getStoreContent());
		
			
			result = pstmt.executeUpdate();
			

			
			
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) {rs.close();}
				if(pstmt!=null) {pstmt.close();}
				if(conn!=null) {conn.close();}
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		return result;
	}


	public StoreInfoDto getOneStoreInfo(int storeid) {
		
		StoreInfoDto sdto = null;
		
		try {
			String query ="select * from storeinfo where storeid=?";
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, storeid);
			
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				storeId = rs.getString("storeId");
				storeName= rs.getString("storeName");
				memberId= rs.getString("memberId");
				phone= rs.getString("phone");
				address= rs.getString("address");
				categoryId = rs.getInt("categoryId");
				workingTime= rs.getString("workingTime");
				keywordId= rs.getString("keywordId");
				webAddr= rs.getString("webAddr");
				menu= rs.getString("menu");
				menuPicture = rs.getString("menuPicture");
				openDate=  rs.getString("openDate");
				storeContent= rs.getString("storeContent");
				rate= rs.getInt("rate");
				hit= rs.getInt("hit");
				ratecounter= rs.getInt("hit");
				
				sdto = new StoreInfoDto(storeId,storeName , memberId, phone, address, categoryId, workingTime, keywordId, webAddr, menu, menuPicture, openDate, storeContent, rate, hit, ratecounter);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) {rs.close();}
				if(pstmt!=null) {pstmt.close();}
				if(conn!=null) {conn.close();}
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

		
		return sdto;
	}
	
	Connection getConnection()
	{
		Connection connection = null;
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle18");
			connection = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return connection;
	}


}
