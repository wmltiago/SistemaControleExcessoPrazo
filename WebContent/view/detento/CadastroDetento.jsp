<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<%@ page import="java.util.List"%>
<%@ page import="model.presidio.PresidioDao"%>
<%@ page import="model.presidio.Presidio"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="../bootstrapTiago/bootStrap.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de detento</title>

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



  <form class="form-horizontal" action="CadastrarDetento" method="POST">
<fieldset>

<!-- Form Name -->
<center><legend> Cadastro de Detento</legend></center>
<!-- NoScript Alert -->
    <!-- <noscript> -->
    	<div class="alert alert-success">
		
			<center><span><strong>SCEP          </strong>  ${msg} .</span></center>
		</div>
	<!-- </noscript> -->
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="nomeDetento">Nome</label>  
  <div class="col-md-6">
  <input id="nomeDetento" name="nomeDetento" type="text" placeholder="placeholder" class="form-control input-md" required="">
  <span class="help-block">Nome COMPLETO</span>  
 
    	
			<form:errors path="detento.nomeDetento"  />
		
	
  </div>
  
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="cpfDetento">Cpf</label>  
  <div class="col-md-4">
  <input id="cpfDetento" name="cpfDetento" type="text" placeholder="Cpf " class="form-control input-md" required="" maxlength="11">
  <span class="help-block">Sem pontos ou vírgulas</span>
  <form:errors path="detento.cpfDetento" cssStyle="color:red" />  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="nomeMae">Nome da Mãe</label>  
  <div class="col-md-6">
  <input id="nomeMae" name="nomeMae" type="text" placeholder="Nome da Mãe" class="form-control input-md" required="">
  <span class="help-block">Nome COMPLETO</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="enderecoDetento">Endereço </label>  
  <div class="col-md-6">
  <input id="enderecoDetento" name="enderecoDetento" type="text" placeholder="Endereço" class="form-control input-md" required="">
  <span class="help-block">Rua / Bairro / Cidade / Número da Casa</span>  
  </div>
</div>




<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="dataJulgamento">Data de Julgamento</label>  
  <div class="col-md-4">
  <input id="dataJulgamento" name="dataJulgamento" type="text" placeholder="Data de Julgamento" class="form-control input-md" required="">
  <span class="help-block">Formato : dd/MM/yyyy</span>  
  </div>
</div>


<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="presidio">Presidio</label>
  <div class="col-md-4">
    <select id="presidio" name="presidio" class="form-control">
      <option value="-1">Selecione</option>
      <c:forEach items="${listaPresidio}" var="obj"> 
<option value="${obj.idPresidio}">${obj.nomePresidio}</option> </c:forEach> 
    </select>
  </div>
</div>



<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="liberdadeProvisoria">Liberdade Provisória</label>
  <div class="col-md-4">
    <select id="liberdadeProvisoria" name="liberdadeProvisoria" class="form-control">
      <option value="-1">Selecione</option>
      <option value="Sim">Sim</option>
      <option value="Não">Não</option>
    </select>
  </div>
</div>





<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="numeroProcesso">Número do Processo</label>  
  <div class="col-md-4">
  <input id="numeroProcesso" name="numeroProcesso" type="text" placeholder="Número do Processo" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for=""></label>
  <div class="col-md-8">
    <input id="" name="" type="submit" class="btn btn-success" value="inserir"></input>
    <input id="" name="" type="reset" class="btn btn-inverse" value="Limpar"></input>
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
  
  
<%-- <form class="form-horizontal" action="CadastrarDetento" method="POST">
<div class="form-group">
<div class="col-md-4">
<div style="text-align: center; color: red;"> ${msg} </div>

<br />
<!-- ENDEREÇO -->
<fieldset>
 <legend>Dados para cadastro do Detento</legend>
 <table cellspacing="10">

  <tr>
   <td>
    <label >Nome</label>
   </td>
   <td align="left">
    <input type="text" name="nomeDetento" id="nomeDetento">
    <br>
    <form:errors path="detento.nomeDetento" cssStyle="color:red" />
   </td>
   
  </tr>
  

  <tr>
   <td>
    <label for="Cpf">Cpf</label>
   </td>
   <td align="left">
    <input type="text" name="cpfDetento" id="cpfDetento">
    <br>
    <form:errors path="detento.cpfDetento" cssStyle="color:red" />
   </td>
  </tr>
  <tr>
   <td>
    <label for="nomeMae">nome da mãe</label>
   </td>
   <td align="left">
    <input type="text" name="nomeMae" id="nomeMae">
   </td>
  </tr>
   <tr>
   <td>
    <label for="enderecoDetento">Endereço:</label>
   </td>
   <td align="left">
    <input type="text" name="enderecoDetento" id="enderecoDetento">
   </td>
  </tr>
  
     
  
 </table>
</fieldset>
<fieldset>
<table cellspacing="10">
<tr>
   <td>
    <label for="dataJulgamento">Data de Julgamento:</label>
   </td>
   <td align="left">
    <input type="text" name="dataJulgamento" id="dataJulgamento"><br>

   </td>
  </tr>
  <tr>
   <td>
    <label for="presidio">Presidio:</label>
   </td>
   <td align="left">
    <select name="presidio" >
     <option value="-1"> Selecione </option>
<c:forEach items="${listaPresidio}" var="obj"> 
<option value="${obj.idPresidio}">${obj.nomePresidio}</option> </c:forEach> </select> 
   </td>
  </tr>
  <tr>
   <td>
    <label for="liberdadeProvisoria">Liberdade Provisória:</label>
   </td>
   <td align="left">
    <select name="liberdadeProvisoria" >
     <option value="-1"> Selecione </option>
     <option value="Sim"> Sim </option>
     <option value="Não"> Não </option>

</select> 
   </td>
  </tr>
  <tr>
   <td>
    <label for="numeroProcesso">Numero do Processo</label>
   </td>
   <td align="left">
    <input type="text" name="numeroProcesso" id="numeroProcesso">
   </td>
  </tr>
  
</table>
</fieldset>


<br />


<br />
<input type="submit" value="inserir" >
<input type="reset" value="Limpar">
</div>
</div>
</form> --%>

</body>
</html>