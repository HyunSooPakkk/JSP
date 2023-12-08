<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>	
		<link rel="stylesheet" type="text/css" href="css/style_join03_success.css">
		<link rel="stylesheet" type="text/css" href="css/style_footer.css">
		<title>회원가입 - 회원가입완료</title>
	</head>
	<body>
		
		<div style="width:100%">
			<iframe src="./html/header.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:200px;"></iframe>
		</div>
		
		<section>
			<div id="sub_top_area">
				<h3>회원가입</h3>
			</div>
			
			<div id="join_success_div">
				<p>
					감사합니다.
					<strong>회원가입이 완료되었습니다.</strong>
					<p><a href="html/main.do">홈으로</a></p>
				</p>
			</div>	
				
				
		</section>
		
		<div class="ffoo" style="width:100%; margin-top:180px;">
			<iframe src="html/footer.jsp" frameborder="0" scrolling="no" width="100%" height="300px" style="margin:auto; "></iframe>
		</div>  
	</body>
</html>