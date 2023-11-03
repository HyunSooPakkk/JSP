<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>표 만들기</title>
	<style>
		table,th,td{border:3px solid gray; border-collapse: collapse; text-align:center;}
		th,td{width:200px; height:40px;}
		.back{background: pink;}
	</style>
	</head>
	<body>
		<table>
			<tr>
				<th>단</th>
				<th>*</th>
				<th>숫자</th>
				<th>=</th>
				<th>결과</th>
			</tr>
			<%for(int i=2;i<=9;i++){
				for(int j=1;j<=9;j++){
					if(j%2==0) continue; //홀수만 출력하고 싶을 때 >> j를 2로 나눠서 나머지가 0이면 continue
			%>
			<tr> <!--3의 배수만 표시한 구구단-->
				<td><%=i%></td>
				<td>*</td>
				<td><%if(j%3==0){%></td>
				<td class="back"><%=j%></td> <!--배경색 있는 것-->
				<td><%}else{%></td>
				<td><%=j%></td> <!--배경색 없는 것-->
				<td>=</td>
				<td><%=i*j%></td>
			</tr>
				
				
			<%}}	
			}%>
		</table>
	</body>
</html>