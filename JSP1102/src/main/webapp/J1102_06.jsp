<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 선언식</title>
	</head>
	<body>
		<%! //서블릿에서 계산된 결과값만 리턴해가지고 옴.
			int a=0; int b=0; //선언식에 사용: 전역변수/메소드 선언 가능
			public int sum(int a, int b){
			return a+b;
		}
		%>
		
		<% int a = 10; int b =2; out.println(a+b); %>
		
		<%out.println(sum(10,2)+"<br>");%>
		<%out.println(sum(20,10)+"<br>");%>
		
	</body>
</html>