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


<script type="text/javascript" src="view/js/jquery-2.1.4.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#nomeDetento").keyup(function() {
			
			var texto = $('#nomeDetento').val();
			var cpfDetento = $('#cpfDetento').val();
			$.post("pesquisandoDetento", {
				'nomeDetento' : texto,
				'cpfDetento' : cpfDetento
			}, function(dados) {
				$('#tabelaListaDetento').html(dados);
			});
		});
		$("#cpfDetento").change(function() {
			var texto = $('#nomeDetento').val();
			var cpfDetento = $('#cpfDetento').val();
			$.post("pesquisandoDetento", {
				'nomeDetento' : texto,
				'cpfDetento' : cpfDetento
			}, function(dados) {
				$('#tabelaListaDetento').html(dados);
			});
		});
	});
</script>



<c:import url="../bootstrapTiago/bootStrap.jsp"></c:import>

</head>
<body>

	<c:import url="../comum/MenuBoots.jsp"></c:import>
	<c:import url="../comum/MenuDetento.jsp"></c:import>

	<hr>
	<center>
		<h3>Pesquisar Detento</h3>
	</center>
	<hr>

	<div>


		<form class="form-horizontal" >
			<fieldset>



				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="nomeDetento">Nome</label>
					<div class="col-md-6">
						<input id="nomeDetento" name="nomeDetento" type="text" placeholder="placeholder" class="form-control input-md"
							 value="${detento.nomeDetento}">




					</div>

				</div>
				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="cpfDetento">Cpf</label>
					<div class="col-md-6">
						<input id="cpfDetento" name="cpfDetento" type="text" placeholder="placeholder" class="form-control input-md"
							 value="${detento.cpfDetento}">




					</div>

				</div>




			</fieldset>
		</form>







	




	</div>

<div class="container">
		<div class="row">
			<div class="col-md-12">


				<table class="table" id="tabelaListaDetento">
					<thead>
						<tr>
							<th>Nome</th>
							<th>CPF</th>
							<th>Nome da Mãe</th>
							<th>Data de Julgamento</th>
							<th>Número do Processo</th>
							<th>Presídio</th>
							<th>Status</th>
							<th>Ações<th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="detento" items="${listaDetento}">
							<c:if test="${detento.status == 2}">

								<tr class="danger">
							</c:if>
							<c:if test="${detento.status == 1}">

								<tr class="warning">
							</c:if>
							<c:if test="${detento.status == -1}">

								<tr class="success">
							</c:if>
							<td>${detento.nomeDetento}</td>
							<td>${detento.cpfDetento}</td>
							<td>${detento.nomeMae}</td>
<td><fmt:formatDate value='${detento.dataJulgamento}'
									pattern='dd/MM/yyyy' /></td>
							<td>${detento.numeroProcesso}</td>
							<td>${detento.presidio.nomePresidio}</td>
							
							<c:if test="${detento.status == -1}">
								<td>No prazo</td>
							</c:if>
							<c:if test="${detento.status == 1}">
								<td>Hoje</td>
							</c:if>
							<c:if test="${detento.status == 2}">
								<td>Atrasado</td>
							</c:if>
							<td><a href='exibirAlterarDetento?id=${detento.idDetento}'>Editar</a>
						&nbsp; <a href='removerDetento?id=${detento.idDetento}'>Remover</a>
						
						
					</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>




	<%-- <table border='1' style='width: 100%;' id="tabelaListaDetento">

		<tr style='background-color: #E6E6E6; font-weight: bold;'>



			<td>NOME DO DETENTO</td>

			<td>CPF</td>

			<td>NOME DA MÃE</td>



			<td>Data de Julgamento</td>



			<td>Numero do Processo</td>

			<td>PRESIDIO</td>

			<td>AÇÕES</td>





			<c:forEach var="detento" items="${listaDetento}">
				<tr>

					<td>${detento.nomeDetento}</td>
					<td>${detento.cpfDetento}</td>
					<td>${detento.nomeMae}</td>

					<td><fmt:formatDate value='${detento.dataJulgamento}'
							pattern='dd/MM/yyyy' /></td>

					<td>${detento.numeroProcesso}</td>
					<td>${detento.presidio.nomePresidio}</td>
					<td><a href='exibirAlterarDetento?id=${detento.idDetento}'>Editar</a>
						&nbsp; <a href='removerDetento?id=${detento.idDetento}'>Remover</a>
					</td>
			</c:forEach>
	</table> --%>
	<br>
	<br>



</body>
</html>