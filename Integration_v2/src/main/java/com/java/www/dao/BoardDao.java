package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.management.Query;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.java.www.dto.BoardDto;



public class BoardDao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	ArrayList<BoardDto> list = new ArrayList<BoardDto>();
	String memberid, title, bcontent, boardcategory, tags,filename, query="";
	int boardid, step, bindent, bgroup, hit, heart, rate, reportcount,filesize;
	Timestamp createdate,regdate;
	int result, listCount;
	BoardDto bdto = null;


	// db접근
	// 커넥션풀에서 db값 가져오기
	public Connection getConnection() {
		Connection connection = null;
		try {
			Context context = new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle18");
			connection = ds.getConnection();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;

	}

	// 게시글 전체 가져오기
	public ArrayList<BoardDto> teamBoardAllSelect() {
		try {
			conn = getConnection();
			query = "select * from(select row_number() over(order by boardid desc) rnum ,a.*from userboard a) where rnum between 1 and 10 ";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				boardid = rs.getInt("boardid");
				memberid = rs.getString("memberid");
				title = rs.getString("title");
				bcontent = rs.getString("bcontent");
				System.out.println("dao : " + bcontent);
				createdate = rs.getTimestamp("createdate");
				boardcategory = rs.getString("boardcategory");
				step = rs.getInt("step");
				bindent = rs.getInt("bindent");
				bgroup = rs.getInt("bgroup");
				hit = rs.getInt("hit");
				heart = rs.getInt("heart");
				rate = rs.getInt("rate");
				reportcount = rs.getInt("reportcount");
				tags = rs.getString("tags");
				
				
				list.add(new BoardDto(boardid, memberid, title, bcontent, createdate, boardcategory, step, bindent,
						bgroup, hit, heart, rate, reportcount, tags));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}

	// 게시글 1개 가져오기
	public BoardDto selectOne(int boardid2) {
		
		try {
			conn = getConnection();
			query = "select * from userboard left join user_attach on userboard.boardid=user_attach.boardid where userboard.boardid=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, boardid2);
			rs = pstmt.executeQuery();
			System.out.println("selectOne");
			if (rs.next()) {
				
				//
				boardid = rs.getInt("boardid");
				memberid = rs.getString("memberid");
				title = rs.getString("title");
				bcontent = rs.getString("bcontent");
				createdate = rs.getTimestamp("createdate");
				boardcategory = rs.getString("boardcategory");
				step = rs.getInt("step");
				bindent = rs.getInt("bindent");
				bgroup = rs.getInt("bgroup");
				hit = rs.getInt("hit");
				heart = rs.getInt("heart");
				rate = rs.getInt("rate");
				reportcount = rs.getInt("reportcount");
				tags = rs.getString("tags");
				filesize = rs.getInt("filesize");
				regdate = rs.getTimestamp("regdate");
				filename = rs.getString("filename");
				
				System.out.println("selectOne boardid : " + boardid);
				bdto = new BoardDto( filename, filesize, regdate,boardid, memberid, title, bcontent, createdate, boardcategory, step, bindent,
						bgroup, hit,heart, rate, reportcount, tags);
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return bdto;
	}

	// 다음글 가져오기
	public BoardDto preSelectOneView(int boardid2) {
		try {
			conn = getConnection();
			query = "";
			pstmt = conn.prepareStatement(query);
			// 1,2
			pstmt.setInt(1, boardid2);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return bdto;
	}// preSelectOneView

	// 이전글 가져오기
	public BoardDto nextSelectOneView(int boardid2) {
		try {
			conn=getConnection();
			query="";
			pstmt= conn.prepareStatement(query);
			//1,2
			pstmt.setInt(1, boardid2);
			result=pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return bdto;
	}

	//게시글 쓰기
	public int boardInsert(BoardDto bdto2) {
		try {
			conn=getConnection();
			if(bdto2.getFilename()!=null) {
				query="insert into userboard values(userboard_seq.nextval,?,?,?,sysdate,0,0,0,userboard_seq.currval,1,0,0,0,?)";
				pstmt=conn.prepareStatement(query);
				//
				pstmt.setString(1, bdto2.getMemberid());
				pstmt.setString(2, bdto2.getTitle());
				pstmt.setString(3, bdto2.getBcontent());
				pstmt.setString(4, bdto2.getFilename());
				result = pstmt.executeUpdate();
				query="insert into user_attach values(userboard_seq.currval,?,?,sysdate)";
				pstmt=conn.prepareStatement(query);
				//
				pstmt.setString(1,bdto2.getFilename());
				pstmt.setInt(2,bdto2.getFilesize() );
				result= pstmt.executeUpdate();
			}else {	
			query="insert into userboard values(userboard_seq.nextval,?,?,?,sysdate,0,0,0,userboard_seq.currval,1,0,0,0,?)";
			pstmt=conn.prepareStatement(query);
			//
			pstmt.setString(1, bdto2.getMemberid());
			pstmt.setString(2, bdto2.getTitle());
			pstmt.setString(3, bdto2.getBcontent());
			pstmt.setString(4, bdto2.getFilename());
			result = pstmt.executeUpdate();
				
			}
			
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}

	
	//게시글 삭제
	public int boardListdelete(int boardid2) {
		try {
			conn=getConnection();
			query="delete from userboard where boardid=?";
			pstmt=conn.prepareStatement(query);
			//
			pstmt.setInt(1, boardid2);
			System.out.println("board dao:"+boardid);
			result = pstmt.executeUpdate();
					
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}
	
	public int boardAttachdelete(int boardid2) {
		try {
			conn=getConnection();
			query="delete from user_attach where boardid=?";
			pstmt=conn.prepareStatement(query);
			//
			pstmt.setInt(1, boardid2);
			System.out.println("board dao:"+boardid);
			result = pstmt.executeUpdate();
					
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}


}
