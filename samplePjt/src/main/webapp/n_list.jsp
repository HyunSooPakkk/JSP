<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <title>공지사항 게시판</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/notice_list.css">
  <script>
     $(function(){
    	$(".write").click(function(){
    		if("${session_id}"==""){
    			alert("로그인을 하셔야 글쓰기가 가능합니다. 로그인을 해주세요.");
    			return false;
    		}
    		location.href="n_insert.do";
    	});
    	
    	$("#sBtn").click(function(){
    		if($("#sword").val()==""){
    			alert("검색어를 입력하셔야 됩니다.");
    			$("#sword").focus();
    			return false;
    		}
    		searchFrm.submit();
    	});
    	
     });
  </script>
  <style>
     .txtOn{background:#202020; color:white; font-weight: 700; }
  </style>
</head>
<body>
  <%@include file="top.jsp" %>

  <section>
    <h1>NOTICE</h1>
    <div class="wrapper">
      <form action="n_list.do" name="searchFrm" method="post">
        <select name="category" id="category">
          <option value="all">전체</option>
          <option value="btitle">제목</option>
          <option value="bcontent">내용</option>
        </select>

        <div class="title">
          <input type="text" name="sword" id="sword" size="16">
        </div>
  
        <button type="button" id="sBtn"><i class="fas fa-search"></i></button>
      </form>
    </div>

    <table class="listColor">
      <colgroup>
        <col width="12%">
        <col width="45%">
        <col width="15%">
        <col width="15%">
        <col width="13%">
      </colgroup>
      <tr>
        <th>No.</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
        <th>조회수</th>
      </tr>
      <!-- 반복시작 -->
      <c:forEach items="${list}" var="bdto">
      <tr>
        <td>${bdto.bno}</td>
        <td class="table-title">
          <c:forEach var="c" begin="1" end="${bdto.bindent}" step="1" >▶</c:forEach>
          <a href="n_view.do?page=${page}&bno=${bdto.bno}&category=${category}&sword=${sword}">${bdto.btitle}</a>
        </td>
        <td>${bdto.id }</td>
        <td><fmt:formatDate value="${bdto.bdate}" pattern="yyyy-MM-dd"/></td>
        <td>${bdto.bhit }</td>
      </tr>
      </c:forEach>
      <!-- 반복끝 -->
      
    </table>

    <ul class="page-num">
      <a href="n_list.do?page=1&category=${category}&sword=${sword}"><li class="first"></li></a>
      <c:if test="${page>1}">
        <a href="n_list.do?page=${page-1}&category=${category}&sword=${sword}"><li class="prev"></li></a>
      </c:if>
      <c:if test="${page<=1}">
        <li class="prev"></li>
      </c:if>
      <c:forEach var="n" begin="${startPage}" end="${endPage}" step="1">
        <c:if test="${page==n}">
          <li class="num txtOn">
           <div> ${n}</div>
          </li>
        </c:if>
        <c:if test="${page!=n}">
           <li class="num">
             <a href="n_list.do?page=${n}&category=${category}&sword=${sword}"><div>${n}</div></a>
           </li>
        </c:if>
      </c:forEach>
      <c:if test="${page<maxPage }">
        <a href="n_list.do?page=${page+1}&category=${category}&sword=${sword}"><li class="next"></li></a>
      </c:if>
      <c:if test="${page>=maxPage }">
        <li class="next"></li>
      </c:if>
      <a href="n_list.do?page=${maxPage}&category=${category}&sword=${sword}"><li class="last"></li></a>
    </ul>

    <div class="write">쓰기</div>
  </section>

  <footer>
    <div class="wrapper">
      <div class="footer-left">
        <div class="footer-logo"></div>
        <div class="copyright">© COOKIT ALL RIGHTS RESERVED</div>
      </div>
  
      <div class="footer-center">
        <ul class="footer-nav">
          <li class="first-list">이용약관</li>
          <li class="green">개인정보처리 방침</li>
          <li>법적고지</li>
          <li>사업자정보 확인</li>
        </ul>
  
        <ul class="footer-info">
          <li class="first-list">씨제이제일제당(주)</li>
          <li>대표이사 : 손경식,강신호,신현재</li>
          <li>사업자등록번호 : 104-86-09535</li>
          <li class="first-list">주소 : 서울 중구 동호로 330 CJ제일제당 센터 (우) 04560</li>
          <li>통신판매업신고 중구 제 07767호</li>
          <li class="first-list">개인정보보호책임자 : 조영민</li>
          <li>이메일 : cjon@cj.net</li>
          <li>호스팅제공자 : CJ올리브네트웍스㈜</li>
        </ul>
  
        <div id="check">고객님은 안전거래를 위해 현금등으로 결제시 LG U+ 전자 결제의 매매보호(에스크로) 서비스를 이용하실 수 있습니다. <span class="check">가입 사실 확인</span></div>
      </div>
  
      <div class="footer-right">
        <div id="shortcut">
          <span>CJ그룹계열사 바로가기</span>
          <div class="shortcut"></div>
        </div>
  
        <div class="call">고객행복센터 1668-1920</div>
        <div class="inquery">1:1 문의</div>
      </div>
  
    </div>
  </footer>
</body>
</html>