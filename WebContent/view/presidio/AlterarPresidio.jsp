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

		<form:errors path="presidio.estadoPresidio" cssStyle="color:red" />
        <form:errors path="presidio.tipoPresidio" cssStyle="color:red" />
		
			NomePresidio: <br />
			<input type="text" name="nomePresidio" value="${presidio.nomePresidio}" />
			<input type="hidden" name="idPresidio" value="${presidio.idPresidio}" />
		</p>
	
	    <p>
			
   <tr>
   <td>
    <label for="estado">Estado:</label>
   </td>
   <td align="left">
    <select name="estadoPresidio" id="estado"> 
    <option value=""></option>
    <option value="AC">Acre</option> 
    <option value="AL">Alagoas</option> 
    <option value="AM">Amazonas</option> 
    <option value="AP">Amapá</option> 
    <option value="BA">Bahia</option> 
    <option value="CE">Ceará</option> 
    <option value="DF">Distrito Federal</option> 
    <option value="ES">Espírito Santo</option> 
    <option value="GO">Goiás</option> 
    <option value="MA">Maranhão</option> 
    <option value="MT">Mato Grosso</option> 
    <option value="MS">Mato Grosso do Sul</option> 
    <option value="MG">Minas Gerais</option> 
    <option value="PA">Pará</option> 
    <option value="PB">Paraíba</option> 
    <option value="PR">Paraná</option> 
    <option value="PE">Pernambuco</option> 
    <option value="PI">Piauí</option> 
    <option value="RJ">Rio de Janeiro</option> 
    <option value="RN">Rio Grande do Norte</option> 
    <option value="RO">Rondônia</option> 
    <option value="RS">Rio Grande do Sul</option> 
    <option value="RR">Roraima</option> 
    <option value="SC">Santa Catarina</option> 
    <option value="SE">Sergipe</option> 
    <option value="SP">São Paulo</option> 
    <option value="TO">Tocantins</option> 
   </select>
   </td>
  </tr>
		
		</p>
	    
	    
	    <p>
			CidadePresidio:<br />
			<input type="text" name="CidadePresidio" value="${presidio.cidadePresidio}" />
		    
		
		
		</p>
	
	    <p>
			<label for="tipo">TipoPresidio:</label>
		   	<td align="left">
		    <select name="tipoPresidio" id="tipoPresidio"> 
            <option value=""></option>
            <option value="Estadual">Estadual</option> 
            <option value="Federal">Federal</option> 
     
   </select>
	
		</p>

        <p> <input type="submit" value="Alterar"> </p>
	   
	   </form>

</body>
</html>