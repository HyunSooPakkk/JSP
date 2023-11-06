<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<!-- 데이터 전송 방법 3가지 -->
	<body>
		<h2>액션태그로 전송</h2>
		<jsp:forward page="Result.jsp">
			<jsp:param name="ipParam" value="<%=request.getRemoteAddr()%>"/>
		</jsp:forward>
		
		<hr>
		
		<h2>파라미터로 전송</h2>
		<a href="Result.jsp?ipAdd=<%=request.getRemoteAddr()%>">다음(a tag)</a>
		<hr>
		
		<h2>폼으로 전송</h2>
		<form method="post" name="frm" action="Result.jsp">
			<label>폼으로 데이터 전송</label>
			<input type="hidden" name="ip" id="ip" value="<%=request.getRemoteAddr()%>"> <!-- 접속한 IP정보 넘어감 -->
			<input type="submit" value="다음">
		</form>
		<hr>
		
		
	</body>
</html>