<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pena Presídio</title>


<script type="text/javascript" src ="mycode.js"></script>

<script type="text/javascript">

function verificaNomePena() {
	var nomePenaPresidio = document.getElementById("nomePena");

	if (nomePenaPresidio.value == "") {
		alert("preencha o campo Nome da Pena ");
		nome.focus();
		return false;
	}
	
	return true;
}

</script>
</head>
<body>

	<hr>
	<h3>Pena no  Presidio</h3>
	<hr>
	
	<div style="text-align: center; color: red;"> ${mensagem} </div>
	
	<form action="cadastroPenaPresidio" method="post">
		<br />


 
 <table cellspacing="10">

  <tr>
   <td>
    <label >Nome da Pena</label>
   </td>
   <td align="left">
    <input type="text" name="nomePena" id="nomePena" >
   </td>
   
  </tr>
  
  

	</table>
	
	<input type="submit" value="Inserir Pena" onclick='return verificaNomePena();'>
	
	</form>
</body>
</html>