<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="estilo.css"> 
		<link rel="stylesheet" type="text/css" href="login.css"> 
	<link href='https://fonts.googleapis.com/css?family=Lato:300' rel='stylesheet' type='text/css'>
<title>Cadastro de usuário</title>

<c:import url="../bootstrapTiago/bootStrap.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>

<c:import url="/view/comum/menu.jsp" />

<div style="text-align: center; color: red; font-size: 30px;"> ${msg} </div>

	<hr>
	<h3>Incluir Categoria de Produto</h3>
	<hr>
	
	
		
	
	<form class="form-horizontal" action="IncluirTipoUsuario" method="post">
<fieldset>
<br>
<!-- Form Name -->
<center><legend><h3><b>Cadastrar Tipo usuário</b></h3></legend></center>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="">Descrição</label>  
  <div class="col-md-4">
  <input id="" name="descricaoUsuario" placeholder="" class="form-control input-md" type="text" value="">
    
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="button1id"></label>
  <div class="col-md-8">
    <button id="button1id" name="button1id" class="btn btn-success" type="submit" value="inserir">Inserir</button>
    <button id="button2id" name="button2id" class="btn btn-default" type="reset" value="Limpar">Limpar</button>
  </div>
</div>



</fieldset>
</form>
	


</body>
</html>