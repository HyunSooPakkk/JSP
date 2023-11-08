<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>DB 연결</title>
	</head>
	<body>
		<%
			Connection conn=null;
			Statement stmt=null;
			ResultSet rs=null;
			int bNo=0;
			String bTitle="", bCont="", bDate="", id="", bFile="";
			int bGroup=0, bStep=0, bIndent=0, bHit=0;
			
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1111");
				stmt = conn.createStatement();
				String query= "select * from board";
				rs = stmt.executeQuery(query);
				
				while(rs.next()){
					bNo = rs.getInt("bNo");
					bTitle = rs.getNString("bTitle");
					bCont = rs.getNString("bCont");
					bDate = rs.getDate("bDate")+"";
					id = rs.getNString("id");
					bGroup = rs.getInt("bGroup");
					bStep = rs.getInt("bStep");
					bIndent = rs.getInt("bIndent");
					bHit = rs.getInt("bHit");
					bFile = rs.getNString("bFile");
					out.println("순번: "+bNo+", 제목: "+bTitle+", 내용: "+bCont+", 날짜: "+bDate+", 아이디: "+id+", 그룹: "+bGroup+", 스텝: "+bStep+", 인덴트: "+bIndent+", 조회수: "+bHit+", 파일: "+bFile+""+"<br>");
				}
				
			}catch(Exception e){
				e.printStackTrace();
				
			}finally{
				try{
					if(rs!=null) rs.close();
					if(stmt!=null) stmt.close();
					if(conn!=null) conn.close();
				}catch(Exception e2){
					e2.printStackTrace();
				}
			}
			
		%>
	</body>
</html>