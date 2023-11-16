package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.java.www.dto.BoardDto;
import com.java.www.dto.MemberDto;

public class BoardDao {

	//인스턴스 변수 선언
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	BoardDto bdto = null;
	ArrayList<BoardDto> list = new ArrayList<BoardDto>();
	int bno,bgroup,bstep,bindent,bhit,result;
	String id,btitle,bcont,bfile,query;
	Timestamp bdate;
	
	
	//Connection 풀에서 객체 가져오기
		public Connection getConnection() {
			Connection connection = null;
			try {
				Context context = new InitialContext();
				DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle18");
				connection = ds.getConnection();
			} catch (Exception e) {e.printStackTrace();}
				
			return connection;
			
		}//Connection

	
	
	//bInsert: 게시글 저장 
	public int bInsert(BoardDto bdto2) {
		try {
			btitle = bdto2.getBtitle();
			id = bdto2.getId();
			bcont = bdto2.getBcont();
			bfile = bdto2.getBfile();
			
			conn = getConnection();
			query = "insert into board values(board_seq.nextval,?,?,sysdate,?,board_seq.currval,0,0,1,?)";
			pstmt = conn.prepareStatement(query);
			//1,2,3,4 데이터
			pstmt.setString(1, btitle);
			pstmt.setString(2, bcont);
			pstmt.setString(3, id);
			pstmt.setString(4, bfile);
			
			result = pstmt.executeUpdate(); //insert,update,delete
			
		} catch (Exception e) {e.printStackTrace();	
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}
	return result;
	}
	
	
	//bSelectOne 메소드 생성: 게시글 1개 가져오기
		public BoardDto bSelectOne(int bno2) {
			try {
				conn = getConnection();
				query = "select * from board where bno=?";
				pstmt = conn.prepareStatement(query);
				pstmt.setInt(1, bno2);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					bno = rs.getInt("bno");
					btitle = rs.getString("btitle");
					bcont = rs.getString("bcont");
					bdate = rs.getTimestamp("bdate");
					id = rs.getString("id");
					bgroup = rs.getInt("bgroup");
					bstep = rs.getInt("bstep");
					bindent = rs.getInt("bindent");
					bhit = rs.getInt("bhit");
					bfile = rs.getString("bfile");
					bdto = new BoardDto(bno, btitle, bcont, bdate, id, bgroup, bstep, bindent, bhit, bfile);
				}
			
			} catch (Exception e) {e.printStackTrace();	
			}finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				} catch (Exception e2) {e2.printStackTrace();}
			}
			return bdto;
		}//bSelectOne
	
		
	//doBUpdate: 게시글 수정
		public int doBUpdate(BoardDto bdto2) {
			try {
				conn = getConnection();
				query = "update board set btitle=?,bcont=?,bdate=sysdate,bfile=? where bno=?";
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, bdto2.getBtitle());
				System.out.println("doBUpdate btitle: "+bdto2.getBtitle());
				pstmt.setString(2, bdto2.getBcont());
				pstmt.setString(3, bdto2.getBfile());
				pstmt.setInt(4, bdto2.getBno());
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
		}	
	
	
	//bListSelectAll 메소드 생성: 게시글 전체 가져오기
	public ArrayList<BoardDto> bListSelectAll() {
		try {
			conn = getConnection();
			query = "select * from(select ROW_NUMBER() OVER (ORDER BY bgroup desc) rnum,a.* from board a) where rnum between 1 and 10";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				//데이터 가져오기
				bno = rs.getInt("bno");
				btitle = rs.getString("btitle");
				bcont = rs.getString("bcont");
				bdate = rs.getTimestamp("bdate");
				id = rs.getString("id");
				bgroup = rs.getInt("bgroup");
				bstep = rs.getInt("bstep");
				bindent = rs.getInt("bindent");
				bhit = rs.getInt("bhit");
				bfile = rs.getString("bfile");
				list.add(new BoardDto(bno, btitle, bcont, bdate, id, bgroup, bstep, bindent, bhit, bfile));
				
			}
		} catch (Exception e) {e.printStackTrace();	
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}
		return list;
	}//bListSelectAll



	
	
	
}//class
