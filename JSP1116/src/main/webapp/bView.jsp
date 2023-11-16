<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<title>게시글 보기</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<style>
		   *{margin:0; padding:0;}
		   div{width:1000px; margin:30px auto; text-align:center;}
		   h1{margin-bottom:30px;}
		   table{width:100%;}
		   table,th,td{border:2px solid yellowgreen; border-collapse: collapse;
		   font-size: 16px;}
		   th{height:40px;}
		   img{width:20%;}
		   button{width:150px; height:40px; margin-top:30px;}
		</style>
	</head>
	<body>
	  <div>
	   <h1><i class="fa fa-address-card" aria-hidden="true"></i> 회원정보 보기 <i class="fa fa-address-card" aria-hidden="true"></i></h1>
		   <table>
		   <colgroup>
		   <col width="20%">
		   <col width="80%">
		   </colgroup>
		     <tr>
		       <th><i class="fa fa-list-ol" aria-hidden="true"></i> 번호</th>
		       <td>${bdto.bno}</td>
		     </tr>
		     <tr>
		       <th><i class="fa fa-user" aria-hidden="true"></i> 작성자</th>
		       <td>${bdto.id}</td>
		     </tr>
		      <tr>
		       <th><i class="fa fa-calendar" aria-hidden="true"></i> 날짜</th>
		       <td><fmt:formatDate value="${bdto.bdate}" pattern="yyyy-MM-dd"/></td>
		     </tr>
		     <tr>
		       <th><i class="fa fa-pencil" aria-hidden="true"></i> 제목</th>
		       <td>${bdto.btitle}</td>
		     </tr>
		     <tr>
		       <th><i class="fa fa-comments-o" aria-hidden="true"></i> 내용</th>
		       <td>${bdto.bcont}</td>
		     </tr>
		     <tr>
		       <th><i class="fa fa-picture-o" aria-hidden="true"></i> 이미지</th>
		       <td>
		       <c:if test="${bdto.bfile != null}">
		       	<img src="upload/${bdto.bfile}">
		       </c:if>
		       <c:if test="${bdto.bfile == null}">
		       </c:if>
		       <i class="fa fa-ban" aria-hidden="true"></i>
		        첨부파일 없음
		       </td>
		     </tr>
		   </table>
		   <a href="bUpdate.do?bno=${bdto.bno}"><button type="button" id="fbtn">게시글 수정</button></a>
		   <a href="bDelete.do"><button type="button" id="fbtn">게시글 삭제</button></a>
		   <a href="bList.do"><button type="button">게시글 리스트</button></a>
	  </div>
	</body>
</html>