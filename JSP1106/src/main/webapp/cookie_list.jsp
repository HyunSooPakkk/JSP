<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키 검색</title>
	</head>
	<body>
		<h1>쿠키 검색</h1>
		<%
			Cookie[] cks = request.getCookies(); //쿠키가 여러개니까 배열로 들고와라~ //cks: ck1,2
			if(cks != null){
				for(int i=0;i<cks.length;i++){
					out.println("쿠키"+(i+1)+": "+cks[i].getName()+"<br>");
					out.println("쿠키"+(i+1)+": "+cks[i].getValue()+"<br>");
				}
			}
		%>
		<a href="J1106_02.jsp">쿠키 생성</a>
		<a href="cookie_doDelete.jsp">쿠키 삭제</a>
	</body>
</html>