<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>id/pw 체크</title>
	</head>
	<body>
		<%
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			if(id.equals("admin") && pw.equals("1111")){
				session.setAttribute("id", "admin");
				session.setAttribute("pw", "1111");
		%>
		<script>
		alert("로그인 되었습니다.");
		location.href = "main.jsp";
		</script>		
						
		<%}else{%>
		<script>
		alert("아이디 또는 패스워드가 일치하지 않습니다. 다시 로그인해주세요.");
		location.href = "clogin.jsp";
		</script>		
		<%}%>
	</body>
</html>