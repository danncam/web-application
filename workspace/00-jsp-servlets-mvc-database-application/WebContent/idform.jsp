<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
         <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
         <title>Entrar</title>
         <jsp:include page="header.jsp"></jsp:include>
    </head>
	<body>
		<form class="loginform" action="${pageContext.request.contextPath}/LoginServlet" method="get">
			<p>Usuلrio: <input type="text" name="un"/></p>
			<p>Senha: <input type="password" name="pw"/></p><br>
			<input type="submit" value="Entrar"/>
		</form>
		<button onclick="window.location.href = '${pageContext.request.contextPath}/newreg.jsp'">Cadastrar</button>
	</body>
</html>