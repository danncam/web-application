<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Siga Carreira</title>
		<link href="res/style.css" rel="stylesheet" type="text/css" media="all">
	</head>
	
	<body>
        <!--Top content-->
        <header class="top-container">
            <img src="res/logo.png">
            <img src="res/name.png">
        </header>
        
        <!--Menu navigation-->
        <nav class="sticky">
            <ul>
                <li><a href="${pageContext.request.contextPath}/home.jsp">HOME</a></li>
                <li><a href="info.html">INFORMAÇÕES</a></li>
                <li><a href="form.html">CURRÍCULO</a></li>
                <li><a href="${pageContext.request.contextPath}/idform.jsp">LOGIN</a></li>
            </ul>
        </nav> 
        
		<form action="Controller" method="post">
			<p>Usuário: <input type="text" name="lusr"/></p>
			<p>Senha: <input type="password" name="lpsw"/></p><br>
			<input type="submit" value="submit"/>
				
		</form>
	</body>
</html>