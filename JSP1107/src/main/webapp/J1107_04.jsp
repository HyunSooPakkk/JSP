<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>학생성적프로그램</title>
		<style>
			table,td{border:2px solid yellowgreen; border-collapse: collapse;
			font-size:16px; text-align:center;}
			td{width:150px; height:40px;}
		</style>
	</head>
	<body>
	
	<%
	request.setCharacterEncoding("UTF-8");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	int total = kor+eng+math;
	double avg = total/3.0;
	%>
	
		<h1>학생성적프로그램</h1>
		<table>
			<tr>
				<td>학번</td>
				<td><%=request.getParameter("stuNum")%></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=request.getParameter("name")%></td>
			</tr>
			<tr>
				<td>국어</td>
				<td><%=request.getParameter("kor")%></td>
			</tr>
			<tr>
				<td>영어</td>
				<td><%=request.getParameter("eng")%></td>
			</tr>
			<tr>
				<td>수학</td>
				<td><%=request.getParameter("math")%></td>
			</tr>
			<tr>
				<td>합계</td>
				<td><%=request.getParameter("total")%></td>
			</tr>
			<tr>
				<td>평균</td>
				<td><%=request.getParameter("avg")%></td>
			</tr>
		</table>
	</body>
</html>