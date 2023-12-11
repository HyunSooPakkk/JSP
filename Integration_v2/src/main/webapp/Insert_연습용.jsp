<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="imagetoolbar" content="no">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="format-detection" content="telephone=no">
  <meta name="title" content="웹사이트">
  <meta name="description" content="웹사이트입니다.">
  <meta name="keywords" content="키워드,키워드,키워드">
  <meta property="og:title" content="웹사이트">
  <meta property="og:description" content="웹사이트입니다">
  <meta property="og:image" content="https://웹사이트/images/opengraph.png">
  <meta property="og:url" content="https://웹사이트">
  <title>현수연습용</title>
  <link rel="stylesheet" href="../resources/css/template.css">
  <link rel="stylesheet" href="../resources/css/style2.css">
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SIGN-UP AMPM</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="css/Insert.css" media="screen" title="no title" charset="utf-8">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- 수정부분  -->    
  <script>
  	$(function(){
		var idConfirm = 0;
		//모든 정보 입력하지 않으면 넘어가지 못함.
		$("#btn-info").click(function(){
			var id = $("#id").val();
			var pw = $("#pw").val();
			var address = $("#address-1").val();
			var email = $("#Email").val();
			
			if(id,pw,address,email == ""){
				alert("회원정보를 모두 입력하셔야 합니다.");
				$("#id").focus();
				return false;
			}else{
				alert("정상 입력되었습니다.")
			}
			mFrm.submit();
		});//btn-info
  			
  		//상점등록 페이지 이동 버튼	
		$("#btn-warning").click(function(){
			location.href = "regStore.do";
		});//btn-info
  	     
  		//아이디 중복 체크
  		$("#idChkBtn").click(function(){
			alert("아이디를 중복체크합니다.");
			var id = $("#id").val();
			
			//Ajax으로 아이디 중복체크
			$.ajax({
				url: "IdCheck",
				type: "post",
				data: {"id":id},
				dataType: "text",
				success:function(data){
					if(data == '사용 가능'){
						$("#txtIdChk").text("사용 가능한 아이디입니다.");
						$("#txtIdChk").addClass("txtOff");
						$("#txtIdChk").removeClass("txtOn");
						idConfirm = 1;
						
					}else{
						$("#txtIdChk").text("사용 불가능한 아이디입니다.");
						$("#txtIdChk").removeClass("txtOff");
						$("#txtIdChk").addClass("txtOn");
						idConfirm = 0;
					}
					console.log("받은 결과값: "+data);
				},
				error:function(){
					alert("실패");
				}
					
				
				
			})//Ajax
			
  		});//idChkBtn
  		
  			
  			//비밀번호 비교
  			$("#Password2").keyup(function(){
  				if($("#pw").val() != $("#Password2").val()){
  					$("#txtPw").text("비밀번호가 일치하지 않습니다.");
  					$("#txtPw").addClass("txtOn");
  					$("#txtPw").removeClass("txtOff");
  				}else{
  					$("txtPw").text("비밀번호가 일치합니다.");
  					$("txtPw").addClass("txtOff");
  					$("txtPw").removeClass("txtOn");
  				}
  				
  				
  			});//Password2
  			
  		
  		//주소
		$("#addressSearch").click(function(){
			new daum.Postcode({
				oncomplete: function(data){
					$("#address-1").val(data.zonecode);
					$("#c_main_address").val(data.address);
				}
			}).open();
			
		});//addressSearch
  			
  		//이메일
  		$("#chgMail").change(function(){
  			if($("#chgMail").val() == ""){
  				$("#mail_tail").val();
  				$("#mail_tail").prop("readonly",false);
  			}else{
				$("#mail_tail").val($("#chgMail").val());
				$("#mail_tail").prop("readonly",true);
  			}
  			
  		});//chgMail
  		
  	});//jquery
  		
  </script>
	
  <script>
  	//생일
	  $(document).ready(function(){            
		    var now = new Date();
		    var year = now.getFullYear();
		    var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
		    var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate());           
		    //년도 selectbox만들기               
		    for(var i = 1900 ; i <= year ; i++) {
		        $('#birth_year').append('<option value="' + i + '">' + i + '년</option>');    
		    }
	
		    // 월별 selectbox 만들기            
		    for(var i=1; i <= 12; i++) {
		        var mm = i > 9 ? i : "0"+i ;            
		        $('#birth_month').append('<option value="' + mm + '">' + mm + '월</option>');    
		    }
		    
		    // 일별 selectbox 만들기
		    for(var i=1; i <= 31; i++) {
		        var dd = i > 9 ? i : "0"+i ;            
		        $('#birth_day').append('<option value="' + dd + '">' + dd+ '일</option>');    
		    }
		    $("#birth_year  > option[value="+year+"]").attr("selected", "true");        
		    $("#birth_month  > option[value="+mon+"]").attr("selected", "true");    
		    $("#birth_day  > option[value="+day+"]").attr("selected", "true");       
		  
		})
  </script>
<!-- 수정부분  -->  
  <style>
  	.memberbd{width:100%; margin:10px 0 0 0; border-bottom:1px #EAEAEA solid; overflow:hidden;}
	.memberWrite{width:100%;border-color:#eaeaea;border-width:0;border-spacing:0;border-style:none;font-size:12px;}
	.memberWrite th{border-color:#eaeaea;border-width:1px 0 0 0;color:#666;font-weight:bold;border-style:solid none none none;text-align:left;padding:13px 0 12px 0;vertical-align:top;font-size:14px; word-break:keep-all;}
	.memberWrite th span{display:block; padding:0 0 0 10px;line-height:1.2;}
	.memberWrite th label{padding:0 0 0 10px;}
	.memberWrite td{border-color:#eaeaea;border-width:1px 0 0 0;padding:10px 0 10px 10px;text-align:left;border-style:solid none none none;color:#444;vertical-align:middle; word-break:keep-all;}
	.memberWrite td label{font-size:12px; color:#666; cursor:pointer; line-height:18px;}
	.memberWrite td p{color:#727272; clear:both; line-height:1.2;}
	.memberWrite td .radio_t{width:13px;height:13px;margin:0 5px 2px 0;padding:0;}
	.memberWrite td .gray{color:#727272; clear:both; line-height:1.2;}
	.form-group input[type="button"] {
    width: 80px;
    height: 30px;
    background-color: #f0ad4e;
    border-color: #eea236;
    padding: 0px 10px;
    line-height: 5px;
    color: #fff;
    font-weight: 700;
    font-size: 12px;
    }
    .control {
    display: block;
    width: 300px;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    }
   /* SECTION - BIRTH */
	.info#info__birth {
	  display: flex;
	  margin-top: 5px;
	}
	
	.info#info__birth select {
	  margin-left : 7px;
	}
	
	.info#info__birth select:first-child {
	  margin-left : 0px;
	}
	.info#info__birth select::-webkit-scrollbar {
	  width: 10px;
	}
	
	.info#info__birth select::-webkit-scrollbar-thumb {
	  background-color: #b6b6b6;
	  border-radius: 3px;
	}
	
	.info#info__birth select::-webkit-scrollbar-track {
	  background-color: #ebe9e9;
	  border-radius: 6px;
	}
	.txtOff{color:blue;}
    .txtOn{color:red;}
  </style>
<!-- 수정부분  -->
  </head>
  <script src="../resources/js/setting.js"></script>
  <script src="../resources/js/plugin.js"></script>
  <script src="../resources/js/template.js"></script>
  <script src="../resources/js/common.js"></script>
  <script src="../resources/js/script.js"></script>	
  <body data-aos-easing="ease" data-aso-duration="400" data-aos-delay="0">
  	<div style="width:100%;">
	<iframe src="html/header.jsp" frameborder="0" scrolling="no" width="100%" height="200px" style="margin:auto;"></iframe>
  	</div>
      <article class="container">
        <div class="page-header">
          <h1>회원가입 <small>Sign up</small></h1>
        </div>
      <form name="mFrm" method="post" action="join03_success.do">
        <div class="col-md-6 col-md-offset-3">
            <div class="form-group">
<!-- 수정부분  -->  
              <label for="InputId">아이디</label>
              <input type="text" class="form-control" id="id" name="id" placeholder="아이디"> 
              <input type="button"  class="control" id="idChkBtn" style="margin-top:5px;" value="중복확인"/> 
			  <span id="txtIdChk">사용 가능한 아이디입니다.</span>
            </div>
            <div class="form-group">
              <label for="InputPassword1">비밀번호</label>
              <input type="password" class="form-control" id="pw" name="pw" placeholder="비밀번호">
            </div>
			
            <div class="form-group">
              <label for="InputPassword2">비밀번호 확인</label>
              <input type="password" class="form-control" id="Password2" name="Password2" placeholder="비밀번호 확인">
              <p class="help-block" id="txtPw">비밀번호 확인을 위해 다시 한번 입력 해 주세요</p>
            </div>
            
            <div class="form-group">
              <label for="username">이름</label>
              <input type="text" class="form-control" id="name" name="nicname" placeholder="이름을 입력해 주세요">
            </div>
<!-- 수정부분  -->               
            <div class="form-group">
              <label for="c_main_address">주소</label>
              <br>
              <button type="button" id="addressSearch" onclick="findAddr()" >주소검색</button>
              <input type="text" class="control" id="address-1" name="address1" placeholder="우편번호" style="margin-bottom: 5px; margin-top:5px;">
              <input type="text" class="form-control" id="c_main_address" name="address2" placeholder="주소" readonly >
            </div>
 <!-- 수정부분 끝 -->              
            <div class="form-group"  style="white-space: nowrap;">
              <label for="InputEmail" style="display: inline-block; margin-right: 10px;" >이메일 주소</label>
              <br>
              <input type="text" class="form-control" style="width:200px; display: inline-block; margin-right: 5px;"  id="Email" name="email2" required />
              <span style="display: inline-block; margin-right: 5px;">@</span>
			  <input type="text"  class="form-control"  id="mail_tail" name="mail_tail" style="width:150px; display: inline-block; margin-right: 5px;" required />
			  <select id="chgMail" class="form-control" style="width:200px; display: inline-block;"  >
			 		<option value="" selected >직접입력</option>
					<option value="naver.com">naver.com</option>
					<option value="daum.net">daum.net</option>
					<option value="nate.com">nate.com</option>
					<option value="gmail.com">gmail.com</option>
			  </select>
            </div>
<!-- 수정부분  -->            
			 <!-- 3. 필드(생년월일) -->
			 <div class="form-group">
              <label for="InputEmail">생년월일</label>
              </div>
		        <div class="control" id="info__birth" style="width:230px; margin-bottom:10px;">
				  <select class="box" id="birth_year"  name="birth_year">
				    <option disabled selected>출생 연도</option>
				  </select>
				  <select class="box" id="birth_month"  name="birth_month">
				    <option disabled selected>월</option>
				  </select>
				  <select class="box" id="birth_day"  name="birth_day">
				    <option disabled selected>일</option>
				  </select>
				</div>
					
<!-- 수정부분  -->   			
			<div class="form-group text-center">
              <button type="submit" id="btn-warning" class="btn btn-warning" style="margin-top:20px;">상점등록<i class="fa fa-times spaceLeft"></i></button>
            </div>
<!-- 수정부분  -->            
		   <hr class="mb-4">
			<div class="agreecheckbox">
					<img src="images/radio_on.jpg" style="margin-bottom:10px;">
					<label for="f_agree">이용약관에 동의합니다.</label>
				</div>
<!-- 수정부분  -->
            
            <div class="form-group text-center">
              <button type="submit" id="btn-info" class="btn btn-info">회원가입<i class="fa fa-check spaceLeft"></i></button>
            </div>
        </div>

     	 </article>
	</form>  
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <div class="ffoo" style="width:100%; padding-top:180px;">
	<iframe src="html/footer.jsp" frameborder="0" scrolling="no" width="100%" height="300px" style="margin:auto; "></iframe>
  	</div>  
  </body>
</html>
