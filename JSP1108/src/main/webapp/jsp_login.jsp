<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<html>
	<script>
		$(function(){
			$("#fbtn").click(function(){
				//alert($("#id").val());
				//alert($("#pw").val());
				frm.submit();
			});
		});
	</script>
	<head>
		<meta charset="UTF-8">
		<title>로그인</title>
	</head>
	<body>
		<h1>로그인</h1>
		<form name="frm" method="post" action="doJsp_login.jsp">
		<label>아이디</label>
		<input type="text" name="id" id="id"><br>
		<label>패스워드</label>
		<input type="password" name="pw" id="pw"><br>
		<input type="button" id="fbtn" value="로그인">
		<input type="button" onclick="javascript:history.back()" value="취소">
		<br>
		</form>
	</body>
</html>