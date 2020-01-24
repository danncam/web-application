<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
         <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
         <title>Entrar</title>
         
         <jsp:include page="header.html"></jsp:include>
    </head>
	<body>
	<div class="container">
	<div class="row">
	<form class="col-sm-4" action="${pageContext.request.contextPath}/LoginServlet" method="get">
		<fieldset>
	    	<legend>Acesso</legend>

			<div class="form-group">
			  	<label class="col-form-label" for="inputDefault">Usuلrio</label>
			  	<input type="text" class="form-control" id="inputDefault" name="un">
			</div>
	    	<div class="form-group">
	      		<label for="exampleInputPassword1">Senha</label>
	      		<input type="password" class="form-control" id="exampleInputPassword1" name="pw">
	    	</div>
	    
	    	<button type="submit" class="btn btn-primary">Acessar</button>
	  </fieldset>
	</form>
	</div>
	</div>
	</body>
</html>
<!-- onclick="window.location.href = '${pageContext.request.contextPath}/newreg.jsp'" -->

