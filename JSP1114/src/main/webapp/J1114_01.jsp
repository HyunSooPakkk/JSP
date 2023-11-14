<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>EL Tag</title>
	</head>
	<body>
	<%
		session.setAttribute("session_nickname", "길동쓰");
	%>
	
		<h1>form</h1>
		<form name="frm" method="get" action="J_result.jsp">
			<label>아이디</label>
			<input type="text" name="id" id="id">
			<br>
			<label>이름</label>
			<input type="text" name="name" id="name">
			<br>
			<label>숫자1</label>
			<br>
			<input type="text" name="num1">
			<label>숫자2</label>
			<input type="text" name="num2">
			<br>
			<label>취미</label>
			<input type="checkbox" name="hobby" id="game" value="game">
			<label for="게임">게임</label>
			<input type="checkbox" name="hobby" id="golf" value="golf">
			<label for="골프">골프</label>
			<input type="checkbox" name="hobby" id="run" value="run">
			<label for="조깅">조깅</label>
			<br>
			<input type="submit" value="전송">
			<br>
		</form>
		
		
		
	</body>
</html>