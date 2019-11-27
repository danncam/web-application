<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		<link href="res/style.css" rel="stylesheet" type="text/css" media="all">
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
        
        
	<div class = "container">
	
		<h1>Digite seus dados</h1>
		<hr/>
		
		<div class = "row">
			<div class = "col-md-4">
				<form action = "${pageContext.request.contextPath}/Controller" method="POST">
				
					<div class = "form-group">
						<input type = "text" class = "form-control" name = "name" placeholder = "Enter Name" value = "${employee.name}"/>
					</div>
				
					<div class = "form-group">
						<input type = "date" class = "form-control" name = "dob" value = "${employee.dob}"/>
					</div>
				
					<div class="form-group">
					  	<input type = "text" class = "form-control" name = "department" placeholder = "Enter Department" value = "${employee.department}"/>
					</div>
				
					<input type = "hidden" name = "id" value = "${employee.id}"/>
				
					<button type = "submit" class = "btn btn-primary">Save</button>
				</form>
			</div>
		</div>
		<a href = "${pageContext.request.contextPath}/Controller?action=LIST">Back to List</a>
	</div>
	</body>
</html>