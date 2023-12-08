<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title> 1:1 문의 등록 </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset_HS.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout_HS.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content_HS.css?v=Y" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
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

		<div id="location">
			
		</div>
		

			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong style="font-family: 'JeonjuCraftGoR' !important;">1:1문의</strong><span style="font-family: 'JeonjuCraftGoR' !important;">삼식세끼 서비스에 궁금하신 사항을 남겨주시면 답변해드립니다.</span></h2>
					
					

					<div class="checkDiv">
						<table summary="분류, 제목, 상세내용, 첨부파일 순으로 문의를 등록할 수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption style="font-family: 'JeonjuCraftGoR' !important;">1:1문의</caption>
							<colgroup>
							<col width="19%" class="tw30" />
							<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><span style="font-family: 'JeonjuCraftGoR' !important;">분류</span></th>
									<td>
										<select>
											<option value="">선택해주세요.</option>
											<option value="">예약 문의</option>
											<option value="">오픈 문의</option>
											<option value="">콜키지 문의</option>
											<option value="">기타</option>
										</select>
									</td>
								</tr>
								<tr>
									<th scope="row"><span style="font-family: 'JeonjuCraftGoR' !important;">제목</span></th>
									<td>
										<input type="text" class="wlong" />
									</td>
								</tr>
								<tr>
									<th scope="row"><span style="font-family: 'JeonjuCraftGoR' !important;">상세 내용</span></th>
									<td>
										<textarea class="tta"></textarea>
									</td>
								</tr>
								<tr>
									<th scope="row"><span style="font-family: 'JeonjuCraftGoR' !important;">첨부파일</span></th>
									<td>
										<input type="file" class="fileType" />
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>																
								<li><a href="#" class="nbtnbig" style="font-family: 'JeonjuCraftGoR' !important;">취소</a></li>
								<li><a href="#" class="sbtnMini" style="font-family: 'JeonjuCraftGoR' !important;">확인</a></li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->
					
			
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