<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Alterar Presidio</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<body>

	<h2>
		<b> Alterar Presídio </b>
	</h2>
	<fieldset>
		<legend>Dados para alterar Presídio</legend>
		<table cellspacing="10">

			<form action='alterarPresidio'>


                <tr>
                <td>
  				<input type='hidden' name='id' value='${Presidio.id}' /> <br />
                </td>
                <tr>
                <td align="left">
                Nome Presidio: <input type='text' name='nome'value='${presidio.nome}'/> <br /> 
                </td>
                <tr>
                <td align="left">
                Localidade: <input type='text'name='localidade' value='${presidio.localidade}' /> <br />
			    </td>
			    <tr>
			    <td align="left">
			    Tipo Presidio: <input type='text' name='tipo' value='${presidio.tipo}' /><br /> <br> 
				</td>
				
			</form>

		</table>
	</fieldset>
    <br>
   
    <input type='submit' value='Alterar' />

</body>
</html>