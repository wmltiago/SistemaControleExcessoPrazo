<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


  <h2><b> Cadastro de Detento</b></h2>

<form action="cadastrarDetento" method="post">



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
<br />


<br />
<input type="submit" value="inserir" >
<input type="reset" value="Limpar">
</form>

</body>
</html>