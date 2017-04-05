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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CADASTRO DE DETENTO</title>

<c:import url="../bootstrapTiago/bootStrap.jsp"></c:import>

<script language="JavaScript" type="text/javascript">

// mascara cpf
function FormataCpf(campo, teclapres)
{
	var tecla = teclapres.keyCode;
	var vr = new String(campo.value);
	vr = vr.replace(".", "");
	vr = vr.replace("/", "");
	vr = vr.replace("-", "");
	tam = vr.length + 1;
	if (tecla != 14)
	{
		if (tam == 4)
			campo.value = vr.substr(0, 3) + '.';
		if (tam == 7)
			campo.value = vr.substr(0, 3) + '.' + vr.substr(3, 6) + '.';
		if (tam == 11)
			campo.value = vr.substr(0, 3) + '.' + vr.substr(3, 3) + '.' + vr.substr(7, 3) + '-' + vr.substr(11, 2);
	}
}

//mascara data
function mascaraData( campo, e )
{
	var kC = (document.all) ? event.keyCode : e.keyCode;
	var data = campo.value;
	
	if( kC!=8 && kC!=46 )
	{
		if( data.length==2 )
		{
			campo.value = data += '/';
		}
		else if( data.length==5 )
		{
			campo.value = data += '/';
		}
		else
			campo.value = data;
	}
}

</script>





</head>
<body>
<c:import url="../comum/MenuBoots.jsp"></c:import>
<c:import url="../comum/MenuDetento.jsp"></c:import>


  <h2><b> Cadastro de Detento</b></h2>
  
<form name="form1" action="CadastrarDetento" method="POST">

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
    <input type="text" name="cpfDetento" id="cpfDetento"  >
    	<!-- se for colocar mascara em CPF coloca este no input: onkeypress="mascaraData( this, event )"  -->
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
    <input type="text" name="dataJulgamento" id="dataJulgamento" onkeypress="mascaraData( this, event )" maxlength="10"><br>

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
