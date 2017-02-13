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
<title>Insert title here</title>
</head>
<body>

<table border='1' style='width: 100%;'>
		<tr>
			<td> ID </td>
			<td> cpf </td>
			<td> nome</td>
			<td> senha</td>
			<td> endereco </td>
			
			
			<td> AÇÕES </td>
		</tr>
		
		<jsp:useBean id="dao" class="model.usuario.UsuarioDao"/>
		
	<c:forEach var="usuario" items="${listarUsuario}"> 

		<tr>
			<td> ${usuario.id} </td>
			<td> ${usuario.cpf} </td>
			<td> ${usuario.nome} </td>
			<td> ${usuario.senha} </td>
			<td> ${usuario.endereco} </td>
</c:forEach> 
</body>
</html>