<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<%@ page import="java.util.List"%>
<%@ page import="model.presidio.PresidioDao"%>
<%@ page import="model.presidio.Presidio"%>

<c:import url="../bootstrapTiago/bootStrap.jsp"></c:import>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listando Detentos</title>
</head>
<body>

<%-- 
		<table border='1' style='width: 100%;'>
	
		<tr style='background-color: #E6E6E6; font-weight: bold;'>
		
			
			
			<td>NOME DO DETENTO</td> 
			
			<td>CPF</td> 
			
			<td>NOME DA MÃE</td> 
			
			
			
			<td>Data de Julgamento</td>
			
			
			
			<td>Numero do Processo</td>
			
			<td>PRESIDIO</td>
			
	<td>STATUS</td>
			
			
			
			  
			
			<c:forEach var="detento" items="${listaDetento}">
				<tr>
					
					<td>${detento.nomeDetento}</td> 
					<td>${detento.cpfDetento}</td>
					<td>${detento.nomeMae}</td>
					
					<td><fmt:formatDate value='${detento.dataJulgamento}' pattern='dd/MM/yyyy' /></td>
					
					<td>${detento.numeroProcesso}</td>
					<td>${detento.presidio.nomePresidio}</td>
					<td   bgcolor="${detento.status}">    
					
					

					
					
					
					
					
					           </td>
					
					
			</c:forEach>
	</table> --%>
	
	<div class="container">
    <div class="row">
        <div class="col-md-12">
          
   
            <table class="table">
                <thead>
                    <tr>
                        <th>
                            Nome 
                        </th>
                        <th>
                            CPF
                        </th>
                        <th>
                            Nome da Mãe
                        </th><th>
                            Número do Processo
                        </th><th>
                            Presídio
                        </th><th>
                            Data de Julgamento
                        </th><th>
                            Status
                        </th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="detento" items="${listaDetento}">
                    <tr class="${detento.status}">
                        <td>
                            ${detento.nomeDetento}
                        </td>
                        <td>
                           ${detento.cpfDetento}
                        </td>
                        <td>
                            ${detento.nomeMae}
                        </td>
                 
                        <td>
                          ${detento.numeroProcesso}
                        </td>
                        <td>
                           ${detento.presidio.nomePresidio}
                        </td>
                        <td>
                            <fmt:formatDate value='${detento.dataJulgamento}' pattern='dd/MM/yyyy' />
                        </td>
                        <td bgcolor="${detento.status}">
                            TESTE
                        </td>
                    </tr>
                    	</c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
	
	<br><br>
	
	

</body>
</html>