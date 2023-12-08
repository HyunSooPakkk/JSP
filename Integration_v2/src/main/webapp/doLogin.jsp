<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<title>doLogin</title>
	</head>
	<body>
		<c:if test="${result == 1 }">	
			<script>
				alert("로그인 되었습니다.");
				location.href = "html/main.do";
			</script>
		</c:if>
		<c:if test="${result != 1 }">	
			<script>
				alert("아이디나 비밀번호가 일치하지 않습니다. 다시 입력해주세요.");
				location.href = "Login.do";
			</script>
		</c:if>
	</body>
</html>