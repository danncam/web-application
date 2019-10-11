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
	<!-- < % request.getAttribute("name");*/%> -->
	<p>Hello, my name is ${name}</p>
	
	<p>Hello, my name is <%
		String fullname = request.getAttribute("name").toString();
		out.println(fullname);
	%></p>
	
	<p>The value of 2 * 2 is equal to <%=2*2 %></p>
	<p>The value of 6 > 4 is equal to <%=6>4 %></p>
	
	<%!
		int calLength(String str){
			return str.length();
	}
	%>
	
	<p>The len of the string is <%=calLength("blablablabla") %></p>
	</body>
</html>