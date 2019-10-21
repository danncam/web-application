<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>Name</th>
			<th>Department</th>
			<th>Date of Birth</th>
		</tr>
		<c:forEach items="${list}" var="employee">
			<tr>
				<td>${employee.name}</td>
				<td>${employee.dept}</td>
				<td>${employee.dob}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>