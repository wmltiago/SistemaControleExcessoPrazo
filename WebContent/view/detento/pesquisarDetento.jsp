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

<!--  
	<script type="text/javascript" src="view/js/jquery-2.1.4.js"></script>

<script type="text/javascript" >

	$(document).ready(function() {

		$("#nomeDetento").keyup(function() {

			var textoNome = $('#nomeDetento').val();
			

			$.post("pesquisandoDetento", {
				'nomeDetento' : texto,
				
			}, function(dados) {
				$('#tabelaListaDetento').html(dados);
			});
		});

		
	});
</script>
	
	-->


</head>
<body>


	<hr>
	<h3>Pesquisar Produto</h3>
	<hr>
	
	<div>
		<form action="pesquisandoDetento">
		
	 <tr>
   <td>
    <label >Nome</label>
   </td>
   <td align="left">
    <input type="text" name="nomeDetento" id="nomeDetento" value="${detento.nomeDetento}">
    <td>
    
   </td>

  </tr>
			
			<p>
			<input type="reset" value="Limpar"> &nbsp; &nbsp;
			<input type="submit" value="Pesquisar">
			</p>
			
			
		</form>
	</div>
	


		<table border='1' style='width: 100%;' id="tabelaListaDetento">
	
		<tr style='background-color: #E6E6E6; font-weight: bold;'>
		
			
			
			<td>NOME DO DETENTO</td> 
			
			<td>CPF</td> 
			
			<td>NOME DA MÃE</td> 
			
			
			
			<td>Data de Julgamento</td>
			
			
			
			<td>Numero do Processo</td>
			
			<td>PRESIDIO</td>
			
			<td>AÇÕES </td>
			
			
			
			  
			
			<c:forEach var="detento" items="${listaDetento}">
				<tr>
					
					<td>${detento.nomeDetento}</td> 
					<td>${detento.cpfDetento}</td>
					<td>${detento.nomeMae}</td>
					
					<td><fmt:formatDate value='${detento.dataJulgamento}' pattern='dd/MM/yyyy' /></td>
					
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