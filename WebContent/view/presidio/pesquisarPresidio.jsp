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
<title>Listando Presídios</title>
</head>
<body>
<c:import url="/view/comum/menu.jsp" />
	<hr>
	<h3>Pesquisar Presidio</h3>
	<div>
		<form action="pesquisarPresidio" method="post">
			<p>
				Nome: <br /> <input type="text" id="nomePresidio"
					name="nomePresidio" value="${presidio.nomePresidio}">
			</p>
			<p>
				Estado: <br />
				 <select id="estadoPresidio"
					name="estadoPresidio">
					<option value=""></option>
					<option value="AC">Acre</option> 
				    <option value="AL">Alagoas</option> 
				    <option value="AM">Amazonas</option> 
				    <option value="AP">Amap�</option> 
				    <option value="BA">Bahia</option> 
				    <option value="CE">Cear�</option> 
				    <option value="DF">Distrito Federal</option> 
				    <option value="ES">Esp�rito Santo</option> 
				    <option value="GO">Goi�s</option> 
				    <option value="MA">Maranh�o</option> 
				    <option value="MT">Mato Grosso</option> 
				    <option value="MS">Mato Grosso do Sul</option> 
				    <option value="MG">Minas Gerais</option> 
				    <option value="PA">Par�</option> 
				    <option value="PB">Para�ba</option> 
				    <option value="PR">Paran�</option> 
				    <option value="PE">Pernambuco</option> 
				    <option value="PI">Piau�</option> 
				    <option value="RJ">Rio de Janeiro</option> 
				    <option value="RN">Rio Grande do Norte</option> 
				    <option value="RO">Rond�nia</option> 
				    <option value="RS">Rio Grande do Sul</option> 
				    <option value="RR">Roraima</option> 
				    <option value="SC">Santa Catarina</option> 
				    <option value="SE">Sergipe</option> 
				    <option value="SP">S�o Paulo</option> 
				    <option value="TO">Tocantins</option>
				</select>
			</p>
			<p>
				<input type="reset" value="Limpar"> &nbsp; &nbsp; <input
					type="submit" value="Pesquisar">
			</p>
		</form>
	</div>

	<table border='1' style='width: 100%;'>
	
		<tr style='background-color: #E6E6E6; font-weight: bold;'>
		
			<td>ID</td>
			
			<td>NOME DO PRES�DIO</td> 
			
			<td>ESTADO</td> 
			
			<td>CIDADE</td> 
			
			<td>TIPO DO PRES�DIO</td> 
			
			<td>A��ES</td>
			
			
			  
			
			<c:forEach var="presidio" items="${listaPresidio}">
				<tr>
					<td>${presidio.idPresidio}</td>
					<td>${presidio.nomePresidio}</td> 
					<td>${presidio.estadoPresidio}</td>
					<td>${presidio.cidadePresidio}</td>
					<td>${presidio.tipoPresidio}</td>
					
				     <td><a href='exibirAlterarPresidio?id=${presidio.idPresidio}'>Editar</a> &nbsp;
	    		    <a href='removerPresidio?id=${presidio.idPresidio}'>Remover</a>
				    </td>
					
					
					
			</c:forEach>
	</table>
	<br><br>
	
	<!-- <a href="incluirPresidio.jsp">Voltar a incluir Presídio</a> -->

</body>
</html>
