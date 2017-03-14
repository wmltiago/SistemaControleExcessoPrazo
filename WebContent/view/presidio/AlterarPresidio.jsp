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

	<hr><h3>Alterar Presidio</h3><hr>
	
	<div style="text-align: center; color: red;"> ${msg} </div>
	
	<form action="alterarPresidio" method="post">

		<input type="hidden" name="idPresidio" value="${presidio.idPresidio}" />
	
		<p>
			nomePresidio: <br />
			<input type="text" name="nomePresidio" value="${presidio.nomePresidio}" />
		</p>
	
	    <p>
			estadoPresidio: <br />
			<input type="text" name="estadoPresidio" value="${presidio.estadoPresidio}" />
		</p>
	    
	    <p>
			cidadePresidio: <br />
			<input type="text" name="cidadePresidio" value="${presidio.cidadePresidio}" />
		</p>
	
	    <p>
			tipoPresidio: <br />
			<input type="text" name="tipoPresidio" value="${presidio.tipoPresidio}" />
		</p>

     
        <p> <input type="submit" value="Alterar"> </p>
	   
	   </form>

</body>
</html>