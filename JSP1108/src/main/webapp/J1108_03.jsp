<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>employees</title>
		<style>
			*{margin:0; padding:0;}
			div{width:1400px; margin:30px auto;}
			h1{text-align:center; margin-bottom:20px;}
			table,th,td{border:2px solid yellowgreen; border-collapse:collapse;
			font-size:16px; text-align:center;}
			th,td{width:200px; height:40px;}
		</style>
	</head>
	<body>
		<div>
		<h1>직원정보</h1>
		<table>
			<tr>
				<th>사원번호</th>
				<th>사원명</th>
				<th>월급</th>
				<th>연봉</th>
				<th>부서번호</th>
				<th>부서명</th>
				<th>입사일</th>
			</tr>
			<%
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			String emp_name,department_name,department_id,year_salary,hire_date;
			int employee_id,salary;
			int i=0;
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1111");
				stmt = conn.createStatement();
				String query = "select employee_id,emp_name,salary,to_char(salary*12+(salary*12*nvl(commission_pct,0)),'L999,999,999' ) as year_salary, nvl(to_char(a.department_id),'CEO') department_id,nvl(department_name,'CEO') department_name,hire_date from employees a,departments b where a.department_id = b.department_id(+) order by employee_id";
				rs = stmt.executeQuery(query);
				while(rs.next()){
					  i++;	
					  employee_id = rs.getInt("employee_id");
		        	  emp_name = rs.getString("emp_name");
		        	  salary = rs.getInt("salary");
		        	  year_salary = rs.getString("year_salary");
		        	  department_id = rs.getString("department_id");
		        	  department_name = rs.getString("department_name");
		        	  hire_date = rs.getDate("hire_date")+"";
			%>
			<tr>
				<td><%=employee_id%></td>
				<td><%=emp_name%></td>
				<td><%=salary%></td>
				<td><%=year_salary%></td>
				<td><%=department_id%></td>
				<td><%=department_name%></td>
				<td><%=hire_date%></td>
			</tr>
			<%
				}
				}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(conn!=null) conn.close();
					if(stmt!=null) stmt.close();
					if(rs!=null) rs.close();
				}catch(Exception e2){e2.printStackTrace();}
			}//	
			%>
		  </table>
		</div>
	</body>
</html>