package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.java.www.dto.StoreAttachDto;

public class StoreAttachDao {
	
	
	int storeid; 
	String filename ;
	int filesize;
	Timestamp regdate;
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	
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

	public int inputFiles(StoreAttachDto sadto) {
		
		int result=0;
		try {
			String query ="insert  into store_attach (storeid, filename, regdate) values(storeinfo_seq.currval,?,sysdate)";
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, sadto.getFilename());

			
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

}
