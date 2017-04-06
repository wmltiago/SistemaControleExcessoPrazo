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


	<c:import url="/view/comum/menu.jsp" />

	<hr>
	<h3>Alterar Tipo de Usuario</h3>
	<hr>
	
	<form action="AlterarTipoUsuario" method="post">
		
		<input type="disabled" name="idTipoUsuario" value="${usuario.idTipoUsuario}">
		
		
		
		<p>
			Descrição: <br />
			<input type="text" name="descricao" value="${usuario.descricaoUsuario}" style="width: 400px;" />
		</p>
		
		<br />
		
		<p>
			<input type="reset" value="Limpar"> &nbsp; &nbsp;
			<input type="submit" value="Alterar">
		</p>
		
	</form>

</body>
</html>