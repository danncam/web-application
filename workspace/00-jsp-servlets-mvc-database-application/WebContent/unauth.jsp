<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"    
      "http://www.w3.org/TR/html4/loose.dtd">

   <html>

      <head>
         <meta http-equiv="Content-Type" 
            content="text/html; charset=windows-1256">
         <title>Invalid Login</title>
      </head>
	
      <body>
         <center>
            Desculpe, você não é um usuário registrado! Por favor, faça login ou cadastre-se!
            <form action="${pageContext.request.contextPath}/LoginServlet" method="post">
            	<p>Usuário: <input type="text" name="un" value = "${user.username}"/></p>
				<p>Senha: <input type="password" name="pw"/></p><br>
				<button type = "submit" >Registrar</button>
            </form>
         </center>
      </body>
	
   </html>