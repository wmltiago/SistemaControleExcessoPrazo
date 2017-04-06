<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<%@ page import="java.util.List"%>
<%@ page import="model.presidio.PresidioDao"%>
<%@ page import="model.presidio.Presidio"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listando Detentos</title>

<!-- Isso é necessário para funcionar a versão mobile -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
 
  <!-- CSS -->
  <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="//assets.locaweb.com.br/locastyle/2.0.6/stylesheets/locastyle.css">
 


<script type="text/javascript" src="view/js/jquery-2.1.4.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#nomeDetento").keyup(function() {
			
			var texto = $('#nomeDetento').val();
			var cpfDetento = $('#cpfDetento').val();
			$.post("pesquisandoDetento", {
				'nomeDetento' : texto,
				'cpfDetento' : cpfDetento
			}, function(dados) {
				$('#tabelaListaDetento').html(dados);
			});
		});
		$("#cpfDetento").change(function() {
			var texto = $('#nomeDetento').val();
			var cpfDetento = $('#cpfDetento').val();
			$.post("pesquisandoDetento", {
				'nomeDetento' : texto,
				'cpfDetento' : cpfDetento
			}, function(dados) {
				$('#tabelaListaDetento').html(dados);
			});
		});
	});
</script>



<c:import url="../bootstrapTiago/bootStrap.jsp"></c:import>

</head>
<body>

	<!-- Header principal -->
  <header class="header" role="banner">
    <div class="container">
      <span class="control-menu visible-xs ico-menu-2"></span>
      <span class="control-sidebar visible-xs ico-list"></span>
      <h1 class="project-name"><a href="#">SCEP - Sistema Controle Excesso de Prazo</a></h1>
      <a href="#" class="help-suggestions ico-question hidden-xs">Ajuda e Sugestões</a>
 
      <div class="dropdown hidden-xs">
        <a href="#" data-toggle="dropdown" class="title-dropdown" style=" color:red" >${usuarioLogado.nomeUsuario}</a>
        <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
          <li><a href="#" role="menuitem">Sair</a></li>
         <!--   <li><a href="#" role="menuitem">Option 2</a></li>
          <li><a href="#" role="menuitem">Option 3</a></li> -->
        </ul>
      </div>
    </div>
  </header>
 
  <!-- Menu -->
  <div class="nav-content">
    <menu class="menu"  >
      <ul class="container">
        <li><a href="#" class="active ico-home" role="menuitem">Home</a></li>
        <li><a href="exibirCadastrarUsuario2" role="menuitem">Usuários</a></li>
        <li><a href="exibirCadastrarPresidio" role="menuitem">Presídios</a>
        <!--    <ul>
            <li><a href="#">Enviar</a></li>
            <li><a href="#">Criar</a></li>
            <li><a href="#">Editar</a></li>
            <li><a href="#">Relatórios</a></li>
          </ul> -->
        </li>
        <li><a href="exibirCadastrarDetento" role="menuitem">Detentos</a></li>        
        
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

	<hr>
	<center>
		<h3>Pesquisar Detento</h3>
	</center>
	<hr>

	<div>


		<form class="form-horizontal" >
			<fieldset>



				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="nomeDetento">Nome</label>
					<div class="col-md-6">
						<input id="nomeDetento" name="nomeDetento" type="text" placeholder="placeholder" class="form-control input-md"
							 value="${detento.nomeDetento}">




					</div>

				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="cpfDetento">Cpf</label>
					<div class="col-md-6">
						<input id="cpfDetento" name="cpfDetento" type="text" placeholder="placeholder" class="form-control input-md"
							 value="${detento.cpfDetento}">




					</div>

				</div>




			</fieldset>
		</form>







	




	</div>

<div class="container">
		<div class="row">
			<div class="col-md-9">


				<table class="table" id="tabelaListaDetento">
					<thead>
						<tr>
							<th>Nome</th>
							<th>CPF</th>
							<th>Nome da Mãe</th>
							<th>Data de Julgamento</th>
							<th>Número do Processo</th>
							<th>Presídio</th>
							<th>Status</th>
							<th>Ações<th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="detento" items="${listaDetento}">
							<c:if test="${detento.status == 2}">

								<tr class="danger">
							</c:if>
							<c:if test="${detento.status == 1}">

								<tr class="warning">
							</c:if>
							<c:if test="${detento.status == -1}">

								<tr class="success">
							</c:if>
							<td>${detento.nomeDetento}</td>
							<td>${detento.cpfDetento}</td>
							<td>${detento.nomeMae}</td>
<td><fmt:formatDate value='${detento.dataJulgamento}'
									pattern='dd/MM/yyyy' /></td>
							<td>${detento.numeroProcesso}</td>
							<td>${detento.presidio.nomePresidio}</td>
							
							<c:if test="${detento.status == -1}">
								<td>No prazo</td>
							</c:if>
							<c:if test="${detento.status == 1}">
								<td>Hoje</td>
							</c:if>
							<c:if test="${detento.status == 2}">
								<td>Atrasado</td>
							</c:if>
							<td><a href='exibirAlterarDetento?id=${detento.idDetento}'>Editar</a>
						&nbsp; <a href='removerDetento?id=${detento.idDetento}'>Remover</a>
						
						
					</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	</div>



<!-- AQUI TERMINA O FORMULARIO DE USUARIO -->
      
      
      <!-- AQUI COMEÇA O SIDE BAR -->
        
        <aside class="col-md-3 sidebar" role="complementary">
         
          	<section class="sidebox">
		<h1 class="sidebox-title ico-question">Outras ações</h1>
		<ul class="sidebox-list">
			<li><a class="ico-redo-2 ico-pos-right" href="listarDetento">Listar Detentos</a></li>
					
		</ul>
	</section>
        </aside>      
            
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



	<%-- <table border='1' style='width: 100%;' id="tabelaListaDetento">

		<tr style='background-color: #E6E6E6; font-weight: bold;'>



			<td>NOME DO DETENTO</td>

			<td>CPF</td>

			<td>NOME DA MÃE</td>



			<td>Data de Julgamento</td>



			<td>Numero do Processo</td>

			<td>PRESIDIO</td>

			<td>AÇÕES</td>





			<c:forEach var="detento" items="${listaDetento}">
				<tr>

					<td>${detento.nomeDetento}</td>
					<td>${detento.cpfDetento}</td>
					<td>${detento.nomeMae}</td>

					<td><fmt:formatDate value='${detento.dataJulgamento}'
							pattern='dd/MM/yyyy' /></td>

					<td>${detento.numeroProcesso}</td>
					<td>${detento.presidio.nomePresidio}</td>
					<td><a href='exibirAlterarDetento?id=${detento.idDetento}'>Editar</a>
						&nbsp; <a href='removerDetento?id=${detento.idDetento}'>Remover</a>
					</td>
			</c:forEach>
	</table> --%>
	<br>
	<br>



</body>
</html>