<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page import="java.util.List" %>
<%@ page import="model.usuario.UsuarioDao" %>
<%@ page import="model.usuario.UsuarioDao" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listagem de usuários</title>
</head>
<body>

<center><hr><h3>Lista de usuários</h3><hr></center>
	
	<div style="text-align: center; color: red;"> ${mensagem} </div>

	<table border='1' style='width: 100%;'>
		<tr style='background-color: #E6E6E6; font-weight: bold;'>
			<td> ID </td>
			<td> CPF </td>
			<td> NOME </td>
			<td> ENDEREÇO </td>
			<td> TIPO USUÁRIO </td>
			<td> # </td>
		</tr>
	
		<c:forEach var="usuario" items="${listaUsuario}">
			<tr>
				<td> ${usuario.id} </td>
				<td> ${usuario.cpf} </td>
				<td> ${usuario.nome} </td>
				<td> ${usuario.endereco} </td>
				<td> ${usuario.id_tipousuario} </td>
				
				<td><a href="removerUsuario?id=${usuario.id}">Remover</a>
					<a href="exibirAlterarUsuario?id=${usuario.id}">Alterar</a> <!-- Aqui envia pro jsp com o id, para que ele busque no abnco -->
					<a href="exibirCadastrarUsuario">Incluir</a>
				</td>
				
			</tr>
		</c:forEach>
	</table>
</body>
</body>
</html>