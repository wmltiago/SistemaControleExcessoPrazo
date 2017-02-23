<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title> Cadastrar presídio</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src ="mycode.js"></script>

<script type="text/javascript">

function verificaTudo() {
	var nome = document.getElementById("nomePresidio");

	if (nome.value == "") {
		alert("preencha o campo nome");
		nome.focus();
		return false;
	}
	var selectEstado = document.getElementById("estado");
	var selectCidade = document.getElementById("cidade");
	var selectTipo = document.getElementById("tipoPresidio");

	if (selectEstado.value == "") {
		alert("Escolha um estado");
		selectEstado.focus();
		return false;
	}
	if (selectCidade.value == "") {
		alert("Escolha uma Cidade");
		selectCidade.focus();
		return false;
	}
	if (selectTipo.value == "") {
		alert("Escolha um Tipo");
		selectTipo.focus();
		return false;
	}
	return true;
}

</script>
</head>
<body>


  <h2><b> Cadastro de presídio</b></h2>

<form action="cadastrarPresidio" method="post">



<br />
<!-- ENDEREÇO -->
<fieldset>
 <legend>Dados para cadastro do Presídio</legend>
 <table cellspacing="10">

  <tr>
   <td>
    <label >Nome</label>
   </td>
   <td align="left">
    <input type="text" name="nomePresidio" id="nomePresidio">
   </td>
   
  </tr>
  
  <tr>
   <td>
    <label for="estado">Estado:</label>
   </td>
   <td align="left">
    <select name="estado" id="estado"> 
    <option value=""></option>
    <option value="ac">Acre</option> 
    <option value="al">Alagoas</option> 
    <option value="am">Amazonas</option> 
    <option value="ap">Amapá</option> 
    <option value="ba">Bahia</option> 
    <option value="ce">Ceará</option> 
    <option value="df">Distrito Federal</option> 
    <option value="es">Espírito Santo</option> 
    <option value="go">Goiás</option> 
    <option value="ma">Maranhão</option> 
    <option value="mt">Mato Grosso</option> 
    <option value="ms">Mato Grosso do Sul</option> 
    <option value="mg">Minas Gerais</option> 
    <option value="pa">Pará</option> 
    <option value="pb">Paraíba</option> 
    <option value="pr">Paraná</option> 
    <option value="pe">Pernambuco</option> 
    <option value="pi">Piauí</option> 
    <option value="rj">Rio de Janeiro</option> 
    <option value="rn">Rio Grande do Norte</option> 
    <option value="ro">Rondônia</option> 
    <option value="rs">Rio Grande do Sul</option> 
    <option value="rr">Roraima</option> 
    <option value="sc">Santa Catarina</option> 
    <option value="se">Sergipe</option> 
    <option value="sp">São Paulo</option> 
    <option value="to">Tocantins</option> 
   </select>
   </td>
  </tr>
  <tr>
   <td>
    <label for="cidade">Cidade: </label>
   </td>
   <td align="left">
    <input type="text" name="cidade" id="cidade">
   </td>
  </tr>
  <tr>
  <td>
  <label for="estado">Tipo:</label>
   </td>
   <td align="left">
    <select name="tipoPresidio" id="tipoPresidio"> 
    <option value=""></option>
    <option value="estadual">Estadual</option> 
    <option value="federal">Federal</option> 
     
   </select>
   </td>
   </tr>
   
  
 </table>
</fieldset>
<br />


<br />
<input type="submit" value="inserir" onclick='return verificaTudo();'>
<input type="reset" value="Limpar">
</form>


</body>
</html>