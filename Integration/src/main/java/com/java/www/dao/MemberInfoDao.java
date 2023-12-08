package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.java.www.dto.MemberInfoDto;

public class MemberInfoDao {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	MemberInfoDto mdto = null;
	ArrayList<MemberInfoDto> list = new ArrayList<MemberInfoDto>();
	String memberid,nicname,mempw,birth_year,birth_month,birth_day,email,address,favor,picture,memrole,query;
	Timestamp birthday,regdate;
	int result;
	
	
	
	//커넥션풀에서 Connection객체 가져오기
	public Connection getConnection() {
		Connection connection = null;
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle18");
			connection = ds.getConnection();
		} catch (Exception e) {e.printStackTrace();}
		return connection;
	}//getConnection

	
	//로그인 체크 - select DoLoginSelect
	public MemberInfoDto DoLoginSelect(String id2, String pw2) {
		try {
			conn = getConnection();
			query = "select * from memberInfo where id=? and pw=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id2);
			pstmt.setString(2, pw2);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				memberid = rs.getString("memberid");
				nicname = rs.getString("nicname");
				mempw = rs.getString("mempw");
				address = rs.getString("address");
				birthday = rs.getTimestamp("birthday");
				favor = rs.getString("favor");
				regdate = rs.getTimestamp("regdate");
				picture = rs.getString("picture");
				memrole = rs.getString("memrole");
				
				mdto = new MemberInfoDto();
			}
		} catch (Exception e) {e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return mdto;
	}//DoLoginSelect

	
	//회원 1명 가져오기
	public MemberInfoDto selectOne(String id2) {
		try {
			conn = getConnection();
			query = "select * from memberInfo where memberid=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id2);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				memberid = rs.getString("memberid");
				System.out.println("dao memberid: "+memberid);
				nicname = rs.getString("nicname");
				mempw = rs.getString("mempw");
				email = rs.getString("email");
				address = rs.getString("address");
				birthday = rs.getTimestamp("birthday");
				favor = rs.getString("favor");
				regdate = rs.getTimestamp("regdate");
				picture = rs.getString("picture");
				memrole = rs.getString("memrole");
				
				mdto = new MemberInfoDto(memberid, nicname, mempw, email, address, birthday, favor, regdate, picture, memrole);
			}
		} catch (Exception e) {e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return mdto;
	}//selectOne

	
	
	//회원 정보 수정 저장 - 이메일, 주소, 생년월일 수정
	public int mInfoUpdate(MemberInfoDto mdto2) {
		try {
			conn = getConnection();
			query = "update memberInfo set email=?,address=?,birthday=? where memberid=?";
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, mdto2.getEmail());
			pstmt.setString(2, mdto2.getAddress());
			pstmt.setTimestamp(3, mdto2.getBirthday());
			pstmt.setString(4, mdto2.getMemberid());
			
			System.out.println("mInfoUpdate getEmail :  "+mdto2.getEmail());
			System.out.println("mInfoUpdate getAddress :  "+mdto2.getAddress());
			System.out.println("mInfoUpdate getMemberid :  "+mdto2.getMemberid());
			
			result = pstmt.executeUpdate();
			System.out.println("DAO result : "+result);
			
		} catch (Exception e) {e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}
		
		return result;
	}//mInfoUpdate

	
	
	//회원정보 수정 - 비밀번호 수정 저장
	public int mPwUpdate(String memberid2, String mempw2) {
	try {
		conn = getConnection();
		query = "update memberInfo set mempw=? where memberid=?";
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, mempw2);
		pstmt.setString(2, memberid2);
		System.out.println("dao mempw2: "+mempw2);
		System.out.println("dao memberid: "+memberid2);
	
		result = pstmt.executeUpdate();
	} catch (Exception e) {e.printStackTrace();
	}finally {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (Exception e2) {e2.printStackTrace();}
	}
		return result;
	}//mPwUpdate

	
}//public
