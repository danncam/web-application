<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Cadastrar novo funcionário</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/united/bootstrap.min.css">
		
		
		<script>
		$(function funcalert() {
			messages: {
				name:{required: "Informe o nome", name: "Campo nome em branco."}
			},
			errorLabelContainer: $("#mensagens"),
			errorElement: "form"
		});
		</script>
 
		
	</head>
	<body>
	
	<div class = "container">
	
		<h1>Cadastrar novo funcionário</h1>
		<hr/>
		
		<div class = "row">
			<div class = "col-md-4">
				<form action = "${pageContext.request.contextPath}/Controller" method="POST">
				
					<div class = "form-group">
						<input type = "text" class = "form-control" name = "name" placeholder = "Nome" value = "${employee.name}"/>
					</div>
				
					<div class = "form-group">
						<input type = "date" class = "form-control" name = "dob" value = "${employee.dob}"/>
					</div>
				
					<div class="form-group">
					  	<input type = "text" class = "form-control" name = "department" placeholder = "Departamento" value = "${employee.department}"/>
					</div>
				
					<input type = "hidden" name = "id" value = "${employee.id}"/>
				
					<button type = "submit" class = "btn btn-primary">Salvar</button>
				</form>
			</div>
		</div>
		<a href = "${pageContext.request.contextPath}/Controller?action=LIST">Voltar para a lista</a>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>