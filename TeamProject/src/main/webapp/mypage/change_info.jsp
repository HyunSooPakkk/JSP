<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>회원 정보 수정</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset_HS.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout_HS.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content_HS.css?v=Y" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
$(document).ready(function() {

});
</script>
</head>
<body>



<div id="allwrap">
<div id="wrap">
	
	


<!--header start-->
	<div style="width:100%;">
	<iframe src="header.jsp" frameborder="0" scrolling="no" width="100%" height="290px" style="margin:auto;"></iframe>
  	</div>
<!--header end-->
	




<!-- GNB -->
	
<!-- //GNB -->



<!-- container -->
<div id="container">

		
		
		
		


<!-- contents -->
<div id="contents">
	<div id="mypage">
		<h2><strong style="font-family: 'JeonjuCraftGoR' !important;">회원 정보 수정</strong>
		<span style="font-family: 'JeonjuCraftGoR' !important;">회원님의 개인 정보를 수정하실 수 있습니다.</span>
		<span></span></h2>
		
		


		<div class="memberbd">
		<form name="m_frm" method="post" action="doM_info_update.do">
			<input type="hidden" name="memberid" value="${mdto.memberid}">
			<table summary="이름, 아이디, 비밀번호, 비밀번호 확인, 이메일, 이메일 수신여부, 주소, 휴대폰, 유선전화, 생년월일 순으로 회원가입 시 입력한 정보를 수정할 수 있습니다." class="memberWrite" border="1" cellspacing="0">
			<caption>회원가입 정보 수정</caption>
			<colgroup>
			<col width="22%" class="tw30" />
			<col width="*" />
			</colgroup>
			<tbody>
				<tr>
					<th scope="row"><span style="font-family: 'JeonjuCraftGoR' !important;">이름 *</span></th>
					<td style="font-family: 'JeonjuCraftGoR' !important;">${mdto.nicname}</td>
				</tr>
				<tr>
					<th scope="row"><span style="font-family: 'JeonjuCraftGoR' !important;">아이디 *</span></th>
					<td style="font-family: 'JeonjuCraftGoR' !important;">${mdto.memberid}</td>
				</tr>
				
				
				<!-- 비밀번호 수정 -->
				<tr>
				<th scope="row">
				<span style="font-family: 'JeonjuCraftGoR' !important;">비밀번호 변경 *</span>
				</th>
				<td>
				<script>
				$(function(){
					$(".pwBtn").click(function(){
						var id = "${mdto.memberid}"
						var pw = $("#pwchange").val();
						
						$.ajax({
							url: "../PwChange",
							type:"post",
							data:{"memberid":id,"mempw":pw},
							datatype:"json",
							success: function(data){
								console.log(data);
								alert("비밀번호가 변경되었습니다.");
								$("#pwchange").val("");//비밀번호 input창 글삭제
							},
							error: function(){
								alert("실패");
							}
						});		
					});//click
				});//jquery
				</script>
				<!-- 비밀번호 변경 버튼 -->
				<input type="password" name="pwchange" id="pwchange" value="">
				<a class="pwBtn nbtnMini iw86" style="font-family: 'JeonjuCraftGoR' !important;">비밀번호 변경</a>
				</td>
				</tr>
				
				<!-- 이메일 수정 -->
				<tr>
				<th scope="row"><span style="font-family: 'JeonjuCraftGoR' !important;">이메일</span></th>
			    <td>
				<ul class="pta">
				<script>
				$(function(){
					$("#emailList").change(function(){
						if($("#emailList").val()==""){
							$("#mail_tail").val();
							$("#mail_tail").prop("readonly",false);
						}else{
						$("#mail_tail").val($("#emailList").val());
						$("#mail_tail").prop("readonly",true);
						}
					});
				});
				</script>
				<ul>
				    <c:set var="marr" value="${fn:split(mdto.email,'@')}" />
					<li><input type="text" id="mail_id" name="mail_id" value="${marr[0]}" required /></li>
					<li><span>@</span></li>
					<li><input type="text" id="mail_tail" name="mail_tail" value="${marr[1]}" required /></li>
					<select id="emailList">
						<option value="" selected>직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>    
						<option value="gmail.com">gmail.com</option>    
				</select>&nbsp;&nbsp;&nbsp;
				</li>
				</ul>
				</td>
				</tr>
				
				
						
				<!-- 주소 수정 -->	
				<tr>
				<th scope="row"><span style="font-family: 'JeonjuCraftGoR' !important;">주소 *</span></th>
				<td>
				<script>
				$(function(){
					$(".addressBtn").click(function(){
						 new daum.Postcode({
						        oncomplete: function(data) {
						            
							    $(".zonecode").val(data.zonecode);
							    $(".addressType").val(data.address);
						        }
						    }).open();
						
					});
				});
				</script>
							
				<ul class="pta">
					<li>
					<c:set var="addarr" value="${fn:split(mdto.address,',')}" />
					<input type="text" class="zonecode w134" id="zonecode" name="zonecode" value="${addarr[0]}">&nbsp;
					</li>
					<li><a class="addressBtn" style=cursor:pointer;><span style="font-family: 'JeonjuCraftGoR' !important;">우편번호 찾기</span></a></li>
					<li class="pt5"><input type="text" class="addressType" id="addressType" name="addressType" value="${addarr[1]}"/></li>
							
				</ul>
				</td>
				</tr>
								
				<tr>
				<th scope="row"><span style="font-family: 'JeonjuCraftGoR' !important;">생년월일</span></th>
				<td>
				<ul class="pta">
				<c:set var="birtharr" value="${fn:split(birthdayStr,'-')}" />
				<li>
				<select id="birth_year" name="birth_year">
				<option disabled >선택하세요</option>
				<script type="text/javascript">
				//<![CDATA[
				for(var i=1940; i<=2023; i++){
					if('${birtharr[0]}'==i){
						document.write("<option value='"+i+"' selected >" + i + "년"+ "</option>");
					}else{
						document.write("<option value='"+i+"' >" + i + "년"+ "</option>");
					}
					
				};
				//]]>
				</script>
				</select>
				</li>
				<li>&nbsp;<span class="valign" style="font-family: 'JeonjuCraftGoR' !important;">년</span>&nbsp;&nbsp;&nbsp;</li>
				<li>
				<select id="birth_month" name="birth_month">
				<option disabled>선택하세요</option>
				<script type="text/javascript">
				//<![CDATA[
				for(var i=1; i<=12; i++){
					if(i<10){
						if('${birtharr[1]}'==i){
							document.write("<option value='"+i+"' selected >0" + i + "월"+"</option>");
						}else{
							document.write("<option value='"+i+"'>0" + i + "월"+"</option>");
						}
					}else{
						if('${birtharr[1]}'==i){
							document.write("<option value='"+i+"' selected>" + i + "월"+ "</option>");
						}else{
							document.write("<option value='"+i+"'>" + i + "월"+ "</option>");
						}
					};
				};
			    //]]>
			    </script>
				</select>
				</li>
				
				
				<li>&nbsp;<span class="valign" style="font-family: 'JeonjuCraftGoR' !important;">월</span>&nbsp;&nbsp;&nbsp;</li>
				<li>
				<select id="birth_day" name="birth_day">
				<option disabled selected="selected">선택하세요</option>
				<script type="text/javascript">
				//<![CDATA[
				for(var i=1; i<=31; i++){
					if(i<10){
						if('${birtharr[2]}'==i){
							document.write("<option value='"+i+"' selected>0" + i + "일"+"</option>");
							}else{
							document.write("<option value='"+i+"'>0" + i + "일"+"</option>");	
							}
				}else{
					if('${birtharr[2]}'==i){
						document.write("<option value='"+i+"' selected>" + i + "일"+ "</option>");
					}else{
						document.write("<option value='"+i+"'>" + i + "일"+ "</option>");
					}
					
				};
				};
				//]]>
				</script>
				</select>
				</li>
				
				
				<li class="r20">&nbsp;<span class="valign" style="font-family: 'JeonjuCraftGoR' !important;">일</span></li>
				<li class="pt5">
				<ul class="baseQues"></ul>
				</li>
				</ul>
				</td>
				</tr>
			</tbody>
		</table>
	</div>
	</div>
				
					
	<script>
	   $(function(){
	   $(".sbtnMini").click(function(){
	   		alert("회원정보를 수정합니다."); 
	   		m_frm.submit();
	   }); 
	   });
	</script>
					
					
	<!-- 취소,수정 버튼 -->
	<div class="btnArea">
	<div class="bCenter">
	<ul>
	<li><a class="nbtnbig" style="font-family: 'JeonjuCraftGoR' !important;">취소하기</a></li>
	<li><a class="sbtnMini" style="font-family: 'JeonjuCraftGoR' !important;">수정하기</a></li>
	</ul>
	</div>
	</div>
	<!-- // -->
	
	
	
				
	</div>
	</div>
	<!-- //contents -->




	</div>
	</div>
	<!-- //container -->




<!--footer start-->
	<div style="width:100%; height:100%; margin-top:70px;">
	<iframe src="footer.jsp" frameborder="0" scrolling="no" width="100%" height="500px" style="margin:auto;"></iframe>
  	</div>
<!--footer end-->



</div>
</div>
</body>
</html>