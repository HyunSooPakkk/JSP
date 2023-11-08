<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판</title>
		<style>
			*{margin:0; padding:0;}
			h1{color: orange;}
			div{width:1000px; margin:50px auto;}
			h1{text-align:center; margin-bottom:20px;}
			th{color: orange;}
			table,th,td{border:2px solid orange; border-collapse:collapse;
			font-size:16px; text-align:center;}
			th,td{width:200px; height:70px;}
		</style>
	</head>
	<body>
	<div>
		<h1>보드 데이터</h1>
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<!-- SQL board data 가져오기 -->
			<%
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			String btitle,id,bdate;
			int bno,bhit;
			int i=0;
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1111");
				stmt = conn.createStatement();
				String query = "select * from (select ROW_NUMBER() OVER (order by bgroup) rnum,a.* from board a where btitle like '%ia%') where rnum>=11 and rnum<=20";
				rs = stmt.executeQuery(query);
				while(rs.next()){
					  i++;	
					  bno = rs.getInt("bno");
		        	  btitle = rs.getString("btitle");
		        	  id = rs.getString("id");
		        	  bdate = rs.getDate("bdate")+"";
		        	  bhit = rs.getInt("bhit");
			%>
			<tr>
				<td><%=bno%></td>
				<td><%=btitle%></td>
				<td><%=id%></td>
				<td><%=bdate%></td>
				<td><%=bhit%></td>
			</tr>
			<%
				}
				}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(conn!=null) conn.close();
					if(stmt!=null) stmt.close();
					if(rs!=null) rs.close();
				}catch(Exception e2){e2.printStackTrace();}
			}//	
			%>
		  </table>
		</div>
	</body>
</html>