<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
         <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
         <title>Login invلlido</title>
         <jsp:include page="header.html"></jsp:include>
    </head>
	
     <body>
         <p>Sorry, you are not a registered user! Please sign up first</p><br>
         <a href = "${pageContext.request.contextPath}/idform.jsp">Back to Login</a>
     </body>
	
</html>