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
<title>Insert title here</title>
</head>
<body>


  <h2><b> Cadastro de Detento</b></h2>
  <div style="text-align: center; color: red;"> ${msg} </div>
<form action="CadastrarDetento" method="POST">



<br />
<!-- ENDERE�O -->
<fieldset>
 <legend>Dados para cadastro do Detento</legend>
 <table cellspacing="10">

  <tr>
   <td>
    <label >Nome</label>
   </td>
   <td align="left">
    <input type="text" name="nomeDetento" id="nomeDetento">
   </td>
   
  </tr>
  

  <tr>
   <td>
    <label for="Cpf">Cpf</label>
   </td>
   <td align="left">
    <input type="text" name="cpfDetento" id="cpfDetento">
   </td>
  </tr>
  <tr>
   <td>
    <label for="nomeMae">nome da m�e</label>
   </td>
   <td align="left">
    <input type="text" name="nomeMae" id="nomeMae">
   </td>
  </tr>
   <tr>
   <td>
    <label for="enderecoDetento">Endere�o:</label>
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
    <input type="text" name="dataJulgamento" id="dataJulgamento">
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
    <label for="liberdadeProvisoria">Liberdade Provis�ria:</label>
   </td>
   <td align="left">
    <select name="liberdadeProvisoria" >
     <option value="-1"> Selecione </option>
     <option value="1"> Sim </option>
     <option value="0"> N�o </option>

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