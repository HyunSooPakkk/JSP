<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보수정</title>
	</head>
	<body>
	<c:if test="${result==1}">
		<script>
			alert("회원정보 수정을 성공했습니다."); 
			location.href = "html/main.do"; //서버 이동 시에는 주소 입력창에서 [서버이름/프로젝트이름/컨텍스트패스/] 까지 자동으로 붙여줘서 폴더명 앞에 / 필요없음
		</script>
	</c:if>
	<c:if test="${result!=1}">
		<script>
			alert("회원정보 수정을 실패했습니다.");
			location.href = "change_info.do";
		</script>
	</c:if>
	</body>
</html>