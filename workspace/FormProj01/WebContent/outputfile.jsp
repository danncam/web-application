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
	<p>Hello, my name is <%request.getAttribute("fname");%></p>
	
</body>
</html>