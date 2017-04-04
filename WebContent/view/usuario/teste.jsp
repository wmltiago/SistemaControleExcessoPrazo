<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SCEP</title>
  <meta charset="utf-8">
 
  <!-- Isso é necessário para funcionar a versão mobile -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
 
  <!-- CSS -->
  <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="//assets.locaweb.com.br/locastyle/2.0.6/stylesheets/locastyle.css">
  <script type="text/javascript" src="view/js/jquery-2.1.4.js"></script>
  
 <script type="text/javascript">
 $("#cpfUsuario").keyup(function(){
	    try {
	        $("#cpfUsuario").unmask();
	    } catch (e) {}

	    var tamanho = $("#cpfUsuario").val().length;

	    if(tamanho < 11){
	        $("#cpfUsuario").mask("999.999.999-99");
	    } else {
	        $("#cpfUsuario").mask("99.999.999/9999-99");
	    }                   
	});
</script>
 
</head>
<body>

  <!-- Header principal -->
  <header class="header" role="banner">
    <div class="container">
      <span class="control-menu visible-xs ico-menu-2"></span>
      <span class="control-sidebar visible-xs ico-list"></span>
      <h1 class="project-name"><a href="#">SCEP - Sistema Conttrole Excesso de Prazo</a></h1>
      <a href="#" class="help-suggestions ico-question hidden-xs">Ajuda e Sugestões</a>
 
      <div class="dropdown hidden-xs">
        <a href="#" data-toggle="dropdown" class="title-dropdown" >${usuarioLogado.nomeUsuario}</a>
        <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
          <li><a href="#" role="menuitem">Option 1</a></li>
          <li><a href="#" role="menuitem">Option 2</a></li>
          <li><a href="#" role="menuitem">Option 3</a></li>
        </ul>
      </div>
    </div>
  </header>
 
  <!-- Menu -->
  <div class="nav-content">
    <menu class="menu"  >
      <ul class="container">
        <li><a href="#" class="active ico-home" role="menuitem">Home</a></li>
        <li><a href="#" role="menuitem">Usuários</a></li>
        <li><a href="#" role="menuitem">Presídios</a>
          <ul>
            <li><a href="#">Enviar</a></li>
            <li><a href="#">Criar</a></li>
            <li><a href="#">Editar</a></li>
            <li><a href="#">Relatórios</a></li>
          </ul>
        </li>
        <li><a href="#" role="menuitem">Detentos</a></li>
        
      </ul>
    </menu>
    <h2 class="title-sep visible-xs">Mais</h2>
    <ul class="nav-mob-list visible-xs">
      <li><a href="#" class="ico-help-circle">Ajuda e sugestões</a></li>
    </ul>
  </div>
 
  <!-- Aqui começa a parte de conteúdo dividido por colunas -->
  <main class="main">
    <div class="container">
      <div class="row">
        <div class="col-md-9 content" role="main">
        
        
        
        <!-- AQUI COMEÇA O FORMULARIO DE USUARIO -->
         
         <form class="form-horizontal" action="CadastrarUsuario2" method="post">

		<fieldset>
			<br>
			<!-- Form Name -->
			<center>
				<legend>
					<h3>
						<b>Cadastro de usuário</b>
					</h3>
				</legend>
			</center>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="">Nome</label>
				<div class="col-md-4">
					<input id="" name="nomeUsuario" placeholder=""
						class="form-control input-md" type="text">
					<div>
						<form:errors path="usuario.nomeUsuario" cssStyle="color:red" />
					</div>
				</div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Tipo
					de usuário</label>
				<div class="col-md-4">
					<select id="id_tipousuario" name="tipoUsuario" class="form-control">
						<option value=""></option>
						<c:forEach items="${listaTipoUsuario}" var="obj">
							<option value="${obj.idTipoUsuario}">
								${obj.descricaoUsuario}</option>
							<!-- VARIAVEL IGUAL AO NOME DA CLASSE BASICA -->
						</c:forEach>
					</select>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Endereço</label>
				<div class="col-md-4">
					<input id="textinput" name="enderecoUsuario"
						placeholder="Rua Amarela, Piedade, 250"
						class="form-control input-md" type="text">

				</div>
			</div>

			

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">CPF</label>
				<div class="col-md-4">
					<input id="textinput" name="cpfUsuario"	 class="form-control input-md" type="text" id="cpfUsuario"  >
					<div>
						<form:errors path="usuario.cpfUsuario" cssStyle="color:red" />
					</div>
				</div>
			</div>
			
			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="passwordinput"></label>
				<div class="col-md-4">
					<input id="passwordinput" name="senhaUsuario"
						placeholder="********" class="form-control input-md"
						type="hidden" value="1234">

				</div>
			</div>

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="button1id"></label>
				<div class="col-md-8">
					<button id="button1id" name="button1id" class="btn btn-success"
						type="submit" value="inserir">Inserir</button>
					<button id="button2id" name="button2id" class="btn btn-default"
						type="reset" value="Limpar">Limpar</button>
				</div>
			</div>

		</fieldset>
	</form>
	
        </div>
        
        
                <!-- AQUI TERMINA O FORMULARIO DE USUARIO -->
        
        
        
        <!-- AQUI COMEÇA O SIDE BAR -->
        
        <aside class="col-md-3 sidebar" role="complementary">
         
          	<section class="sidebox">
		<h1 class="sidebox-title ico-question">Outras ações</h1>
		<ul class="sidebox-list">
			<li><a class="ico-redo-2 ico-pos-right" href="#">Listar Usuário</a></li>
			<li><a class="ico-redo-2 ico-pos-right" href="#">Tipos de Usuários</a></li>			
		</ul>
	</section>
        </aside>
      </div>
    </div>
  </main>
 
  <!-- Footer -->
  <footer class="footer">
    <div class="footer-menu">
      <nav class="container">
        <h2 class="title-footer">suporte e ajuda</h2>
        <ul class="no-liststyle">
          <li><a href="#" class="bg-customer-support"><span class="visible-lg">Atendimento</span></a></li>
          <li><a href="#" class="bg-my-tickets"><span class="visible-lg">Meus Chamados</span></a></li>
          <li><a href="#" class="bg-help-desk"><span class="visible-lg">Central de Ajuda</span></a></li>
          <li><a href="#" class="bg-statusblog"><span class="visible-lg">Dúvidas</span></a></li>
        </ul>
      </nav>
    </div>
    <div class="container footer-info">
      <span class="last-access ico-screen"><strong>Último acesso: </strong>7/8/2011 22:35:49</span>
      <div class="set-ip"><span class="set-ip"><strong>IP:</strong> 201.87.65.217</span></div>
      <p class="copy-right">Copyright © 1997-2011 Animaniac's Enterprise S/A.</p>
    </div>
  </footer>
 
  <!-- Scripts - Atente-se na ordem das chamadas -->
  <script type="text/javascript" src="//code.jquery.com/jquery-2.0.3.min.js"></script>
  <script type="text/javascript" src="//assets.locaweb.com.br/locastyle/2.0.6/javascripts/locastyle.js"></script>
  <script type="text/javascript" src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
</body>
</html>