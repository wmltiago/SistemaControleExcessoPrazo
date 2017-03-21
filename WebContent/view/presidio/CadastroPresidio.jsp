<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title> Cadastrar presídio</title>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src ="mycode.js"></script>
<c:import url="/view/comum/menu.jsp" />

</head>
<body>


  <h2><b> Cadastro de presídio</b></h2><br>
  <div style="text-align: center; color: red;"> ${msg} </div>

<form action="cadastrarPresidio" method="post">



<!-- TAGLIB form:errors logo abaixo -->
<form:errors path="presidio.nomePresidio" cssStyle="color:red" />
<form:errors path="presidio.cidadePresidio" cssStyle="color:red" />

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
    <select name="estadoPresidio" id="estado"> 
    <option value=""></option>
    <option value="AC">Acre</option> 
    <option value="AL">Alagoas</option> 
    <option value="AM">Amazonas</option> 
    <option value="AP">Amapá</option> 
    <option value="BA">Bahia</option> 
    <option value="CE">Ceará</option> 
    <option value="DF">Distrito Federal</option> 
    <option value="ES">Espírito Santo</option> 
    <option value="GO">Goiás</option> 
    <option value="MA">Maranhão</option> 
    <option value="MT">Mato Grosso</option> 
    <option value="MS">Mato Grosso do Sul</option> 
    <option value="MG">Minas Gerais</option> 
    <option value="PA">Pará</option> 
    <option value="PB">Paraíba</option> 
    <option value="PR">Paraná</option> 
    <option value="PE">Pernambuco</option> 
    <option value="PI">Piauí</option> 
    <option value="RJ">Rio de Janeiro</option> 
    <option value="RN">Rio Grande do Norte</option> 
    <option value="RO">Rondônia</option> 
    <option value="RS">Rio Grande do Sul</option> 
    <option value="RR">Roraima</option> 
    <option value="SC">Santa Catarina</option> 
    <option value="SE">Sergipe</option> 
    <option value="SP">São Paulo</option> 
    <option value="TO">Tocantins</option> 
   </select>
   </td>
  </tr>
  <tr>
   <td>
    <label for="cidadePresidio">Cidade: </label>
   </td>
   <td align="left">
    <input type="text" name="cidadePresidio" id="cidade">
   </td>
  </tr>
  <tr>
  <td>
  <label for="tipo">Tipo:</label>
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
<input type="submit" value="inserir" >
<input type="reset" value="Limpar">
</form>


</body>
</html>