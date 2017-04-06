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
<title>Alterar Presidio</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="../bootstrapTiago/bootStrap.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CADASTRO DE DETENTO</title>

<!-- Isso � necess�rio para funcionar a vers�o mobile -->
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
      <a href="#" class="help-suggestions ico-question hidden-xs">Ajuda e Sugest�es</a>
 
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
        <li><a href="exibirCadastrarUsuario2" role="menuitem">Usu�rios</a></li>
        <li><a href="exibirCadastrarPresidio" role="menuitem">Pres�dios</a>
        <!--    <ul>
            <li><a href="#">Enviar</a></li>
            <li><a href="#">Criar</a></li>
            <li><a href="#">Editar</a></li>
            <li><a href="#">Relat�rios</a></li>
          </ul> -->
        </li>
        <li><a href="exibirCadastrarDetento" role="menuitem">Detentos</a></li>        
        
      </ul>
    </menu>
    <h2 class="title-sep visible-xs">Mais</h2>
    <ul class="nav-mob-list visible-xs">
      <li><a href="#" class="ico-help-circle">Ajuda e sugest�es</a></li>
    </ul>
  </div>
 
  <!-- Aqui come�a a parte de conte�do dividido por colunas -->
  <main class="main">
    <div class="container">
      <div class="row">
        <div class="col-md-9 content" role="main">


	<hr><h3>Alterar Presidio</h3><hr>
	
	<div style="text-align: center; color: red;"> ${msg} </div>
	
	<form action="alterarPresidio" method="post">

		<form:errors path="presidio.estadoPresidio" cssStyle="color:red" />
        <form:errors path="presidio.tipoPresidio" cssStyle="color:red" />
		
			NomePresidio: <br />
			<input type="text" name="nomePresidio" value="${presidio.nomePresidio}" />
			<input type="hidden" name="idPresidio" value="${presidio.idPresidio}" />
		</p>
	
	    <p>
			
   <tr>
   <td>
    <label for="estado">Estado:</label>
   </td>
   <td align="left">
    <select name="estadoPresidio" id="estado"> 
    <option value=""></option>
    <option value="AC">Acre</option> 
    <option value="AL">Alagoas</option> 
    <option value="AM">Amazonas</option> 
    <option value="AP">Amap�</option> 
    <option value="BA">Bahia</option> 
    <option value="CE">Cear�</option> 
    <option value="DF">Distrito Federal</option> 
    <option value="ES">Esp�rito Santo</option> 
    <option value="GO">Goi�s</option> 
    <option value="MA">Maranh�o</option> 
    <option value="MT">Mato Grosso</option> 
    <option value="MS">Mato Grosso do Sul</option> 
    <option value="MG">Minas Gerais</option> 
    <option value="PA">Par�</option> 
    <option value="PB">Para�ba</option> 
    <option value="PR">Paran�</option> 
    <option value="PE">Pernambuco</option> 
    <option value="PI">Piau�</option> 
    <option value="RJ">Rio de Janeiro</option> 
    <option value="RN">Rio Grande do Norte</option> 
    <option value="RO">Rond�nia</option> 
    <option value="RS">Rio Grande do Sul</option> 
    <option value="RR">Roraima</option> 
    <option value="SC">Santa Catarina</option> 
    <option value="SE">Sergipe</option> 
    <option value="SP">S�o Paulo</option> 
    <option value="TO">Tocantins</option> 
   </select>
   </td>
  </tr>
		
		</p>
	    
	    
	    <p>
			CidadePresidio:<br />
			<input type="text" name="CidadePresidio" value="${presidio.cidadePresidio}" />
		    
		
		
		</p>
	
	    <p>
			<label for="tipo">TipoPresidio:</label>
		   	<td align="left">
		    <select name="tipoPresidio" id="tipoPresidio"> 
            <option value=""></option>
            <option value="Estadual">Estadual</option> 
            <option value="Federal">Federal</option> 
     
   </select>
	
		</p>

        <p> <input type="submit" value="Alterar"> </p>
	   
	   </form>
	   
	    </div>
      
      <!-- AQUI TERMINA O FORMULARIO DE USUARIO -->
      
      
      <!-- AQUI COME�A O SIDE BAR -->
        
        <aside class="col-md-3 sidebar" role="complementary">
         
          	<section class="sidebox">
		<h1 class="sidebox-title ico-question">Outras a��es</h1>
		<ul class="sidebox-list">
			<li><a class="ico-redo-2 ico-pos-right" href="listarPresidio">Listar Pres�dio</a></li>
			<li><a class="ico-redo-2 ico-pos-right" href="listarTipoUsuario">Tipos de Usu�rios</a></li>			
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
          <li><a href="#" class="bg-statusblog"><span class="visible-lg">D�vidas</span></a></li>
        </ul>
      </nav>
    </div>
    <div class="container footer-info">
      <span class="last-access ico-screen"><strong>�ltimo acesso: </strong>7/8/2011 22:35:49</span>
      <div class="set-ip"><span class="set-ip"><strong>IP:</strong> 201.87.65.217</span></div>
      <p class="copy-right">Copyright � 1997-2011 Animaniac's Enterprise S/A.</p>
    </div>
  </footer>
 
  <!-- Scripts - Atente-se na ordem das chamadas -->
  <script type="text/javascript" src="//code.jquery.com/jquery-2.0.3.min.js"></script>
  <script type="text/javascript" src="//assets.locaweb.com.br/locastyle/2.0.6/javascripts/locastyle.js"></script>
  <script type="text/javascript" src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

</body>
</html>