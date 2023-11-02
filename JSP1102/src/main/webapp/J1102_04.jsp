<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP Scriptlet</title>
	</head>
	<body>
	<!-- HTML 주석: JSP프로그래밍 입니다. random 함수를 사용했습니다.-->
	<%-- JSP 주석: String.format 함수를 사용했습니다.--%>
		<%
		//랜덤숫자 0-99999
		//자릿수는 5자리로 출력. ex)00001
		
			int num = (int)(Math.random()*100000);
			String str_num = String.format("%05d",num);
			out.println(str_num+"<br>");
		
		//5자리 개별숫자의 합을 출력. ex)02487 -> 21	
			out.println(str_num.charAt(0)-'0'+"<br>");
			out.println(str_num.charAt(1)-'0'+"<br>");
			out.println(str_num.charAt(2)-'0'+"<br>");
			out.println(str_num.charAt(3)-'0'+"<br>");
			out.println(str_num.charAt(4)-'0'+"<br>");
			
			out.println("합계: "+(
				(str_num.charAt(0)-'0')+(str_num.charAt(1)-'0')+(str_num.charAt(2)-'0')
				+(str_num.charAt(3)-'0')+(str_num.charAt(4)-'0')
			));
			
		//소문자 a를 대문자 A로 바꾸는 방법 >> 아스키코드 a:97 , A:65 , 0:48
		//대소문자 변경 = +-32
		//'1'-'0'= 1
		%>
	</body>
</html>