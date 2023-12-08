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
	PreparedStatement pstmt =null;
	ResultSet rs = null;
	MemberInfoDto mdto = null;
	ArrayList<MemberInfoDto> list = new ArrayList<MemberInfoDto>();
	String memberId, NicName,mempw,address,favor,picture,memrole,email,query;
	Timestamp birthday,regDate;
	int result;
			
	
	//1.커넥션풀에서 Connection객체 가져오기
		public Connection getConnection() {
			Connection connection = null;
			try {
				Context context = new InitialContext();
				DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle18");
				connection = ds.getConnection();
			} catch (Exception e) {e.printStackTrace();}
			return connection;
		}//getconnection

  //2.Do_Login 로그인하기
		public MemberInfoDto Do_Login(String memberId2, String mempw2) {
			try {
				conn = getConnection();
				query = "select * from memberInfo where memberId=? and mempw=?";
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, memberId2);
				pstmt.setString(2, mempw2);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					memberId = rs.getString("memberId");
					System.out.println("memberinfo memberId  : "+memberId );
					NicName = rs.getString("NicName");
					mempw = rs.getString("mempw");
					address = rs.getString("address");
					birthday = rs.getTimestamp("birthday");
					favor = rs.getString("favor");
					regDate = rs.getTimestamp("regDate");
					picture = rs.getString("picture");
					memrole = rs.getString("memrole");
					email = rs.getString("email");
					mdto = new MemberInfoDto(memberId, NicName, mempw, address, birthday, favor, regDate, picture, memrole,email); 
					
				}
			} catch (Exception e) {e.printStackTrace();
			}finally {
				try {
					if(rs != null) rs.close();
					if(conn != null) conn.close();
					if(pstmt != null) pstmt.close();
				} catch (Exception e2) {e2.printStackTrace();}
			}
			return mdto;
		}//Do_Login

	//2.doMInsert 회원가입하기
		public int doMInsert(MemberInfoDto mdto2) {
			try {
				conn = getConnection();
				query = "insert into memberinfo (MEMBERID, NICNAME,MEMPW,ADDRESS,BIRTHDAY,EMAIL) values(?,?,?,?,?,'food',sysdate,'2.jpg','user',?)";
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, mdto2.getMemberId());
				pstmt.setString(2, mdto2.getNicName());
				pstmt.setString(3, mdto2.getMempw());
				pstmt.setString(4, mdto2.getAddress());
				pstmt.setTimestamp(5, mdto2.getBirthday());
				pstmt.setString(6, mdto2.getEmail());
				result = pstmt.executeUpdate();
			} catch (Exception e) {e.printStackTrace();
			}finally {
				try {
					if(rs != null) rs.close();
					if(conn != null) conn.close();
					if(pstmt != null) pstmt.close();
				} catch (Exception e2) {e2.printStackTrace();}
			}
			return result;
		}

		
		//3.회원 1명 가져오기	
		public MemberInfoDto selectOne(String memberId2) {
			try {
				conn = getConnection();
				query = "select * from memberinfo where memberid=?";
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, memberId2);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					memberId = rs.getString("memberId");
					System.out.println("selectOne memberId  : "+memberId);
					NicName = rs.getString("NicName");
					System.out.println("selectOne NicName  : "+NicName);
					mempw = rs.getString("mempw");
					address = rs.getString("address");
					birthday = rs.getTimestamp("birthday");
					email = rs.getString("email");
					mdto = new MemberInfoDto(memberId, NicName, mempw, address, email, birthday);
				}
			} catch (Exception e) {e.printStackTrace();
			}finally {
				try {
					if(rs != null) rs.close();
					if(conn != null) conn.close();
					if(pstmt != null) pstmt.close();
				} catch (Exception e2) {e2.printStackTrace();}
			}
			return mdto;
		}//selectOne
		
		//2.로그인 체크 - select DoLoginSelect
		public MemberInfoDto DoLoginSelect(String id2, String pw2) {
			try {
				conn = getConnection();
				query = "select * from memberInfo where id=? and pw=?";
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, id2);
				pstmt.setString(2, pw2);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					memberId = rs.getString("memberid");
					NicName = rs.getString("nicname");
					mempw = rs.getString("mempw");
					address = rs.getString("address");
					birthday = rs.getTimestamp("birthday");
					favor = rs.getString("favor");
					regDate = rs.getTimestamp("regdate");
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
		
		
		//회원 정보 수정 저장 - 이메일, 주소, 생년월일 수정
		public int mInfoUpdate(MemberInfoDto mdto2) {
			try {
				conn = getConnection();
				query = "update memberInfo set email=?,address=?,birthday=? where memberid=?";
				pstmt = conn.prepareStatement(query);
				
				pstmt.setString(1, mdto2.getEmail());
				pstmt.setString(2, mdto2.getAddress());
				pstmt.setTimestamp(3, mdto2.getBirthday());
				pstmt.setString(4, mdto2.getMemberId());
				
				System.out.println("mInfoUpdate getEmail :  "+mdto2.getEmail());
				System.out.println("mInfoUpdate getAddress :  "+mdto2.getAddress());
				System.out.println("mInfoUpdate getMemberid :  "+mdto2.getMemberId());
				
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
		public int mPwUpdate(String memberId2, String mempw2) {
		try {
			conn = getConnection();
			query = "update memberInfo set mempw=? where memberid=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, mempw2);
			pstmt.setString(2, memberId2);
			System.out.println("dao memberid: "+memberId2);
			System.out.println("dao mempw2: "+mempw2);
		
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
