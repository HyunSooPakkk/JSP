<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title> 공지사항 리스트 </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset3.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content3.css?v=Y" />
 <script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
     $(function(){
    	$(".sbtnMini").click(function(){
    		if($(".wlong").val()==""){
    			alert("제목을 입력하세요.");
    			$(".wlong").focus();
    			return false;
    		}
    		WriteFrm.submit();
    		
    	}); 
     });
     </script>
<div style="width:100%">
<iframe src="../html/header.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:200px;"></iframe>
</div>
			<!-- contents -->
			<div id="contents">
				<div id="mypage">
					<h2><strong>유저게시판</strong><span>삼식세끼 유저님들의 소중한 후기입니다.</span></h2>
					
					<div class="productTab normaltab">
						<ul>
							<li class="last"><a href="#" class="on">유저게시판</a></li>
							
						</ul>						
					</div>

					<div class="checkDivTab">
						<table summary="분류, 구매여부, 평가, 제목, 상세 내용 순으로 상품평을 작성 하실수 있습니다." class="checkTable" border="1" cellspacing="0">
							<caption>게시글 작성</caption>
							
							<colgroup>
							<col width="19%" class="tw30" />
							<col width="*" />
							</colgroup>
							<tbody>
								
								<!-- 노출부분 삭제 -->
							<form name="WriteFrm" action="bWrite.do" method="post" enctype="multipart/form-data">
								<tr>
									<th scope="row"><span>제목</span></th>
									<td>
										<input type="text" class="wlong" name="title" />
									</td>
								</tr>
								<tr>
									<th scope="row"><span>상세 내용</span></th>
									<td>
										<textarea class="tta" name="bcontent"></textarea>
									</td>
								</tr>								
								<tr>
									<th scope="row"><span>사진첨부</span></th>
									<td>
										<input type="file" name="filename" >
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<!-- Btn Area -->
					<div class="btnArea">
						<div class="bCenter">
							<ul>																
								<li><a href="#" class="sbtnMini" >확인</a></li>
								<li><a href="teamBoard.do" class="nbtnbig">취소</a></li>
							</ul>
						</div>
					</div>
					</form>
					<!-- //Btn Area -->
				</div>
			</div>
			<!-- //contents -->
<div>
<iframe src="../html/footer.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:300px; padding-top:30px;"></iframe>
</div>
</body>
</html>