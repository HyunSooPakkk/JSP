<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>JSP Scriptlet</title>
	</head>
	<body>
		<%
		for(int i=1;i<=9;i++){
			i++;
			out.println("2*"+i+"="+(2*i)+"<br>");
			out.println("-----------------<br>");
		%>
		--------------<br>	
		<%}%>
		
		<%
		int a=0;
		if(a%2!=1){ //로그인 버튼을 클릭했을 때 아이디와 패스워드가 일치하면 1, 그렇지 않으면 0
		%>
			<h2>홍길동님 환영합니다.</h2>
		<%	
			}else{
		%>
		
			<h2>아이디 또는 패스워드가 일치하지 않습니다. 다시 확인하세요.</h2>
		<%	
			}
		%>
	
	</body>
</html>