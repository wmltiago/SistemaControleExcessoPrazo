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
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
        <script src="http://tablesorter.com/__jquery.tablesorter.min.js" type="text/javascript"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listando Detentos</title>
<style>
  th{
  cursor:pointer;
  }
  </style>
</head>
<body>
<c:import url="../comum/MenuBoots.jsp"></c:import>
<c:import url="../comum/MenuDetento.jsp"></c:import>
<form class="form-horizontal" action="pesquisarSituacao" method="POST">
<fieldset>

<!-- Form Name -->
<center><legend>Pesquisa de Detentos</legend></center>




<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="cpf">Cpf</label>  
  <div class="col-md-4">
  <input id="cpf" name="cpf" type="text" placeholder="" class="form-control input-md">
  <span class="help-block">Ex. 11111111111</span>  
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for=""></label>
  <div class="col-md-8">
    <input id="" name="" type="submit" class="btn btn-success" value="Pesquisar"></input>
    <input id="" name="" type="reset" class="btn btn-inverse" value="Limpar"></input>
  </div>
</div>

</fieldset>
</form>

	
	<div class="container">
    <div class="row">
        <div class="col-md-12">
          
   
            <table class="table" id="myTable">
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
	
	
<script>
            $(document).ready(function() 
            { 
                $("#myTable").tablesorter(); 
            } 
        ); 
        </script>
</body>
</html>