<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title> 찜한 레스토랑 </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content.css?v=Y" />
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
	<iframe src="header_지원.jsp" frameborder="0" scrolling="no" width="100%" height="290px" style="margin:auto;"></iframe>
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
					<h2><strong style="font-family: 'JeonjuCraftGoR' !important;">찜한 레스토랑</strong><span style="font-family: 'JeonjuCraftGoR' !important;">찜 목록에 담아둔 매장을 확인해보세요.</span></h2>
					
					

				<!-- 장바구니에 상품이 있을경우 -->
					<!-- 장바구니 상품 -->
					<h3 style="font-family: 'JeonjuCraftGoR' !important;">찜 목록에 담긴 매장</h3>
					<div class="orderDivNm">
						<table summary="찜 목록에 담긴 매장 전체선택, 매장명, 위치, 전화번호, 주차가능여부, 예약가능여부 순으로 조회하실 수 있습니다." class="orderTable" border="1" cellspacing="0">
							<caption style="font-family: 'JeonjuCraftGoR' !important;">찜 매장 목록</caption>
							<colgroup>
							<col width="7%"/>
							<col width="*" />
							<col width="14%" class="tnone" />
							<col width="10%" class="tw14"/>
							<col width="14%" class="tw28"/>
							<col width="14%" class="tnone" />
							</colgroup>
							<thead>
								<th scope="col"><input type="checkbox" /></th>
								<th scope="col" style="font-family: 'JeonjuCraftGoR' !important;">매장명</th>
								<th scope="col" class="tnone" style="font-family: 'JeonjuCraftGoR' !important;">위치</th>
								<th scope="col" style="font-family: 'JeonjuCraftGoR' !important;">전화번호</th>
								<th scope="col" style="font-family: 'JeonjuCraftGoR' !important;">주차</th>
								<th scope="col" class="tnone" style="font-family: 'JeonjuCraftGoR' !important;">예약</th>
							</thead>
							
							<tbody>
								<tr>
									<td><input type="checkbox" /></td>
									<td class="left">
										<p class="img"><img src="../images/store/숨 한남.jpg" alt="상품" width="66" height="66" /></p>

										<ul class="goods">
											<li>
												<a href="#" style="font-family: 'JeonjuCraftGoR' !important;">숨 한남</a>
											</li>
										</ul>
									</td>
									<td class="tnone" style="font-family: 'JeonjuCraftGoR' !important;">서울 용산구 한남대로27가길 5 1층<br/><span class="pointscore" style="font-family: 'JeonjuCraftGoR' !important;">7,000 Point 적립!</span></td>
									<td style="font-family: 'JeonjuCraftGoR' !important;">0507-1387-7325</td>
									<td style="font-family: 'JeonjuCraftGoR' !important;">불가능</td>
									<td class="tnone">
										<ul class="order">	
											<li><a href="#" class="obtnMini iw70" style="font-family: 'JeonjuCraftGoR' !important;">가능</a></li>
											<li><a href="#" class="nbtnMini iw70" style="font-family: 'JeonjuCraftGoR' !important;">불가능</a></li>
										</ul>
									</td>
								</tr>
								
								<tr>
									<td><input type="checkbox" /></td>
									<td class="left">
										<p class="img"><img src="../images/store/아방베이커리.jpg" alt="상품" width="66" height="66" /></p>

										<ul class="goods">
											<li>
												<a href="#" style="font-family: 'JeonjuCraftGoR' !important;">아방베이커리 서울숲점</a>
											</li>
										</ul>
									</td>
									<td class="tnone" style="font-family: 'JeonjuCraftGoR' !important;">서울 성동구 왕십리로 83-21 지하1층 B117호~120호<br/><span class="pointscore" style="font-family: 'JeonjuCraftGoR' !important;">5,000 Point 적립!</span></td>
									<td style="font-family: 'JeonjuCraftGoR' !important;">02-6233-7625</td>
									<td style="font-family: 'JeonjuCraftGoR' !important;">가능</td>
									<td class="tnone">
										<ul class="order">	
											<li><a href="#" class="obtnMini iw70" style="font-family: 'JeonjuCraftGoR' !important;">가능</a></li>
											<li><a href="#" class="nbtnMini iw70" style="font-family: 'JeonjuCraftGoR' !important;">불가능</a></li>
										</ul>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="btnArea">
						<div class="bRight">
							<ul>
								<li><a href="#" class="selectbtn" style="font-family: 'JeonjuCraftGoR' !important;">전체선택</a></li>
								<li><a href="#" class="selectbtn2" style="font-family: 'JeonjuCraftGoR' !important;">선택수정</a></li>
								<li><a href="#" class="selectbtn2" style="font-family: 'JeonjuCraftGoR' !important;">선택삭제</a></li>
							</ul>
						</div>
					</div>
					<!-- //장바구니 상품 -->
					

					<!-- 총 금액 -->
					<div class="amount">
						<h4 style="font-family: 'JeonjuCraftGoR' !important;">총 예약 금액</h4>
						<ul class="info">
							<li>
								<span class="title" style="font-family: 'JeonjuCraftGoR' !important;">합계 금액</span>
								<span class="won" style="font-family: 'JeonjuCraftGoR' !important;"><strong style="font-family: 'JeonjuCraftGoR' !important;">60,000</strong> 원</span>
							</li>
							<li>
								<span class="title" style="font-family: 'JeonjuCraftGoR' !important;">총 인원</span>
								<span class="won" style="font-family: 'JeonjuCraftGoR' !important;"><strong style="font-family: 'JeonjuCraftGoR' !important;">3</strong> 인</span>
							</li>
						</ul>
						<ul class="total">
							<li class="mileage" style="font-family: 'JeonjuCraftGoR' !important;">(적립 마일리지 <strong style="font-family: 'JeonjuCraftGoR' !important;">12,000</strong> Point) </li>
							<li class="txt" style="font-family: 'JeonjuCraftGoR' !important;"><strong style="font-family: 'JeonjuCraftGoR' !important;">결제 예정 금액</strong></li>
							<li class="money" style="font-family: 'JeonjuCraftGoR' !important;"><span style="font-family: 'JeonjuCraftGoR' !important;">60,000</span> 원</li>
						</ul>
					</div>
					<!-- //총 주문금액 -->

					<div class="cartarea">
						<ul>
							<li><a href="#" class="ty1" style="font-family: 'JeonjuCraftGoR' !important;">선택 매장 <span style="font-family: 'JeonjuCraftGoR' !important;">예약하기</span></a></li>
							<li><a href="#" class="ty2" style="font-family: 'JeonjuCraftGoR' !important;">전체 매장 <span style="font-family: 'JeonjuCraftGoR' !important;">예약하기</span></a></li>
							<li class="last" style="font-family: 'JeonjuCraftGoR' !important;"><a href="#" class="ty3">다른 매장 <span style="font-family: 'JeonjuCraftGoR' !important;">둘러보기</span></a></li>
						</ul>
					</div>

				<!-- //장바구니에 상품이 있을경우 -->


				<!-- 장바구니에 상품이 없을경우
					<div class="noting">
						<div class="point"><span class="orange">장바구니</span>에 담긴 상품이 없습니다.</div>

						<p>장바구니에 담긴 상품은 30일간만 보관됩니다.<br/>더 오래 보관하고 싶은 상품은 <u>위시리스트</u>에 담아주세요.</p>

						<a href="#">쇼핑 계속하기</a>
					</div>
				 //장바구니에 상품이 없을경우 -->

				</div>
			</div>
			<!-- //contents -->


<script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<style type="text/css">
.ui-corner-all{border-bottom-right-radius:0 !important; border-bottom-left-radius:0 !important; border-top-left-radius:0 !important; border-top-right-radius:0 !important;}
.ui-widget-content{border:0;}
.ui-spinner-input{width:44px; margin:0; border:1px #ddd solid; padding:2px 0 2px 5px; font-family:'Nanum Gothic' !important; font-size:12px !important;}
</style>

<script type="text/javascript">
$(function() {
	var spinner = $( ".spinner" ).spinner({ min: 1, max: 999 });
});
</script>



		</div>
	</div>
	<!-- //container -->



<!--footer start-->
	<div style="width:100%; height:100%; margin-top:70px;">
	<iframe src="footer_지원.jsp" frameborder="0" scrolling="no" width="100%" height="500px" style="margin:auto;"></iframe>
  	</div>
<!--footer end-->




</div>
</div>
</body>
</html>