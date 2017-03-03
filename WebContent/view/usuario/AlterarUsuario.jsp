<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<hr><h3>Alterar Usuario</h3><hr>
	
	<div style="text-align: center; color: red;"> ${msg} </div>
	
	<form action="AlterarUsuario" method="post">
	
		<input type="hidden" name="senha" value="${usuario.senha}" />


		<input type="hidden" name="id" value="${usuario.id}" />
	
		<p>
			Nome: <br />
			<input type="text" name="nome" value="${usuario.nome}" />
		</p>
		
		
		
		<p>
			CPF: <br />
			<input type="text" name="cpf" value="${usuario.cpf}" />
		</p>
		
		<p>
			Endereço: <br />
			<input type="text" name="endereco" value="${usuario.endereco}" />
		</p>
		
		
		
		<p> <input type="submit" value="Alterar"> </p>
	</form>

</body>
</html>