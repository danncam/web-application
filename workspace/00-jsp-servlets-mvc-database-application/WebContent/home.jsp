<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	        <meta charset="utf-8">
	        <link href="res/style.css" rel="stylesheet" type="text/css" media="all">
	        <script src="res/script.js"></script>
	        <title>Siga Carreira</title>
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
	                <li><a href="index.html">HOME</a></li>
	                <li><a href="info.html">INFORMAÇÕES</a></li>
	                <li><a href="form.html">CURRÍCULO</a></li>
	                <li><a href="login.html">LOGIN</a></li>
	            </ul>
	        </nav>
			<form action="${pageContext.request.contextPath}/LoginServlet">
			
						Please enter your username 		
						<input type="text" name="un"/><br>		
					
						Please enter your password
						<input type="text" name="pw"/>
						
						<input type="submit" value="submit">			
					
					</form>
		</body>

</html>