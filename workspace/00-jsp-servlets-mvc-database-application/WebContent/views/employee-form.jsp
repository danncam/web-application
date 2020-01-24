<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Cadastrar novo funcionário</title>
		<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/united/bootstrap.min.css"> -->
		<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/4.0.2/bootstrap-material-design.min.css" rel="stylesheet" />

		
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
				
					<div class="form-group">
					    <a for="collapseOne" data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="btn btn-primary">+ addInfo</a>
					    <div id="collapseOne" class="collapse">
					        <div class="card card-body">
					    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
					  </div>
					    </div>
					</div>
					  
					</div>
					
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