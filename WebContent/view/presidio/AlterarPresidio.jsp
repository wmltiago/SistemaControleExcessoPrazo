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


			<table border='1' style='width: 100%;'>

				<tr style='background-color: #E6E6E6; font-weight: bold;'>

					<form action='alterarPresidio'>

						<td>id</td>
						<td>nome</td>
						<td>estado</td>
						<td>cidade</td>
						<td>tipo</td>

						<c:forEach var="presidio" items="${alterarPresidio}">
							<tr>
								<td><input type='hidden' name='id' value='${presidio.id}' />
									<br /></td>
							<tr>                      
								<td align="left">Nome Presidio: <input type='text'
									name='nome' value='${presidio.nome}' /> <br />
								</td>
							<tr>
								<td align="left">Estado: <input type='text' name='estado'
									value='${presidio.estado}' /> <br />
								</td>
							<tr>
								<td align="left">Cidade: <input type='text' name='cidade'
									value='${presidio.cidade}' /><br /> <br>
								</td>
							<tr>
								<td align="left">Tipo: <input type='text' name='tipo'
									value='${presidio.tipo}' /><br /> <br>
								</td>
					
					</c:forEach>
			</form>
			</table>
			</fieldset>
			<br>

			<input type='submit' value='Alterar' />
</body>
</html>