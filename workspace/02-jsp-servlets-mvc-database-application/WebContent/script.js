/*Funções Java Script para o formulário - com Jquery*/

/*
 * A função LOAD abaixo pode também ser escrita das seguintes formas:
 * 
 * jquery(document).ready(function(){
 *      //faça alguma coisa
 * });
 * ou
 * 
 * $(document).ready(function(){
 *      //faça alguma coisa
 * });
 *
 *  OBS: caracter $ é utilizado como um modo bem curto de dizer jquery.
 *  Ou seja, $("p") é o mesmo que jquery("p").
 *   
 */

/*Comandos que serão executados com a página for carregada*/
$(function() {  	
    
    /*Máscara dos campos com Jquery - biblioteca JQUERY- MASKED INPUT*/ 
    /*$(".data").mask("99/99/9999");
    $("#tel").mask("(99) 9999-9999");
    $("#cpf").mask("999.999.999-99");
    $("#cep").mask("99.999-999");
    $(".sonums").mask("9?9999"); //depois da interrogação é tudo opcional*/

    /*Máscara dos campos com Jquery - biblioteca JQUERYMASK*/ 
    $(".data").mask('00/00/0000');    
    $("#tel").mask('(00) 0000-0000');
    $("#cep").mask('00.000-000');
    $("#cpf").mask('000.000.000-00',{reverse: true});
    //$("#cpf").mask('000.000.000-00');
    $(".sonums").mask('0000');	
       
    /*Jquery UI para exibição de calendário*/
    $("#dtnasc").datepicker({
    	dateFormat: 'dd/mm/yy', /*formato Brasil*/
    	showOn: "button",
        buttonImage: "jquery-ui-1.11.4.custom/images/calendar.gif",
        //buttonImageOnly: true,
        buttonText: "Selecione uma Data"
    });    
        
    /*Regras de validação dos campos do form CLIENTE - biblioteca JQUERY VALIDATION*/
    $("#idform").validate({ //usa o name dos campos do form
        rules: {
            email:{required: true, email:true},
            nome:{required: true, minlength: 4},            
            rbsexo:{required:true},
            cpf:{required: true},
            dtnasc:{required: true, dateBR:true},
            telefone:{required: true},            
            cep:{required:true},
            logradouro:{required:true},
            numero:{required:true},
            complemento:{required:false},
            cidade:{required:true},
            cbouf:{required:true}
        },    
        messages: {
            email:{required: "Informe o email", email:"Email inválido"},
       	    nome:{required: "Informe o nome", 
            minlength:"Informe ao menos 4 caracteres"},                        
            rbsexo:{required: "Informe o sexo"},
            cpf:{required: "Informe o número do CPF"},
            dtnasc:{required: "Informe a data de nascimento", dateBR:"Informe uma data de nascimento válida "},
            telefone:{required: "Informe o telefone"},                        
            cep:{required: "Informe o CEP"},                        
            logradouro:{required: "Informe o logradouro"},
            numero:{required: "Informe o número"},
            cidade:{required: "Informe a cidade"},
            cbouf:{required: "Informe a UF"}
        },
    
        //Monta a mensagem em uma caixa separada
        errorLabelContainer: $("#mensagens"),
        errorElement: "li"
    });
     
    /*Limpar campos de um form quando o usuário clicar no botão Limpar */    
    $(".btlimpar").click(function(){
    	$('form').each (function(){
    		  this.reset();
    	});
    });
        
}); //FUNÇÃO LOAD













