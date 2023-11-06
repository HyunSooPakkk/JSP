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
		//id: admin, pw: 1111 제외 로그인 불가
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("admin") && pw.equals("1111")){
		//세션 부분 추가
		session.setAttribute("session_id", "admin");
		session.setAttribute("session_nickName", "길동");
			
		%>	
		<script>
		alert("로그인 되었습니다.");
		location.href="session_list.jsp";
		</script>
			
		<%}else{%>
		<script>alert("아이디 또는 패스워드가 일치하지 않습니다. 다시 로그인해주세요.");
		location.href="login.jsp";
		</script>
		<%}%>
		
	</body>
</html>