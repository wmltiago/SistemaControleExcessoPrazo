<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Lista de usuário</title>

<c:import url="../bootstrapTiago/bootStrap.jsp"></c:import>

<link rel="stylesheet" type="text/css" href="ListarUsuario.css"> 

<link rel="stylesheet" type="text/css" href="ListarUsuario.css"> 
		 
	<link href='https://fonts.googleapis.com/css?family=Lato:300' rel='stylesheet' type='text/css'>
	
	<c:import url="../bootstrapTiago/bootStrap.jsp"></c:import>
<!-- Isso é necessário para funcionar a versão mobile -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
 
  <!-- CSS -->
  <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="//assets.locaweb.com.br/locastyle/2.0.6/stylesheets/locastyle.css">
  <script type="text/javascript" src="view/js/jquery-2.1.4.js"></script>

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
          <li><a href="logout" role="menuitem">Sair</a></li>
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


	

	
	<div style="text-align: center; color: red;"> ${mensagem} </div>

<br>
<br>

<div class="container">
    <div class="row">
    

	<hr>
	<center><h3>Pesquisar Usuario</h3></center>
	<div>
	<form class="form-horizontal" method="POST" >
			<fieldset>



				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="nomeDetento">Nome</label>
					<div class="col-md-6">
						<input id="nomeUsuario" name="nomeusuario" type="text" placeholder="" class="form-control input-md"
							 value="${usuario.nomeUsuario}">




					</div>

				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="cpfDetento">Cpf</label>
					<div class="col-md-6">
						<input id="cpfUsuario" name="cpfUsuario" type="text" placeholder="" class="form-control input-md"
							 value="${usuario.cpfUsuario}">




					</div><br><br>
<!-- <div class="col-md-6">
<input type="reset" value="Limpar" class="btn btn-default"> &nbsp; &nbsp; <input
					type="submit" value="Pesquisar" class="btn btn-success">


					</div> -->
				</div>



			</fieldset>
		</form>
	
		<%-- <form action="ListarUsuario2" method="post" class="form-horizontal">
			<p>
				Nome: <br /> <input type="text" id="nomeUsuario"
					name="nomeusuario" value="${usuario.nomeUsuario}">
			</p>
             
             <p>
				CPF: <br /> <input type="text" id="cpfUsuario"
					name="cpfUsuario" value="${usuario.cpfUsuario}">
			</p>
    
            <p>
				<input type="reset" value="Limpar"> &nbsp; &nbsp; <input
					type="submit" value="Pesquisar">
			</p> --%>
      
           <br>
           
           
           
           <div class="container">
		<div class="row">
			<div class="col-md-12">


				<table class="table" id="tabelaListaDetento">
					<thead>
						<tr>
							<th class="hidden-xs">ID</th>
                        <th>CPF</th>
                        <th>NOME</th>
                        <th>ENDEREÇO</th>
                        <th>TIPO USUARIO</th>
                        <th>Ações</th>
						</tr>
					</thead>
					<tbody>
						
                  <c:forEach var="usuario" items="${listaUsuario}">

								<tr class="success">
							
						
							<td class="hidden-xs">${usuario.id}</td>
                            <td>${usuario.cpfUsuario} </td>
                            <td>${usuario.nomeUsuario}</td>
                            <td>${usuario.enderecoUsuario}</td>
                            <td>${usuario.tipoUsuario.descricaoUsuario}</td> <!-- aqui chamo a descricao ou id do tipo suuario ex: usuario.tipousuario.id_tipousuario -->
                          <td><a href="exibirAlterarUsuario?id=${usuario.id}" >Alterar</a>
                              <a href="removerUsuario?id=${usuario.id}" >Remover</a></td>
					
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
    
        <%-- <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">Listas de usuários</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                   <a href="exibirCadastrarUsuario" > <button type="button" class="btn btn-success" >  Cadastrar novo usuário </button></a>
                  </div>
                </div>
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th><center><em class="fa fa-cog"></em></center></th>
                        <th class="hidden-xs">ID</th>
                        <th>CPF</th>
                        <th>NOME</th>
                        <th>ENDEREÇO</th>
                        <th>TIPO USUARIO</th>
                    </tr> 
                  </thead>
                  
                  <c:forEach var="usuario" items="${listaUsuario}">
                  
                  <tbody>
                          <tr>
                            <td align="center">
                              <a href="exibirAlterarUsuario?id=${usuario.id}" class="btn btn-default"><em class="fa fa-pencil" title="Alterar usuário"></em></a>
                              <a href="removerUsuario?id=${usuario.id}" class="btn btn-danger"><em class="fa fa-trash" title="Remover usuário"></em></a>
                              
                            </td>
                            <td class="hidden-xs">${usuario.id}</td>
                            <td>${usuario.cpfUsuario} </td>
                            <td>${usuario.nomeUsuario}</td>
                            <td>${usuario.enderecoUsuario}</td>
                            <td>${usuario.tipoUsuario.descricaoUsuario}</td> <!-- aqui chamo a descricao ou id do tipo suuario ex: usuario.tipousuario.id_tipousuario -->
                          </tr>
                        </tbody>
                        
                        </c:forEach>
                        
                </table>
            
              </div>
              <div class="panel-footer">
                <div class="row">
                  <div class="col col-xs-4">Page 1 of 5
                  </div>
                  <div class="col col-xs-8">
                    <ul class="pagination hidden-xs pull-right">
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                    </ul>
                    <ul class="pagination visible-xs pull-right">
                        <li><a href="#">«</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>

</div> --%></div></div>
</div>

<!-- AQUI TERMINA O FORMULARIO DE USUARIO -->
        
               
        
        
      </div>
      
      <!-- AQUI COMEÇA O SIDE BAR (TEM QUE ESTÁ ENTRE A DIV DA COL-MD-9 E A DIV DA ROW) -->
        
        <aside class="col-md-3 sidebar" role="complementary">
         
          	<section class="sidebox">
		<h1 class="sidebox-title ico-question">Outras ações</h1>
		<ul class="sidebox-list">
			<li><a class="ico-redo-2 ico-pos-right" href="exibirCadastrarUsuario">Cadastrar Usuário</a></li>
					
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

</body>
</html>