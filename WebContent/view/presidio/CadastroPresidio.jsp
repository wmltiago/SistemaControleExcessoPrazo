<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title> Cadastrar pres�dio</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


  <h2><b> Cadastro de pres�dio</b></h2>

<form action="cadastrarPresidio" method="post">



<br />
<!-- ENDERE�O -->
<fieldset>
 <legend>Dados para cadastro do Pres�dio</legend>
 <table cellspacing="10">

  <tr>
   <td>
    <label >Nome</label>
   </td>
   <td align="left">
    <input type="text" name="nomePresidio">
   </td>
   
  </tr>
  
  <tr>
   <td>
    <label for="estado">Estado:</label>
   </td>
   <td align="left">
    <select name="estado"> 
    <option value="ac">Acre</option> 
    <option value="al">Alagoas</option> 
    <option value="am">Amazonas</option> 
    <option value="ap">Amap�</option> 
    <option value="ba">Bahia</option> 
    <option value="ce">Cear�</option> 
    <option value="df">Distrito Federal</option> 
    <option value="es">Esp�rito Santo</option> 
    <option value="go">Goi�s</option> 
    <option value="ma">Maranh�o</option> 
    <option value="mt">Mato Grosso</option> 
    <option value="ms">Mato Grosso do Sul</option> 
    <option value="mg">Minas Gerais</option> 
    <option value="pa">Par�</option> 
    <option value="pb">Para�ba</option> 
    <option value="pr">Paran�</option> 
    <option value="pe">Pernambuco</option> 
    <option value="pi">Piau�</option> 
    <option value="rj">Rio de Janeiro</option> 
    <option value="rn">Rio Grande do Norte</option> 
    <option value="ro">Rond�nia</option> 
    <option value="rs">Rio Grande do Sul</option> 
    <option value="rr">Roraima</option> 
    <option value="sc">Santa Catarina</option> 
    <option value="se">Sergipe</option> 
    <option value="sp">S�o Paulo</option> 
    <option value="to">Tocantins</option> 
   </select>
   </td>
  </tr>
  <tr>
   <td>
    <label for="cidade">Cidade: </label>
   </td>
   <td align="left">
    <input type="text" name="cidade">
   </td>
  </tr>
  <tr>
  <td>
  <label for="estado">Tipo:</label>
   </td>
   <td align="left">
    <select name="tipoPresidio"> 
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
<input type="submit" value="inserir">
<input type="reset" value="Limpar">
</form>


</body>
</html>