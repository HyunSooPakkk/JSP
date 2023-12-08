<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

<script>

	if(${session_id==null})
	{
		alert("로그인 후 서비스를 이용할 수 있습니다.");	
		location.href="main.do";
		
	}

</script>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <title>Document</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">

<style>

*{margin: 0 auto;}
section {
    margin: auto;
    width:800px;
}
h1{
font-size: 32px;
margin: 0;
text-align: center;
color:orange;
}

select{
padding: 5px 0px 5px 10px;

}

input {
    height: 30px;
    font-size: 16px;
}

select, input, textarea {
    width: 100%;
    border: 2px solid #ccc;
}

th {
    font-weight: normal;
    font-size: 20px;
}
tr {
    height: 50px;
}
table {
    width: 100%;
}

.write {
    color: white;
    background: orange;
    border: none;
    margin-right: 15px;
    float:left;
}

button {
    width: 130px;
    height: 45px;
    font-size: 18px;
}
.btn {
    width: 130px;
    height: 45px;
    font-size: 18px;
}
.cancel {
    color: black;
    background: white;
    border: 2px solid orange;
    float:left;
    margin-left:30px;
}

hr {
    border: 3px solid #ff7100;
    margin-bottom: 30px;
    margin-top:30px;
}
.button-wrapper {
    padding-top: 20px;
    width: 350px;
    margin: auto;
}

table>button{
width:220px;
height:36px;
float:right;

}

.modal{
 position:fixed;
 display:none;
 justify-content: center;
 top:0;
 left:0;
 width:100%;
 height:100%;
 background-color: rgba(0,0,0,0.4);
 z-index: 2000;
}

.modal_body{
 position:relative;
top:50%;

 width:500px;  
 height:300px; 


 text-align: center;

 background-color: rgb(255,255,255); /
 border-radius:10px; 
 box-shadow:0 2px 3px 0 rgba(34,36,38,0.15); 

 transform:translateY(-50%); 
}

.file_hidden
{
display: none;
}
</style>
</head>
<body >

<script>
var filefunc ;

$(function(){
	
	$(".cancel").click(function(){
		history.back();
	});
	
	$("#addressBtn").click(function(){

		new daum.Postcode({
	        oncomplete: function(data) {
	        	 var roadAddr = data.roadAddress; // 도로명 주소 변수
	     		$("#address").val(roadAddr);
	        }
	    }).open();
        
	});
	
	 $("#btnFoldWrap").click(function(){
		 $("#wrap").css("display","none");	
	 });
	
	 
    var filecount=1;
    
    $(".addfile").click(function(){
    	var fhtml = '<input type="file" name="file'+filecount+'" id="file" class="files" accept="image/*" >'
    	$(".multifile").append(fhtml);
    	var list =$(".fileList").text();
    	list += file["name"]+"\n";
    	$(".fileList").text(list);
    	
    	if(filecount>10)
    	{
    		alert("파일을 더 이상 추가할 수 없습니다.");
    		return false;
    	}
    	filecount++;
    })
/*
    
    $(".files").on("change",function(e){
    	alert("FileChange");
    	var file = e.target.files[0];
    	console.log(e.target);
    	console.log(file["name"]);
    	
    	var fhtml = '<input type="file" name="file'+filecount+'" id="file" class="files" accept="image/*" >'

    	$(".multifile").append(fhtml);
    	var list =$(".fileList").text();
    	list += file["name"]+"\n";
    	$(".fileList").text(list);
    	
    	filecount++;
    	
    	if(filecount>10)
    	{
    		alert("파일을 더 이상 추가할 수 없습니다.");
    		return false;
    	}
    })
    */
    /*
     function addFileBtn()
    {
    
    	console.log($("#file").get(0).files[1]);
    	var fhtml = '<input type="file" name="file'+filecount+'" id="file" onchange="calladdfile()" accept="image/* style="display:none" >'
    	$(".multifile").append(fhtml);
    	filecount++;
    	
    	if(filecount>10)
    	{
    		alert("파일을 더 이상 추가할 수 없습니다.");
    		return false;
    	}
    	
    }*/
     

/* 	new daum.Postcode({
        oncomplete: function(data) {

                
        }
    }).open(); */
    

})



</script>

<div style="width:100%">
<iframe target="_top" src="./html/header.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:200px;" ></iframe>
</div> 


  <section>
  
    <h1>가게등록</h1>
    <hr>

    <form action="StoreRegist.do" name="write" method="post" enctype="multipart/form-data">
      <table>
        <colgroup>
          <col width="15%">
          <col width="85%">
        </colgroup>
        <tr>
          <th>매장명</th>
          <td>
            <input type="text" name="storename">
          </td>
        </tr>
         <tr>
          <th>카테고리</th>
          <td>
            <select name="catetoryId" id="catetoryId">
			    <option value="1">한식</option>
			    <option value="2">일식</option>
			    <option value="3">중식</option>
			    <option value="4">양식</option>
			    <option value="5">패스트푸드</option>
  			</select>
          </td>
        </tr>
         <tr>
          <th>전화번호</th>
          <td>
            <input type="text" name="phone">
          </td>
        </tr>
        <tr>
          <th>주소</th>
          <td>
            <input type="text" name="address" id="address"> <input type="button" class="btn" id="addressBtn" value="주소검색">
          </td>
        </tr>
        <tr>
          <th>메뉴</th>
          <td>
            <input type="text" name="menu"><input type="file" name="menuFile" accept="image/*">
          </td>
        </tr>
        <tr>
          <th>영업시간</th>
          <td>
            <input type="text" name="openTime">
          </td>
        </tr>
        <tr>
          <th>웹사이트</th>
          <td>
            <input type="text" name="site">
          </td>
        </tr>
        <tr>
          <th>소개</th>
          <td>
            <textarea name="content" cols="50" rows="10"></textarea>
          </td>
        </tr>
        <tr>
          <th>오픈일</th>
          <td>
            <input type="text" name="opendate">
          </td>
        </tr>
         <tr>
          <th>태그</th>
          <td>
            <input type="text" name="tags" placeholder="태그는 쉼표(,)로 구분해주세요">
          </td>
        </tr>
        <tr >
          <th>사진등록</th>
          <td class="multifile">
          <input type="button" class="addfile" value="추가">
            <input type="file" name="file" id="file"  class="files" accept="image/*" >
          </td>
        </tr>
      </table>
      <hr>
      <div class="button-wrapper">
        <button type="submit" class="write">작성완료</button>
        <button type="button" class="cancel">취소</button>
      </div>
    </form>

  </section>
  
  
<div id="wrap" class="modal">
	<div id="modal_body" class="modal_body"> 
	<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1"  alt="닫기 버튼">
	</div>
</div>



<div>
<iframe src="./html/footer.jsp" frameborder="0" scrolling="no"  style="margin:auto; width:100%; height:300px; padding-top:30px;"></iframe>
</div>


<script>

</script>




</body>
</html>