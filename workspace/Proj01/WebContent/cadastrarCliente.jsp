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
                <a href="cadastraraluno.html">EspaÃ§o do Aluno</a>
                <a href="#">Contato</a>					
                <a href="#">Como Chegar</a>				
            </div>
            
        </div>
        
        <div id="banner">
        	<img src="img/banner.jpg" alt="Homem levantando peso" />
        </div>
        
	<div id="conteudo">
        <div id="mensagens" class="alert alert-danger" role="alert">
	    </div>
        <form name="formulario" id="idform" action="cadcliente">
        <fieldset>
            <legend>Dados do Aluno</legend>                       
			<div class="row">				
				<div class="form-group col-md-6">					
					<label>Nome:</label> 
					<input class="form-control" type="text" id="nome" name="nome" value="${c.nome}"/>
				</div>
				<div class="form-group col-md-6">
                    <label>Email:</label>
                    <input class="form-control" type="text" id="email" name="email" />
				</div>
			</div>
			<div class="row">			
				<div class="form-group col-md-3">
					<label>CPF:</label>
					<input class="form-control" type="text" id="cpf" name="cpf" />
				</div>
				<div class="form-group col-md-2">	                                
					<label>Telefone:</label>
					<input class="form-control" type="text" id="tel" name="tel" />
				</div>										
                <div class="form-group col-md-2">
					<label>Data de Nasc:</label>
					<input class="form-control" type="text" class="data" id="dtnasc" name="dtnasc" />                        
				</div>
				<div class="form-check col-md-5 form-check-inline">
			    	<label for="inputdefault">Sexo:</label><br>
			        <input type="radio" name="rbsexo" value="M" />Masculino
			        <input type="radio" name="rbsexo" value="F"/>Feminino
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-6">				
                	<label>Logradouro:</label>
                	<input class="form-control" type="text" id="logradouro" name="logradouro" />
				</div>				
				<div class="form-group col-md-3">
                    <label>Número:</label> 
                    <input class="form-control" type="number" id="numero" name="numero" />
				</div>
				<div class="form-group col-md-3">
                    <label>CEP:</label>
                    <input class="form-control" type="text" id="cep" name="cep"/>				
				</div>
			</div>
			<div class="row">				
				<div class="form-group col-md-6">                            	
					<label>Complemento:</label>
					<input class="form-control" type="text" id="complemento" name="complemento" />
				</div>
				<div class="form-group col-md-3">
                    <label>Cidade:</label>
                    <input class="form-control" type="text" id="cidade" name="cidade" /> 
				</div>
				<div class="form-group col-md-3">
		            <label>UF:</label>
		                <select id="cbouf" name="cbouf" name="uf" class="form-control">
		                     <option value="">  </option>
		                     <option value="rj">RJ</option>
		                     <option value="mg">MG</option>
		                     <option value="sp">SP</option>
		                     <option value="sc">SC</option>
		                     <option value="rs">RS</option>
		                </select>    
				</div>
			</div> 			
			<div class="row">				                      
     			<div class="form-group col-md-3">
                    <label>Observações:</label>
                    <textarea id="obs" name="obs" rows="5" cols="30"></textarea>       
                </div>                         
			</div>                

                        <button class="btn btn-primary" type="submit" id="btnenviar">Enviar</button>                        
			<button class="btn btn-default" type="reset" id="btnlimpar">Limpar</button>

                </fieldset>
            </form>
            
        </div>       
    	<div id="rodape">
		<p>Copyright: Â© 2019 - AplicaÃ§Ãµes na Internet</p>
        </div>
    </div>

</body>
</html>
