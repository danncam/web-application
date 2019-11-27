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

        <section class="curriculumcontainer">
            
        <form action="submit.html" method="post">
            
        <!--INFORMAÇÕES PESSOAIS-->

        <fieldset>
            <legend>Informações Pessoais&nbsp;</legend>

            <!--Nome completo-->
            <div class="simpleform">
                <label for="name">Nome Completo&nbsp;</label>
                <span><input placeholder="campo obrigatório" id="name" name="nome" type="text" autofocus="true" required></span>
            </div>

            <!--Data de nascimento-->
            <div class="simpleform">
                <label for="bdate">Data de nascimento&nbsp;</label>
                <span class="validity"><input placeholder="dd/mm/aaaa" id="bdate" type="date" required></span>
            </div>

            <!--Gênero-->
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
                <input id="inputgroup" type="radio" name="children" value="0"> Não
                <input id="inputgroup" type="radio" name="children" value="1"> Sim
            </div>

            <!--Nacionalidade-->
            <div class="simpleform">
                <label for="selectdata">País de nacionalidade&nbsp;</label>
                <select id="selectdata"><option value=""></option>
                    <option value="3">Afeganistão</option>
                    <option value="1">África do Sul</option>
                    <option value="4">Albânia</option>
                    <option value="5">Alemanha</option>
                    <option value="6">Andorra</option>
                    <option value="7">Angola</option>
                    <option value="8">Anguilla</option>
                    <option value="9">Antártica</option>
                    <option value="10">Antígua e Barbuda</option>
                    <option value="11">Antilhas Holandesas</option>
                    <option value="12">Arábia Saudita</option>
                    <option value="13">Argélia</option>
                    <option value="14">Argentina</option>
                    <option value="15">Armênia</option>
                    <option value="16">Aruba</option>
                    <option value="17">Austrália</option>
                    <option value="2">Áustria</option>
                    <option value="18">Azerbaijão</option>
                    <option value="21">Bahamas</option>
                    <option value="22">Bangladesh</option>
                    <option value="23">Barbados</option>
                    <option value="24">Barein</option>
                    <option value="25">Belarus</option>
                    <option value="19">Bélgica</option>
                    <option value="26">Belize</option>
                    <option value="27">Benin</option>
                    <option value="28">Bermuda</option>
                    <option value="29">Bolívia</option>
                    <option value="20">Bósnia e Herzegovina</option>
                    <option value="30">Botswana</option>
                    <option value="31">Brasil</option>
                    <option value="32">Brunei Darussalém</option>
                    <option value="33">Bulgária</option>
                    <option value="34">Burkina Fasso</option>
                    <option value="35">Burundi</option>
                    <option value="36">Butão</option>
                    <option value="37">Cabo Verde</option>
                    <option value="38">Camarões</option>
                    <option value="39">Camboja</option>
                    <option value="40">Canadá</option>
                    <option value="41">Catar</option>
                    <option value="42">Cazaquistão</option>
                    <option value="43">Chade</option>
                    <option value="44">Chile</option>
                    <option value="45">China</option>
                    <option value="46">Chipre</option>
                    <option value="47">Cidade do Vaticano</option>
                    <option value="48">Cingapura</option>
                    <option value="49">Colômbia</option>
                    <option value="50">Congo (Brazzaville)</option>
                    <option value="238">Congo (Kinshasa)</option>
                    <option value="189">Coréia do Norte</option>
                    <option value="187">Coréia do Sul</option>
                    <option value="51">Costa do Marfim</option>
                    <option value="52">Costa Rica</option>
                    <option value="53">Croácia</option>
                    <option value="54">Cuba</option>
                    <option value="55">Dinamarca</option>
                    <option value="56">Djibuti</option>
                    <option value="57">Dominica</option>
                    <option value="58">Egito</option>
                    <option value="59">El Salvador</option>
                    <option value="60">Emirados Árabes Unidos</option>
                    <option value="61">Equador</option>
                    <option value="62">Eritréia</option>
                    <option value="63">Eslováquia</option>
                    <option value="64">Eslovênia</option>
                    <option value="65">Espanha</option>
                    <option value="67">Estados Unidos</option>
                    <option value="66">Estônia</option>
                    <option value="68">Etiópia</option>
                    <option value="70">Fiji</option>
                    <option value="71">Filipinas</option>
                    <option value="72">Finlândia</option>
                    <option value="73">França</option>
                    <option value="74">França Metropolitana</option>
                    <option value="76">Gabão</option>
                    <option value="75">Gâmbia</option>
                    <option value="77">Gana</option>
                    <option value="78">Geórgia</option>
                    <option value="79">Geórgia do Sul e Ilhas Sandwich</option>
                    <option value="80">Gibraltar</option>
                    <option value="82">Granada</option>
                    <option value="81">Grécia</option>
                    <option value="83">Groelândia</option>
                    <option value="84">Guadalupe</option>
                    <option value="85">Guam</option>
                    <option value="86">Guatemala</option>
                    <option value="87">Guiana</option>
                    <option value="88">Guiana Francesa</option>
                    <option value="89">Guiné</option>
                    <option value="90">Guiné Equatorial</option>
                    <option value="91">Guiné-Bissau</option>
                    <option value="92">Haiti</option>
                    <option value="93">Holanda</option>
                    <option value="94">Honduras</option>
                    <option value="95">Hong Kong</option>
                    <option value="96">Hungria</option>
                    <option value="97">Iêmen</option>
                    <option value="98">Ilha Bouvet</option>
                    <option value="99">Ilha Norfolk</option>
                    <option value="100">Ilha Reunião</option>
                    <option value="101">Ilhas Cayman</option>
                    <option value="102">Ilhas Christmas</option>
                    <option value="103">Ilhas Cocos</option>
                    <option value="104">Ilhas Comores</option>
                    <option value="105">Ilhas Cook</option>
                    <option value="106">Ilhas Falkland (Malvinas)</option>
                    <option value="107">Ilhas Feroé</option>
                    <option value="108">Ilhas Heard e Mcdonald</option>
                    <option value="109">Ilhas Marianas do Norte</option>
                    <option value="110">Ilhas Marshall</option>
                    <option value="111">Ilhas Salomão</option>
                    <option value="112">Ilhas Svalbard e Jan Mayen</option>
                    <option value="113">Ilhas Turks e Caicos</option>
                    <option value="114">Ilhas Virgens Americanas</option>
                    <option value="115">Ilhas Virgens Britânicas</option>
                    <option value="116">Ilhas Wallis e Futuna</option>
                    <option value="117">Índia</option>
                    <option value="118">Indonésia</option>
                    <option value="119">Irã</option>
                    <option value="120">Iraque</option>
                    <option value="121">Irlanda</option>
                    <option value="122">Islândia</option>
                    <option value="123">Israel</option>
                    <option value="124">Itália</option>
                    <option value="127">Jamaica</option>
                    <option value="128">Japão</option>
                    <option value="129">Jordânia</option>
                    <option value="130">Kiribati</option>
                    <option value="131">Kuwait</option>
                    <option value="481">Laos</option>
                    <option value="133">Lesoto</option>
                    <option value="134">Letônia</option>
                    <option value="132">Líbano</option>
                    <option value="135">Libéria</option>
                    <option value="126">Líbia</option>
                    <option value="136">Liechtenstein</option>
                    <option value="137">Lituânia</option>
                    <option value="138">Luxemburgo</option>
                    <option value="141">Macau</option>
                    <option value="142">Macedônia</option>
                    <option value="143">Madagascar</option>
                    <option value="144">Malásia</option>
                    <option value="145">Malavi</option>
                    <option value="146">Maldivas</option>
                    <option value="147">Mali</option>
                    <option value="148">Malta</option>
                    <option value="149">Marrocos</option>
                    <option value="150">Martinica</option>
                    <option value="151">Maurício</option>
                    <option value="152">Mauritânia</option>
                    <option value="153">Mayotte</option>
                    <option value="139">México</option>
                    <option value="154">Micronésia</option>
                    <option value="155">Moçambique</option>
                    <option value="156">Moldávia</option>
                    <option value="140">Mônaco</option>
                    <option value="157">Mongólia</option>
                    <option value="482">Montenegro</option>
                    <option value="158">Montserrat</option>
                    <option value="159">Myanma</option>
                    <option value="161">Namíbia</option>
                    <option value="162">Nauru</option>
                    <option value="163">Nepal</option>
                    <option value="164">Nicarágua</option>
                    <option value="160">Níger</option>
                    <option value="165">Nigéria</option>
                    <option value="166">Niue</option>
                    <option value="167">Noruega</option>
                    <option value="168">Nova Caledônia</option>
                    <option value="169">Nova Zelândia</option>
                    <option value="170">Omã</option>
                    <option value="171">Palau</option>
                    <option value="172">Panamá</option>
                    <option value="173">Papua-Nova Guiné</option>
                    <option value="174">Paquistão</option>
                    <option value="175">Paraguai</option>
                    <option value="176">Peru</option>
                    <option value="177">Pitcairn</option>
                    <option value="179">Polinésia Francesa</option>
                    <option value="178">Polônia</option>
                    <option value="180">Porto Rico</option>
                    <option value="181">Portugal</option>
                    <option value="182">Quênia</option>
                    <option value="183">Quirguistão</option>
                    <option value="184">Reino Unido</option>
                    <option value="186">República Centro-Africana</option>
                    <option value="188">República Dominicana</option>
                    <option value="191">República Tcheca</option>
                    <option value="192">Romênia</option>
                    <option value="193">Ruanda</option>
                    <option value="69">Russia</option>
                    <option value="197">Saara Ocidental</option>
                    <option value="198">Saint Kitts e Nevis</option>
                    <option value="199">Saint Pierre e Miquelon</option>
                    <option value="200">Samoa</option>
                    <option value="201">Samoa Americana</option>
                    <option value="202">Santa Helena</option>
                    <option value="203">Santa Lúcia</option>
                    <option value="194">São Marino</option>
                    <option value="195">São Tomé e Príncipe</option>
                    <option value="196">São Vicente e Granadinas</option>
                    <option value="204">Senegal</option>
                    <option value="205">Serra Leoa</option>
                    <option value="125">Sérvia</option>
                    <option value="206">Seychelles</option>
                    <option value="185">Síria</option>
                    <option value="207">Somália</option>
                    <option value="208">Sri Lanka</option>
                    <option value="211">Suazilândia</option>
                    <option value="212">Sudão</option>
                    <option value="209">Suécia</option>
                    <option value="210">Suíça</option>
                    <option value="213">Suriname</option>
                    <option value="214">Tadjiquistão</option>
                    <option value="215">Tailândia</option>
                    <option value="216">Taiwan</option>
                    <option value="217">Tanzânia</option>
                    <option value="218">Territórios Britânicos do Oceano Índico</option>
                    <option value="219">Territórios Franceses do Sul</option>
                    <option value="220">Territórios Insulares dos Estados Unidos</option>
                    <option value="221">Timor Oriental</option>
                    <option value="222">Togo</option>
                    <option value="223">Tokelau</option>
                    <option value="224">Tonga</option>
                    <option value="225">Trinidad e Tobago</option>
                    <option value="226">Tunísia</option>
                    <option value="227">Turcomenistão</option>
                    <option value="228">Turquia</option>
                    <option value="229">Tuvalu</option>
                    <option value="230">Ucrânia</option>
                    <option value="231">Uganda</option>
                    <option value="232">Uruguai</option>
                    <option value="233">Uzbequistão</option>
                    <option value="234">Vanuatu</option>
                    <option value="235">Venezuela</option>
                    <option value="236">Vietnã</option>
                    <option value="237">Zâmbia</option>
                    <option value="239">Zimbabwe</option>
                </select>
            </div>

            <!--Documento-->
            <div class="simpleform">
                <label for="document">Documento&nbsp;</label>
                <span><input placeholder="CPF" id="simpleform" name="document" type="text" required>&nbsp;<a href="#">Estrangeiro</a></span>
            </div>

        </fieldset>

        <!--ENDEREÇO-->

        <fieldset>

            <legend>Endereço atual&nbsp;</legend>

            <!--País-->
            <div class="simpleform">
                <label for="country">País&nbsp;</label>
                <select id="country" required><option value=""></option>
                    <option value="3">Afeganistão</option>
                    <option value="1">África do Sul</option>
                    <option value="4">Albânia</option>
                    <option value="5">Alemanha</option>
                    <option value="6">Andorra</option>
                    <option value="7">Angola</option>
                    <option value="8">Anguilla</option>
                    <option value="9">Antártica</option>
                    <option value="10">Antígua e Barbuda</option>
                    <option value="11">Antilhas Holandesas</option>
                    <option value="12">Arábia Saudita</option>
                    <option value="13">Argélia</option>
                    <option value="14">Argentina</option>
                    <option value="15">Armênia</option>
                    <option value="16">Aruba</option>
                    <option value="17">Austrália</option>
                    <option value="2">Áustria</option>
                    <option value="18">Azerbaijão</option>
                    <option value="21">Bahamas</option>
                    <option value="22">Bangladesh</option>
                    <option value="23">Barbados</option>
                    <option value="24">Barein</option>
                    <option value="25">Belarus</option>
                    <option value="19">Bélgica</option>
                    <option value="26">Belize</option>
                    <option value="27">Benin</option>
                    <option value="28">Bermuda</option>
                    <option value="29">Bolívia</option>
                    <option value="20">Bósnia e Herzegovina</option>
                    <option value="30">Botswana</option>
                    <option value="31">Brasil</option>
                    <option value="32">Brunei Darussalém</option>
                    <option value="33">Bulgária</option>
                    <option value="34">Burkina Fasso</option>
                    <option value="35">Burundi</option>
                    <option value="36">Butão</option>
                    <option value="37">Cabo Verde</option>
                    <option value="38">Camarões</option>
                    <option value="39">Camboja</option>
                    <option value="40">Canadá</option>
                    <option value="41">Catar</option>
                    <option value="42">Cazaquistão</option>
                    <option value="43">Chade</option>
                    <option value="44">Chile</option>
                    <option value="45">China</option>
                    <option value="46">Chipre</option>
                    <option value="47">Cidade do Vaticano</option>
                    <option value="48">Cingapura</option>
                    <option value="49">Colômbia</option>
                    <option value="50">Congo (Brazzaville)</option>
                    <option value="238">Congo (Kinshasa)</option>
                    <option value="189">Coréia do Norte</option>
                    <option value="187">Coréia do Sul</option>
                    <option value="51">Costa do Marfim</option>
                    <option value="52">Costa Rica</option>
                    <option value="53">Croácia</option>
                    <option value="54">Cuba</option>
                    <option value="55">Dinamarca</option>
                    <option value="56">Djibuti</option>
                    <option value="57">Dominica</option>
                    <option value="58">Egito</option>
                    <option value="59">El Salvador</option>
                    <option value="60">Emirados Árabes Unidos</option>
                    <option value="61">Equador</option>
                    <option value="62">Eritréia</option>
                    <option value="63">Eslováquia</option>
                    <option value="64">Eslovênia</option>
                    <option value="65">Espanha</option>
                    <option value="67">Estados Unidos</option>
                    <option value="66">Estônia</option>
                    <option value="68">Etiópia</option>
                    <option value="70">Fiji</option>
                    <option value="71">Filipinas</option>
                    <option value="72">Finlândia</option>
                    <option value="73">França</option>
                    <option value="74">França Metropolitana</option>
                    <option value="76">Gabão</option>
                    <option value="75">Gâmbia</option>
                    <option value="77">Gana</option>
                    <option value="78">Geórgia</option>
                    <option value="79">Geórgia do Sul e Ilhas Sandwich</option>
                    <option value="80">Gibraltar</option>
                    <option value="82">Granada</option>
                    <option value="81">Grécia</option>
                    <option value="83">Groelândia</option>
                    <option value="84">Guadalupe</option>
                    <option value="85">Guam</option>
                    <option value="86">Guatemala</option>
                    <option value="87">Guiana</option>
                    <option value="88">Guiana Francesa</option>
                    <option value="89">Guiné</option>
                    <option value="90">Guiné Equatorial</option>
                    <option value="91">Guiné-Bissau</option>
                    <option value="92">Haiti</option>
                    <option value="93">Holanda</option>
                    <option value="94">Honduras</option>
                    <option value="95">Hong Kong</option>
                    <option value="96">Hungria</option>
                    <option value="97">Iêmen</option>
                    <option value="98">Ilha Bouvet</option>
                    <option value="99">Ilha Norfolk</option>
                    <option value="100">Ilha Reunião</option>
                    <option value="101">Ilhas Cayman</option>
                    <option value="102">Ilhas Christmas</option>
                    <option value="103">Ilhas Cocos</option>
                    <option value="104">Ilhas Comores</option>
                    <option value="105">Ilhas Cook</option>
                    <option value="106">Ilhas Falkland (Malvinas)</option>
                    <option value="107">Ilhas Feroé</option>
                    <option value="108">Ilhas Heard e Mcdonald</option>
                    <option value="109">Ilhas Marianas do Norte</option>
                    <option value="110">Ilhas Marshall</option>
                    <option value="111">Ilhas Salomão</option>
                    <option value="112">Ilhas Svalbard e Jan Mayen</option>
                    <option value="113">Ilhas Turks e Caicos</option>
                    <option value="114">Ilhas Virgens Americanas</option>
                    <option value="115">Ilhas Virgens Britânicas</option>
                    <option value="116">Ilhas Wallis e Futuna</option>
                    <option value="117">Índia</option>
                    <option value="118">Indonésia</option>
                    <option value="119">Irã</option>
                    <option value="120">Iraque</option>
                    <option value="121">Irlanda</option>
                    <option value="122">Islândia</option>
                    <option value="123">Israel</option>
                    <option value="124">Itália</option>
                    <option value="127">Jamaica</option>
                    <option value="128">Japão</option>
                    <option value="129">Jordânia</option>
                    <option value="130">Kiribati</option>
                    <option value="131">Kuwait</option>
                    <option value="481">Laos</option>
                    <option value="133">Lesoto</option>
                    <option value="134">Letônia</option>
                    <option value="132">Líbano</option>
                    <option value="135">Libéria</option>
                    <option value="126">Líbia</option>
                    <option value="136">Liechtenstein</option>
                    <option value="137">Lituânia</option>
                    <option value="138">Luxemburgo</option>
                    <option value="141">Macau</option>
                    <option value="142">Macedônia</option>
                    <option value="143">Madagascar</option>
                    <option value="144">Malásia</option>
                    <option value="145">Malavi</option>
                    <option value="146">Maldivas</option>
                    <option value="147">Mali</option>
                    <option value="148">Malta</option>
                    <option value="149">Marrocos</option>
                    <option value="150">Martinica</option>
                    <option value="151">Maurício</option>
                    <option value="152">Mauritânia</option>
                    <option value="153">Mayotte</option>
                    <option value="139">México</option>
                    <option value="154">Micronésia</option>
                    <option value="155">Moçambique</option>
                    <option value="156">Moldávia</option>
                    <option value="140">Mônaco</option>
                    <option value="157">Mongólia</option>
                    <option value="482">Montenegro</option>
                    <option value="158">Montserrat</option>
                    <option value="159">Myanma</option>
                    <option value="161">Namíbia</option>
                    <option value="162">Nauru</option>
                    <option value="163">Nepal</option>
                    <option value="164">Nicarágua</option>
                    <option value="160">Níger</option>
                    <option value="165">Nigéria</option>
                    <option value="166">Niue</option>
                    <option value="167">Noruega</option>
                    <option value="168">Nova Caledônia</option>
                    <option value="169">Nova Zelândia</option>
                    <option value="170">Omã</option>
                    <option value="171">Palau</option>
                    <option value="172">Panamá</option>
                    <option value="173">Papua-Nova Guiné</option>
                    <option value="174">Paquistão</option>
                    <option value="175">Paraguai</option>
                    <option value="176">Peru</option>
                    <option value="177">Pitcairn</option>
                    <option value="179">Polinésia Francesa</option>
                    <option value="178">Polônia</option>
                    <option value="180">Porto Rico</option>
                    <option value="181">Portugal</option>
                    <option value="182">Quênia</option>
                    <option value="183">Quirguistão</option>
                    <option value="184">Reino Unido</option>
                    <option value="186">República Centro-Africana</option>
                    <option value="188">República Dominicana</option>
                    <option value="191">República Tcheca</option>
                    <option value="192">Romênia</option>
                    <option value="193">Ruanda</option>
                    <option value="69">Russia</option>
                    <option value="197">Saara Ocidental</option>
                    <option value="198">Saint Kitts e Nevis</option>
                    <option value="199">Saint Pierre e Miquelon</option>
                    <option value="200">Samoa</option>
                    <option value="201">Samoa Americana</option>
                    <option value="202">Santa Helena</option>
                    <option value="203">Santa Lúcia</option>
                    <option value="194">São Marino</option>
                    <option value="195">São Tomé e Príncipe</option>
                    <option value="196">São Vicente e Granadinas</option>
                    <option value="204">Senegal</option>
                    <option value="205">Serra Leoa</option>
                    <option value="125">Sérvia</option>
                    <option value="206">Seychelles</option>
                    <option value="185">Síria</option>
                    <option value="207">Somália</option>
                    <option value="208">Sri Lanka</option>
                    <option value="211">Suazilândia</option>
                    <option value="212">Sudão</option>
                    <option value="209">Suécia</option>
                    <option value="210">Suíça</option>
                    <option value="213">Suriname</option>
                    <option value="214">Tadjiquistão</option>
                    <option value="215">Tailândia</option>
                    <option value="216">Taiwan</option>
                    <option value="217">Tanzânia</option>
                    <option value="218">Territórios Britânicos do Oceano Índico</option>
                    <option value="219">Territórios Franceses do Sul</option>
                    <option value="220">Territórios Insulares dos Estados Unidos</option>
                    <option value="221">Timor Oriental</option>
                    <option value="222">Togo</option>
                    <option value="223">Tokelau</option>
                    <option value="224">Tonga</option>
                    <option value="225">Trinidad e Tobago</option>
                    <option value="226">Tunísia</option>
                    <option value="227">Turcomenistão</option>
                    <option value="228">Turquia</option>
                    <option value="229">Tuvalu</option>
                    <option value="230">Ucrânia</option>
                    <option value="231">Uganda</option>
                    <option value="232">Uruguai</option>
                    <option value="233">Uzbequistão</option>
                    <option value="234">Vanuatu</option>
                    <option value="235">Venezuela</option>
                    <option value="236">Vietnã</option>
                    <option value="237">Zâmbia</option>
                    <option value="239">Zimbabwe</option>
                </select>
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
                        <option value="4">Amapá</option>
                        <option value="3">Amazonas</option>
                        <option value="5">Bahia</option>
                        <option value="6">Ceará</option>
                        <option value="7">Distrito Federal</option>
                        <option value="8">Espírito Santo</option>
                        <option value="9">Goias</option>
                        <option value="10">Maranhão</option>
                        <option value="13">Mato Grosso</option>
                        <option value="12">Mato Grosso do Sul</option>
                        <option value="11">Minas Gerais</option>
                        <option value="14">Pará</option>
                        <option value="15">Paraíba</option>
                        <option value="18">Paraná</option>
                        <option value="16">Pernambuco</option>
                        <option value="17">Piauí</option>
                        <option value="19">Rio de Janeiro</option>
                        <option value="20">Rio Grande do Norte</option>
                        <option value="23">Rio Grande do Sul</option>
                        <option value="21">Rondônia</option>
                        <option value="22">Roraima</option>
                        <option value="24">Santa Catarina</option>
                        <option value="26">São Paulo</option>
                        <option value="25">Sergipe</option>
                        <option value="27">Tocantins</option>
                </select>
            </div>

            <!--Cidade-->
            <div class="simpleform">
                <label for="city">Cidade&nbsp;</label>
                <select id="city"><option value=""></option>
                    <option value=""></option>
                    <option value="60968">Angra dos Reis</option>
                    <option value="60992">Aperibé</option>
                    <option value="61000">Araruama</option>
                    <option value="61018">Areal</option>
                    <option value="61026">Armação de Búzios</option>
                    <option value="61034">Arraial do Cabo</option>
                    <option value="61158">Barra do Piraí</option>
                    <option value="61174">Barra Mansa</option>
                    <option value="61204">Belford Roxo</option>
                    <option value="61255">Bom Jardim</option>
                    <option value="61263">Bom Jesus do Itabapoana</option>
                    <option value="61298">Cabo Frio</option>
                    <option value="61310">Cachoeiras de Macacu</option>
                    <option value="61352">Cambuci</option>
                    <option value="61387">Campos dos Goytacazes</option>
                    <option value="61409">Cantagalo</option>
                    <option value="61425">Carapebus</option>
                    <option value="61433">Cardoso Moreira</option>
                    <option value="61441">Carmo</option>
                    <option value="61468">Casimiro de Abreu</option>
                    <option value="61506">Comendador Levy Gasparian</option>
                    <option value="61530">Conceição de Macabu</option>
                    <option value="61590">Cordeiro</option>
                    <option value="61697">Duas Barras</option>
                    <option value="61700">Duque de Caxias</option>
                    <option value="61727">Engenheiro Paulo de Frontin</option>
                    <option value="61875">Guapimirim</option>
                    <option value="61921">Iguaba Grande</option>
                    <option value="62030">Itaboraí</option>
                    <option value="62057">Itaguaí</option>
                    <option value="62103">Italva</option>
                    <option value="62120">Itaocara</option>
                    <option value="62138">Itaperuna</option>
                    <option value="62146">Itatiaia</option>
                    <option value="62189">Japeri</option>
                    <option value="62200">Laje do Muriaé</option>
                    <option value="62260">Macaé</option>
                    <option value="62278">Macuco</option>
                    <option value="62286">Magé</option>
                    <option value="62308">Mangaratiba</option>
                    <option value="62367">Maricá</option>
                    <option value="62375">Mendes</option>
                    <option value="62383">Mesquita</option>
                    <option value="62391">Miguel Pereira</option>
                    <option value="62405">Miracema</option>
                    <option value="62529">Natividade</option>
                    <option value="62553">Nilópolis</option>
                    <option value="62561">Niterói</option>
                    <option value="62600">Nova Friburgo</option>
                    <option value="62618">Nova Iguaçu</option>
                    <option value="62669">Paracambi</option>
                    <option value="62677">Paraíba do Sul</option>
                    <option value="62715">Parati</option>
                    <option value="62740">Paty do Alferes</option>
                    <option value="62790">Petrópolis</option>
                    <option value="62820">Pinheiral</option>
                    <option value="62847">Piraí</option>
                    <option value="62871">Porciúncula</option>
                    <option value="62901">Porto Real</option>
                    <option value="62987">Quatis</option>
                    <option value="62995">Queimados</option>
                    <option value="63002">Quissamã</option>
                    <option value="63037">Resende</option>
                    <option value="63070">Rio Bonito</option>
                    <option value="63088">Rio Claro</option>
                    <option value="63096">Rio das Flores</option>
                    <option value="63100">Rio das Ostras</option>
                    <option value="63118">Rio de Janeiro</option>
                    <option value="63274">Santa Maria Madalena</option>
                    <option value="63320">Santo Antônio de Pádua</option>
                    <option value="63355">São Fidélis</option>
                    <option value="63363">São Francisco de Itabapoana</option>
                    <option value="63371">São Gonçalo</option>
                    <option value="63380">São João da Barra</option>
                    <option value="63398">São João de Meriti</option>
                    <option value="63436">São José de Ubá</option>
                    <option value="63452">São José do Vale do Rio Preto</option>
                    <option value="63487">São Pedro da Aldeia</option>
                    <option value="63509">São Sebastião do Alto</option>
                    <option value="63541">Sapucaia</option>
                    <option value="63550">Saquarema</option>
                    <option value="63584">Seropédica</option>
                    <option value="63614">Silva Jardim</option>
                    <option value="63657">Sumidouro</option>
                    <option value="63690">Tanguá</option>
                    <option value="63720">Teresópolis</option>
                    <option value="63746">Trajano de Morais</option>
                    <option value="63770">Três Rios</option>
                    <option value="63800">Valença</option>
                    <option value="63827">Varre-Sai</option>
                    <option value="63835">Vassouras</option>
                    <option value="63924">Volta Redonda</option>
                </select>
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
            <legend>Informações de contato&nbsp;</legend>

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

        <!--DEFICIÊNCIA-->
        <fieldset>
            <legend>Deficiências</legend>    
                <div class="simpleform">
                    <label class="control-label">Você possui alguma deficiência?&nbsp;</label>
                    <input id="inputgroup" type="radio" name="deficiency" value="0"> Não
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
                        <input name="deficiencias[possui_deficiencia_fisica]" id="deficiencias_possui_deficiencia_fisica" type="checkbox" value="false">Física</label>
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
            
        <!--FORMAÇÃO ACADÊMICA-->
        <fieldset>
            <legend>Formação Acadêmica e complementar</legend>
            <div class="academic">
                
            </div>
        </fieldset>

        <!--IDIOMAS-->
        <fieldset>
            <legend>Idiomas</legend>
            <div class="languages">
                
            </div>
        </fieldset>
            
        <!--EXERIÊNCIA PROFISSIONAL-->
        <fieldset>
            <legend>Resumo Profissional</legend>
            <div class="professionalhistory">
                
            </div>
        </fieldset>
            
        <!--INFORMAÇÕES ADICIONAIS-->
        <fieldset>
            <legend>Informações complementares</legend>
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
