<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ACADEMIA ELLOS</title> 

	<!-- LINK PARA O ARQUIVO DE ESTILOS -->
	<link rel="stylesheet" href="estilo.css" type="text/css" />

	<!-- LINK PARA A BIBLIOTECA JQUERY -->	
	<script src="jquery-2.1.4.min.js" type="text/javascript"></script>
	
	<!--LINK PARA O JQUERY MASKED INPUT -->
	<!--<script src="jquery-maskedinput/src/jquery.maskedinput.js" type="text/javascript"></script>-->
	
	<!--LINK PARA O JQUERYMASK -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.js"></script>
    
    	<!--LINK PARA O JQUERY VALIDATION -->
	<script src="jquery-validation/jquery.validate.js" type="text/javascript"></script>
    
        <!--LINK PARA O JQUERY MASK MONEY -->
        <script src="jquery-maskmoney/jquery.maskmoney.js" type="text/javascript"></script>
    
        <!--LINK PARA O JQUERY-UI - CALENDÃRIO - Fonte: https://jqueryui.com/ -->    
        <link rel="stylesheet" href="../js/jquery-ui-1.11.4.custom/jquery-ui.css">
        <script src="jquery-ui-1.11.4.custom/jquery-ui.min.js" type="text/javascript"></script>
  	    <script src="jquery-ui-1.11.4.custom/jquery-ui.js" type="text/javascript"></script>

	<!--LINK PARA O BOOTSTRAP-->
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
  
	
	<!-- LINK PARA O ARQUIVO JAVA SCRIPT DO PROJETO -->
	<script src="script.js"></script>
</head>

<body>
    <div id="container">
        <div id="topo">
        	
            <div id="logo">
            	<a href="index.html">				
                <img src="img/logo.png" alt="logotipo" />
                </a>
            </div>
        
            <div id="menu">
            	<a href="#">Home</a> 			
                <a href="#">Quem Somos</a>	
                <a href="#">HorÃ¡rios</a>	
                <a href="#">Galeria</a>		
                <a href="cadastraraluno.html">Espaço do Aluno</a>
                <a href="#">Contato</a>					
                <a href="#">Como Chegar</a>				
            </div>
            
        </div>
        
        <div id="banner">
        	<img src="img/banner.jpg" alt="Homem levantando peso" />
        </div>
        
	<div id="conteudo">
        <hr>
			<div id="mensagens">
				${msg }	
			</div>
		<hr>

		<h3 class="page-header">BUSCAR CLIENTE</h3>
	
		<div class="well">
			<form action="conscliente" method="get">
				<div class="form-group">
					Informe o CPF do usuário:
					<input type="text" name="cpf" value="${cpf}" class="form-control"> 
				</div>
				<input type="submit" value="BUSCAR" class="btn btn-info">
			</form>
		</div>
    </div>

</body>
</html>

