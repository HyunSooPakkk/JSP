<%@page import="java.sql.PreparedStatement"%>
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
	<title>로그인 체크</title>
	</head>
	<body>
			<%		
			request.setCharacterEncoding("UTF-8");	
			String uid = request.getParameter("id");
			String upw = request.getParameter("pw");
		
			Connection conn = null;
			PreparedStatement pstmt = null;
			//Statement stmt = null;
			ResultSet rs = null;
			try{
				
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1111");
			
			//PreparedStatement 사용 시
			String query = "select * from member where id=? and pw=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, uid);
			pstmt.setString(2, upw);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				session.setAttribute("session_id", uid);
				session.setAttribute("session_Nickname", uid);
			%>
			<script>
				alert("로그인 되었습니다.");
				location.href = "jsp_main.jsp";
			</script>	
				
				
			<%}else{%>
			<script>
				alert("아이디 또는 패스워드가 일치하지 않습니다. 다시 로그인하세요.");
				location.href = "jsp_login.jsp";
			</script>		
			<%}%>
			
			<%
			//Statement 사용 시
			//stmt = conn.createStatement();
			//String query = "select * from member where id='"+uid+"' and pw='"+upw+"'";
			//stmt.executeQuery(query);
			}catch(Exception e){
				e.printStackTrace();
				
			}finally{
				try{
					if(rs!=null) rs.close();
					if(pstmt!=null) pstmt.close();
					if(conn!=null) conn.close();
					
				}catch(Exception e2){
					e2.printStackTrace();
				}
			}
		%>
	</body>
</html>