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
<title>Listando Detentos</title>
</head>
<body>


		<table border='1' style='width: 100%;'>
	
		<tr style='background-color: #E6E6E6; font-weight: bold;'>
		
			<td>ID</td>
			
			<td>NOME DO DETENTO</td> 
			
			<td>CPF</td> 
			
			<td>NOME DA M�E</td> 
			
			<td>ENDERE�O</td>
			
			<td>Data de Julgamento</td>
			
			<td>Liberdade Provis�ria</td>
			
			<td>Numero do Processo</td>
			
			<td>PRESIDIO</td>
			
			<td>A��ES </td>
			
			
			
			  
			
			<c:forEach var="detento" items="${listaDetento}">
				<tr>
					<td>${detento.idDetento}</td>
					<td>${detento.nomeDetento}</td> 
					<td>${detento.cpfDetento}</td>
					<td>${detento.nomeMae}</td>
					<td>${detento.enderecoDetento}</td>
					<td><fmt:formatDate value='${detento.dataJulgamento}' pattern='dd/MM/yyyy' /></td>
					<td>${detento.liberdadeProvisoria}</td>
					<td>${detento.numeroProcesso}</td>
					<td>${detento.presidio.nomePresidio}</td>
					<td><a href='exibirAlterarDetento?id=${detento.idDetento}'>Editar</a> &nbsp;
	    		<a href='removerDetento?id=${detento.idDetento}'>Remover</a>
				</td>
					
					
					
			</c:forEach>
	</table>
	<br><br>
	
	

</body>
</html>