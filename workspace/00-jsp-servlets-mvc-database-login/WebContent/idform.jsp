<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
         <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
         <title>Entrar</title>
         <link rel="stylesheet" href="layout.css" type="text/css"/>
         <jsp:include page="header.html"></jsp:include>
    </head>
	<body>
	<div class="container">
	<div class="row">
	<form class="col-sm-4" action="${pageContext.request.contextPath}/LoginServlet" method="get">
		<fieldset>
	    	<legend>Acesso</legend>

	    	<div class="form-group">
	      		<label for="exampleInputEmail1">Usuلrio</label>
	      		<input type="email" class="form-control" id="exampleInputEmail1" name="un" aria-describedby="emailHelp" placeholder="Username">
	      	<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
	    	</div>
	    	<div class="form-group">
	      		<label for="exampleInputPassword1">Senha</label>
	      		<input type="password" class="form-control" id="exampleInputPassword1" name="pw" placeholder="Password">
	    	</div>
	    
	    	<button type="submit" onclick="window.location.href = '${pageContext.request.contextPath}/newreg.jsp'" class="btn btn-primary">Cadastrar</button>
	  </fieldset>
	</form>
	</div>
	</div>
	</body>
</html>


