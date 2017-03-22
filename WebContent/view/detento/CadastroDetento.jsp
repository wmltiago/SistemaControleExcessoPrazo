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
<script type="text/javascript" src="view/js/maskedinput.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CADASTRO DE DETENTO</title>
<script type="text/javascript">

    jQuery(function($){
       $("#dataJulgamento").mask("99/99/9999");
    });

</script>
</head>
<body>


  <h2><b> Cadastro de Detento</b></h2>
  <div style="text-align: center; color: red;"> ${msg} </div>
<form action="CadastrarDetento" method="POST">



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
</form>

</body>
</html>