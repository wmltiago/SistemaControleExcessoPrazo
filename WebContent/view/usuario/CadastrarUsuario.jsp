<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de usu�rio</title>
</head>
<body>

<center><hr><h3>Cadastro de usu�rio</h3><hr></center>
	
	<div style="text-align: center; color: red;"> ${msg} </div>
	
	<form action="CadastrarUsuario" method="post">
<br />

<fieldset>
 <legend>Dados para cadastro de usu�rio</legend>
 <table cellspacing="10">

  <tr>
   <td>
    <label >Nome</label>
   </td>
   <td align="left">
    <input type="text" name="nome" id="#">
   </td>
   
  </tr>
  
  <tr>
  	 <td>
    			<label for="tipoUsuario">Tipo de usu�rio:</label>
   	</td>
   	<td align="left">
			    <select name="id_tipousuario" id="#"> 
			    <option value=""></option>
			    <option value="1">ADM</option> 
			    <option value="2">Ger�ncia</option> 
			    <option value="3">Colaborador</option>    
			   </select>
   	</td>
  </tr>
  <tr>
		   <td>
		    <label for="cpf">CPF: </label>
		   </td>
		   <td align="left">
		    <input type="text" name="cpf" id="#">
		   </td>
  </tr>
			  <tr>
			 <td>
			 <label for="endereco">Endere�o:</label>
			</td>
			   <td align="left">
			    <input type="text" name="endereco" id="#">
			   </td>
			   </tr>
   <tr>
   <td>
    <label >Senha</label>
   </td>
   <td align="left">
    <input type="password" name="senha" id="#">
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



</body>
</html>