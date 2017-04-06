<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="estilo.css">
<link rel="stylesheet" type="text/css" href="login.css">
<link href='https://fonts.googleapis.com/css?family=Lato:300'
	rel='stylesheet' type='text/css'>
<title>Cadastro de usuário</title>

<c:import url="../bootstrapTiago/bootStrap.jsp"></c:import>

</head>
<body>
	<div style="text-align: center; color: red; font-size: 30px;">
		${msg}</div>
	<c:import url="/view/comum/MenuBoots.jsp" />
	<c:import url="/view/comum/MenuUsuario.jsp" />
	<form class="form-horizontal" action="CadastrarUsuario2" method="post">




		<fieldset>
			<br>
			<!-- Form Name -->
			<center>
				<legend>
					<h3>
						<b>Cadastro de usuário</b>
					</h3>
				</legend>
			</center>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="">Nome</label>
				<div class="col-md-4">
					<input id="" name="nomeUsuario" placeholder=""
						class="form-control input-md" type="text">
					<div>
						<form:errors path="usuario.nomeUsuario" cssStyle="color:red" />
					</div>
				</div>
			</div>

			<!-- Select Basic -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="selectbasic">Tipo
					de usuário</label>
				<div class="col-md-4">
					<select id="id_tipousuario" name="tipoUsuario" class="form-control">
						<option value=""></option>
						<c:forEach items="${listaTipoUsuario}" var="obj">
							<option value="${obj.idTipoUsuario}">
								${obj.descricaoUsuario}</option>
							<!-- VARIAVEL IGUAL AO NOME DA CLASSE BASICA -->
						</c:forEach>
					</select>
				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">Endereço</label>
				<div class="col-md-4">
					<input id="textinput" name="enderecoUsuario"
						placeholder="Rua Amarela, Piedade, 250"
						class="form-control input-md" type="text">

				</div>
			</div>

			

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="textinput">CPF</label>
				<div class="col-md-4">
					<input id="textinput" name="cpfUsuario"
						placeholder="000.000.000-00" class="form-control input-md"
						type="text" maxlength="11">
					<div>
						<form:errors path="usuario.cpfUsuario" cssStyle="color:red" />
					</div>
				</div>
			</div>
			
			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="passwordinput"></label>
				<div class="col-md-4">
					<input id="passwordinput" name="senhaUsuario"
						placeholder="********" class="form-control input-md"
						type="hidden" value="1234">

				</div>
			</div>

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="button1id"></label>
				<div class="col-md-8">
					<button id="button1id" name="button1id" class="btn btn-success"
						type="submit" value="inserir">Inserir</button>
					<button id="button2id" name="button2id" class="btn btn-default"
						type="reset" value="Limpar">Limpar</button>
				</div>
			</div>

		</fieldset>
	</form>

</body>
</html>