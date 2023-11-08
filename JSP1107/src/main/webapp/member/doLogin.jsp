<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 확인</title>
	</head>
	
	<body>
	
			<% 
		    //admin,1111 일치 시
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			if(id.equals("admin") && pw.equals("1111")){
					
			session.setAttribute("session_id", id);
			session.setAttribute("session_nickName", "유신쓰");
			%>
			<script>
			alert("로그인 되었습니다.");
			location.href="../layout/main.jsp"</script>
			
			<!-- 불일치 시 다시 login.jsp로 -->
			<%}else{%>
			<script>
			alert("아이디 또는 패스워드가 일치하지 않습니다. 다시 로그인해주세요.");
			history.back(); location.href="login.jsp";
			</script>
			<%}%>
	</body>
</html>