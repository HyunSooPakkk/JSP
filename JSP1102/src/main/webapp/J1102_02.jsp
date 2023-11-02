<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP Scriptlet</title>
		<style>
			table{width:400px; margin:50 auto;}
			th,td{width:80px; height:30px;}
			table,th,td{text-align: center;
			border:3px solid yellowgreen; border-collapse: collapse;}
		</style>
	</head>
	<body>
	<table>
		<tr>
			<th>단</th>
			<th>*</th>
			<th>숫자</th>
			<th>=</th>
			<th>정답</th>
		</tr>
		<%
		for(int i=2;i<10;i++){
			for(int j=1;j<10;j++){
		%>
		
		
		<tr>
			<td><% out.println(i);%></td>
			<td>*</td>
			<td><% out.println(j);%></td>
			<td>=</td>
			<td><% out.println(i*j);%></td>
		</tr>
		<% 
			}
		}
	
		%>
	</table>
	
	
	</body>
</html>