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
		<title>memm list</title>
		<style>
			*{margin:0; padding:0;}
			div{width:1200px; margin:30px auto; text-align-center;}
			table,th,td{border:2px solid orange; border-collapse:collapse;
			font-size:16px; text-align:center;}
			th,td{width:200px; height:40px;}
			button{width:200px; height:45px; margin-top:30px;}
		</style>
    </head>
	<body>
		<div>
		<table>
			<tr>
				<th>아이디</th>
				<th>패스워드</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>성별</th>
				<th>취미</th>
			</tr>
			<%
			request.setCharacterEncoding("UTF-8");
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs = null;
				
				String id,pw,name,phone,gender,hobby,mdate;
				try{
				//DB 연결
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1111");
				stmt = conn.createStatement();
				String query = "select*from memm";
				rs = stmt.executeQuery(query);
				
				while(rs.next()){
					id = rs.getString("id");
					pw = rs.getString("pw");
					name = rs.getString("name");
					phone = rs.getString("phone");
					gender = rs.getString("gender");
					hobby = rs.getString("hobby");
					mdate = rs.getString("mdate");
				
				%>
				<tr>
				<td><%=id%></td>
				<td><%=pw%></td>
				<td><%=name%></td>
				<td><%=phone%></td>
				<td><%=gender%></td>
				<td><%=hobby%></td>
				<td><%=mdate%></td>
				</tr>
				<%}
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
			<button onclick="javascript:location.href='memm_write.jsp';">회원등록</button>
		</div>
	</body>
</html>