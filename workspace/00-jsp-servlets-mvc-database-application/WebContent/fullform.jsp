<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
         <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
         <title>Currيculo</title>
         <jsp:include page="header.jsp"></jsp:include>
    </head>
        <section class="curriculumcontainer">
            
        <form action="submit.html" method="post">
            
        <!--INFORMAاص•ES PESSOAIS-->

        <fieldset>
            <legend>Informaçُes Pessoais&nbsp;</legend>

            <!--Nome completo-->
            <div class="simpleform">
                <label for="name">Nome Completo&nbsp;</label>
                <span><input placeholder="campo obrigatَrio" id="name" name="nome" type="text" autofocus="true" required></span>
            </div>

            <!--Data de nascimento-->
            <div class="simpleform">
                <label for="bdate">Data de nascimento&nbsp;</label>
                <span class="validity"><input placeholder="dd/mm/aaaa" id="bdate" type="date" required></span>
            </div>

            <!--Gأھnero-->
            <div class="simpleform">
                <label for="inputgroup">Gênero&nbsp;</label>
                <input id="inputgroup" type="radio" name="gender" value="male"> Masculino
                <input id="inputgroup" type="radio" name="gender" value="female"> Feminimo
                <input id="inputgroup" type="radio" name="gender" value="other"> Outro
            </div>

            <!--Estado civil-->
            <div class="simpleform">
                <label for="selectdata">Estado Civil&nbsp;</label>
                <select id="selectdata">
                    <option value=""></option>
                    <option value="1">Solteiro(a)</option>
                    <option value="2">Casado(a)</option>
                    <option value="3">Separado(a)</option>
                    <option value="4">Divorciado(a)</option>
                    <option value="5">Viuvo(a)</option>
                </select>
            </div>

            <!--Filhos-->                    
            <div class="simpleform">
                <label for="inputgroup">Possui filhos?&nbsp;</label>
                <input id="inputgroup" type="radio" name="children" value="0"> Nمo
                <input id="inputgroup" type="radio" name="children" value="1"> Sim
            </div>

            <!--Nacionalidade-->
            <div class="simpleform">
                <label for="country">Paيs de nacionalidade&nbsp;</label>
                <span><input id="country" name="country" type="text" required></span>
            </div>

            <!--Documento-->
            <div class="simpleform">
                <label for="document">Documento&nbsp;</label>
                <span><input placeholder="CPF" id="simpleform" name="document" type="text" required>&nbsp;<a href="#">Estrangeiro</a></span>
            </div>

        </fieldset>

        <!--ENDEREأ‡O-->

        <fieldset>

            <legend>Endereço atual&nbsp;</legend>

            <!--Paيs-->
            <div class="simpleform">
                <label for="country">Paيs de nacionalidade&nbsp;</label>
                <span><input id="country" name="country" type="text" required></span>
            </div>

            <!--CEP-->
            <div class="simpleform">
                <label for="zipcode">CEP&nbsp;</label>
                <input id="zipcode" placeholder="xx.xxx-xxx" type="text"&nbsp; required>
                   <a class="forget-cep" href="http://www.buscacep.correios.com.br/" target="_blank" rel="noopener noreferrer">Esqueci meu CEP</a></div>

            <!--Estado-->
            <div class="simpleform">
                <label for="uf">Estado&nbsp;</label>
                    <select id="uf"><option value=""></option>
                        <option value="1">Acre</option>
                        <option value="2">Alagoas</option>
                        <option value="4">Amapل</option>
                        <option value="3">Amazonas</option>
                        <option value="5">Bahia</option>
                        <option value="6">Cearل</option>
                        <option value="7">Distrito Federal</option>
                        <option value="8">Espيrito Santo</option>
                        <option value="9">Goias</option>
                        <option value="10">Maranhمo</option>
                        <option value="13">Mato Grosso</option>
                        <option value="12">Mato Grosso do Sul</option>
                        <option value="11">Minas Gerais</option>
                        <option value="14">Parل</option>
                        <option value="15">Paraيba</option>
                        <option value="18">Paranل</option>
                        <option value="16">Pernambuco</option>
                        <option value="17">Piauي</option>
                        <option value="19">Rio de Janeiro</option>
                        <option value="20">Rio Grande do Norte</option>
                        <option value="23">Rio Grande do Sul</option>
                        <option value="21">Rondônia</option>
                        <option value="22">Roraima</option>
                        <option value="24">Santa Catarina</option>
                        <option value="26">Sمo Paulo</option>
                        <option value="25">Sergipe</option>
                        <option value="27">Tocantins</option>
                </select>
            </div>

            <!--Cidade-->
            <div class="simpleform">
                <label for="city">Cidade&nbsp;</label>
                <span><input id="city" name="city" type="text" required></span>
            </div>

            <!--Bairro-->
            <div class="simpleform">
                <label for="district">Bairro&nbsp;</label>
                <input id="district" placeholder="--" type="text">
            </div>

            <!--Rua-->
            <div class="simpleform">
                <label for="streetname">Endereço&nbsp;</label>
                <input id="streetname" placeholder="--" type="text">
            </div>

        </fieldset>


        <!--CONTATO-->

        <fieldset>
            <legend>Informaçُes de contato&nbsp;</legend>

            <!--Email-->
            <div class="simpleform">
                <label for="email">E-mail&nbsp;</label>
                <input id="email" placeholder="--" type="text" required>
            </div>

            <!--Celular-->
            <div class="simpleform">
                <label for="cell">Celular&nbsp;</label>
                <input id="cell" placeholder="(xx) x-xxxx-xxxx" type="text">
            </div>

            <!--Telefone-->
            <div class="simpleform">
                <label for="tel">Telefone&nbsp;</label>
                <input id="tel" placeholder="(xx) xxxx-xxxx" type="text">
            </div>

        </fieldset>

        <!--REDES SOCIAIS-->
        <fieldset>
            <legend>Redes sociais</legend>
                    
                <!--LinkedIn-->
                <div class="simpleform">
                    <label for="linkedin">LinkedIn&nbsp;</label>
                    <input id="linkedin" type="text" required></div>

                <!--Site-->
                <div class="simpleform">
                    <label for="site">Site Pessoal / Blog&nbsp;</label>
                    <input id="site" type="text"></div>

                <!--Outro-->
                <div class="simpleform">
                    <label for="other">Outro Site de Relacionamento&nbsp;</label>
                    <input id="other" type="text"></div>

        </fieldset>

        <!--DEFICIأٹNCIA-->
        <fieldset>
            <legend>Deficiأھncias</legend>    
                <div class="simpleform">
                    <label class="control-label">Você possui alguma deficiência?&nbsp;</label>
                    <input id="inputgroup" type="radio" name="deficiency" value="0"> Nمo
                    <input id="inputgroup" type="radio" name="deficiency" value="1"> Sim
                    <div class="checkbox-group">
                        <div class="simple-form__control-group">
                        <label class="control-label" for="deficiencias_possui_deficiencia_auditiva">
                        <input name="deficiencias[possui_deficiencia_auditiva]" id="deficiencias_possui_deficiencia_auditiva" type="checkbox" value="false">Auditiva</label></div>
                    <div class="simple-form__control-group">
                        <label class="control-label" for="deficiencias_possui_deficiencia_fala">
                        <input name="deficiencias[possui_deficiencia_fala]" id="deficiencias_possui_deficiencia_fala" type="checkbox" value="false">Fala</label>
                    </div>
                    <div class="simple-form__control-group">
                        <label class="control-label" for="deficiencias_possui_deficiencia_fisica">
                        <input name="deficiencias[possui_deficiencia_fisica]" id="deficiencias_possui_deficiencia_fisica" type="checkbox" value="false">Fأ­sica</label>
                    </div>
                    <div class="simple-form__control-group">
                        <label class="control-label" for="deficiencias_possui_deficiencia_mental">
                        <input name="deficiencias[possui_deficiencia_mental]" id="deficiencias_possui_deficiencia_mental" type="checkbox" value="false">Intelectual/Mental</label>
                    </div>
                    <div class="simple-form__control-group">
                        <label class="control-label" for="deficiencias_possui_deficiencia_visual">
                        <input name="deficiencias[possui_deficiencia_visual]" id="deficiencias_possui_deficiencia_visual" type="checkbox" value="false">Visual</label>
                    </div>
                </div>
            </div>
        </fieldset>

        <!--OBJETIVOS-->
        <fieldset>
            <legend>Objetivos</legend>
            <div class="objectives">
                <p><textarea name="item3" cols="50" rows="3"></textarea></p>
            </div>
        </fieldset>
            
        <!--FORMAأ‡أƒO ACADأٹMICA-->
        <fieldset>
            <legend>Formaçمo Acadêmica e complementar</legend>
            <div class="academic">
                
            </div>
        </fieldset>

        <!--IDIOMAS-->
        <fieldset>
            <legend>Idiomas</legend>
            <div class="languages">
                
            </div>
        </fieldset>
            
        <!--EXERIأٹNCIA PROFISSIONAL-->
        <fieldset>
            <legend>Resumo Profissional</legend>
            <div class="professionalhistory">
                
            </div>
        </fieldset>
            
        <!--INFORMAأ‡أ•ES ADICIONAIS-->
        <fieldset>
            <legend>Informaçُes complementares</legend>
            <div class="additional">
                    <p><textarea name="item3" cols="50" rows="10"></textarea></p>
            </div>
        </fieldset>
            
            <footer class="submit">
                <input type="submit" value="Enviar" id="submit" name="Enviar">
            </footer>
            
        </form>
        </section>
    </body>
</html>
