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
<c:import url="../comum/MenuBoots.jsp"></c:import>
<c:import url="../comum/MenuDetento.jsp"></c:import>
<form class="form-horizontal" action="pesquisarDetento">
<fieldset>

<!-- Form Name -->
<center><legend>Pesquisa de Detentos</legend></center>

<!-- Multiple Checkboxes -->
<div class="form-group">
  <label class="col-md-4 control-label" for="status">Status</label>
  <div class="col-md-4">
  <div class="checkbox">
    <label for="status-0">
      <input type="checkbox" name="status" id="status-0" checked  value="-1">
      Fora do Prazo
    </label>
	</div>
  <div class="checkbox">
    <label for="status-1">
      <input type="checkbox" name="status" id="status-1" checked value="1">
      Dentro do Prazo
    </label>
	</div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="cpf">Cpf</label>  
  <div class="col-md-4">
  <input id="cpf" name="cpf" type="text" placeholder="" class="form-control input-md">
  <span class="help-block">Ex. 11111111111</span>  
  </div>
</div>

</fieldset>
</form>

	
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
                 <c:if test="${detento.status == 2}">
                 
                    <tr class="danger">
                    </c:if>
                       <c:if test="${detento.status == 1}">
                 
                    <tr class="warning">
                    </c:if>
                       <c:if test="${detento.status == -1}">
                 
                    <tr class="success">
                    </c:if>
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
                        <c:if test="${detento.status == -1}">
                        <td >
                            No prazo
                        </td>
                        </c:if><c:if test="${detento.status == 1}">
                        <td >
                            Hoje
                        </td>
                        </c:if><c:if test="${detento.status == 2}">
                        <td >
                            Atrasado 
                        </td>
                        </c:if>
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