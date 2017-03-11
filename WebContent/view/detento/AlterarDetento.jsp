<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	

	<hr><h3>Alterar Detento</h3><hr>
	
	<div style="text-align: center; color: red;"> ${msg} </div>
	
	<form action="alterarDetento" method="post">

		<input type="hidden" name="idDetento" value="${detento.idDetento}" />
	
		<p>
			nomeDetento: <br />
			<input type="text" name="nomeDetento" value="${detento.nomeDetento}" />
		</p>
		<p>
			cpfDetento: <br />
		<input type="text" name="cpfDetento" value="${detento.cpfDetento}" />
		</p>
		<p>
			nomeMae: <br />
			<input type="text" name="nomeMae" value="${detento.nomeMae}" />
		</p>
		<p>
			enderecoDetento: <br />
			<input type="text" name="enderecoDetento" value="${detento.enderecoDetento}" />
		</p>
		<p>
			dataJulgamento: <br />
			<input type="text" name="dataJulgamento" value="<fmt:formatDate value='${detento.dataJulgamento}' pattern='dd/MM/yyyy' />" />
		</p>
		<p>
			liberdadeProvisoria: <br />
			<input type="text" name="liberdadeProvisoria" value="${detento.liberdadeProvisoria}" />
		</p>
		<p>
			numeroProcesso: <br />
			<input type="text" name="numeroProcesso" value="${detento.numeroProcesso}" />
		</p>
		
		<p>
			presidio: <br />
			<select name="presidio" >
				<option value="${detento.presidio.idPresidio}">${detento.presidio.nomePresidio}</option>
				<c:forEach items="${listaPresidio}" var="obj">
					<option value="${obj.idPresidio}"> 
						${obj.nomePresidio} 
					</option>
				</c:forEach> 
			</select>
		</p>
		
		
		
		
		
		<p> <input type="submit" value="Alterar"> </p>
	</form>

</body>
</html>