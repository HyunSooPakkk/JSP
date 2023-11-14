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
		MemberDto mdto = null;
		int bno,bgroup,bstep,bindent,bhit;
		String btitle,bcont,id,bfile,query;
		Timestamp bdate;
	
	//selectOne() ▶ 1개 게시글 가져오기
		public BoardDto selectOne(int bno2) {
			BoardDto bdto = null;
			try {
				conn = getConnection();
				query = "select * from board where bno=?";
				pstmt = conn.prepareStatement(query);
				pstmt.setInt(1, bno2);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					bno = rs.getInt("bno");
					btitle = rs.getString("btitle");
					bcont = rs.getString("btitle");
					bdate = rs.getTimestamp("bdate");
					id = rs.getString("id");
					bgroup = rs.getInt("bgroup");
					bstep = rs.getInt("bstep");
					bindent = rs.getInt("bindent");
					bhit = rs.getInt("bhit");
					bfile = rs.getString("bfile");
					bdto = new BoardDto(bno,btitle,bcont,bdate,id,bgroup,bstep,bindent,bhit,bfile);
				}
				}catch (Exception e) {
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
		
	
	//selectAll() ▶ 전체 게시글 가져오기
		public ArrayList<BoardDto> selectAll(){
			ArrayList<BoardDto> list = new ArrayList();
			try {
				conn = getConnection();
				query = "select * from (select ROW_NUMBER() OVER (ORDER BY bno desc) rnum,a.* from board a) where rnum between 1 and 10";
				pstmt = conn.prepareStatement(query);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					bno = rs.getInt("bno");
					btitle = rs.getString("btitle");
					bcont = rs.getString("btitle");
					bdate = rs.getTimestamp("bdate");
					id = rs.getString("id");
					bgroup = rs.getInt("bgroup");
					bstep = rs.getInt("bstep");
					bindent = rs.getInt("bindent");
					bhit = rs.getInt("bhit");
					bfile = rs.getString("bfile");
					list.add(new BoardDto(bno,btitle,bcont,bdate,id,bgroup,bstep,bindent,bhit,bfile));
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
			return list;
			
		}
	
	//Connection 객체 만들기
		public Connection getConnection() {
			Connection connection = null;
			try {
				Context context = new InitialContext();
				DataSource ds = (DataSource)context.lookup("java:comp/env/jdbc/Oracle18");
				connection = ds.getConnection();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return connection;
		}//get connection
	
}//BoardDao
