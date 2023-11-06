<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>액션태그로 데이터 전송 결과페이지</h2>
		<h2>ip:<%=request.getParameter("ipParam")%></h2>
		<hr>
		<%-- 
		<h2>파라미터로 데이터 전송 결과페이지</h2>
		<h2>ip:<%=request.getParameter("ipAdd")%></h2>
		<hr>
		
		<h2>폼으로 데이터 전송 결과페이지</h2>
		<h2>ip:<%=request.getParameter("ip")%></h2>
		--%>
	</body>
</html>