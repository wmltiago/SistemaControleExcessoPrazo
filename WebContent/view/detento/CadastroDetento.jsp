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
<title>CADASTRO DE DETENTO</title>


</head>
<body>
<c:import url="../comum/MenuBoots.jsp"></c:import>
<c:import url="../comum/MenuDetento.jsp"></c:import>


  <form class="form-horizontal" action="CadastrarDetento" method="POST">
<fieldset>

<!-- Form Name -->
<legend> Cadastro de Detento</legend>
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
  <input id="cpfDetento" name="cpfDetento" type="text" placeholder="Cpf " class="form-control input-md" required="">
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