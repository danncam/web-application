<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	</head>
	
	<body>
	<h1>This is output file</h1>
	
	<!-- Recebendo requests do arquivo Java -->
	<p>Hello, my name is ${name}</p>
	
	<p>Hello, my name is <%
		String fullname = request.getAttribute("name").toString();
		out.println(fullname);
	%></p>
	
	<!-- object -->
	<p>Hello, I'm a student and my name is ${student.name}</p>
	
	<!-- math -->
	<p>The value of 2 * 2 is equal to <%=2*2 %></p>
	<p>The value of 6 > 4 is equal to <%=6>4 %></p>
	
	
	<!-- function -->
	<%!
		int calLength(String str){
			return str.length();
	}
	%>
	
	<p>The len of the string is <%=calLength("blablablabla") %></p>
	
	<c:out value="aprendendo"></c:out>
	<c:set var="i" value="JSP"></c:set>
	<c:out value="${i}"></c:out>
	<c:remove var="i"/>
	<c:out value="${i}"></c:out>
	
	<!-- foreach loop -->
	<c:forEach items="${countries}" var="country">
		<p>Country = ${country}</p>
	</c:forEach>
	
	
	</body>
</html>