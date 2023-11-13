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

public class BoardDao {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	BoardDto bdto = null;
	int bno, bgroup, bstep, bindent, bhit;
	String btitle, bcont, id, bfile, query;
	Timestamp bdate;
	ArrayList<BoardDto> list = new ArrayList();
	
	//게시글 전체 보내기 >> 1개를 보내려면 Dto, 여러개를 보내려면 Arraylist 사용
	public ArrayList<BoardDto> selectAll(){
		
		try {
			conn = getConnection();
			query = "select * from(select ROW_NUMBER() OVER (ORDER BY bno desc) rnum,a.* from board a)where rnum>=1 and rnum<=20";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				bno = rs.getInt("bno");
				btitle = rs.getString("btitle");
				bcont = rs.getString("bcont");
				id = rs.getString("id");
				bgroup = rs.getInt("bgroup");
				bstep = rs.getInt("bstep");
				bindent = rs.getInt("bindent");
				bhit = rs.getInt("bhit");
				bdate = rs.getTimestamp("bdate");
				bfile = rs.getString("bfile");
				
			list.add(new BoardDto(bno, btitle, bcont, id, bgroup, bstep, bindent, bhit, bdate, bfile));
			
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			
		}
		
		return list;
		}
	}//selectAll
	
	//게시글 파일 저장
	public int insertOne(BoardDto bdto2) {
	int result=1;
	try {
		conn = getConnection();
		
		query = "insert into board values (board_seq.nextval,?,?,sysdate,?,board_seq.currval,0,0,1,?)";
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, bdto2.getBtitle());
		pstmt.setString(2, bdto2.getBcont());
		pstmt.setString(3, bdto2.getId());
		pstmt.setString(4, bdto2.getBfile());
		result = pstmt.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
	}finally{
		try {
			if(rs!=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		} catch (Exception e2) {
			e2.printStackTrace();
		
	}
		return result;
	}
	
	}//insertOne
	
	//게시글 1개 가져오기 - select
	public BoardDto selectOne(int bno2) {
		BoardDto bdto = null;
		try {
			conn = getConnection();
			query = "select * from board where bno=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,bno2);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bno = rs.getInt("bno");
				btitle = rs.getString("btitle");
				id = rs.getString("id");
				bcont = rs.getString("bcont");
				bdate = rs.getTimestamp("bdate");
				bgroup = rs.getInt("bgroup");
				bstep = rs.getInt("bstep");
				bindent = rs.getInt("bindent");
				bhit = rs.getInt("bhit");
				bfile = rs.getString("bfile");
				bdto = new BoardDto(bno, btitle, bcont, id, bgroup, bstep, bindent, bhit, bdate, bfile);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			
		}
		}
		return bdto;
	}
	
	
	
	
		//커넥션 풀에서 Connection객체를 가져옴
		public Connection getConnection() {
			Connection connection = null;
			try {
				Context context = new InitialContext();
				DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle18");
				connection = ds.getConnection();
			} catch (Exception e) {e.printStackTrace();}
			return connection;
		}//Connection

}
