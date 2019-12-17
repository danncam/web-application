<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
         <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
         <title>Registrar Novo</title>
         <jsp:include page="header.html"></jsp:include>
    </head>
	
    <body>
            <form class="loginform" action="${pageContext.request.contextPath}/LoginServlet" method="post">
            	<p>Usuلrio: <input type="text" name="un" value = "${user.username}"/></p>
            	<p>Nome: <input type="text" name="nm"/></p>
            	<p>Data de Nascimento: <input type="date" name="bd"/></p>
				<p>Senha: <input type="password" name="pw"/></p><br>
				<input type="hidden" >
				<input type="submit" value="Registrar"></input>
            </form>
    </body>
	
</html>