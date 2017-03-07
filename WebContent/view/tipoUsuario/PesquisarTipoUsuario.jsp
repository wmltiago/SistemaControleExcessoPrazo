<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listagem de Tipos de Usuários</title>

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<c:import url="../bootstrapTiago/bootStrap.jsp"></c:import>

<link rel="stylesheet" type="text/css" href="ListarUsuario.css"> 

<link rel="stylesheet" type="text/css" href="ListarUsuario.css"> 
		 
	<link href='https://fonts.googleapis.com/css?family=Lato:300' rel='stylesheet' type='text/css'>

</head>
<body>

<c:import url="/view/comum/menu.jsp" />

<center><hr><h3>Lista de usuários</h3><hr></center>
	
	<div style="color: red;" align="center"> <h3> ${msg} </h3> </div>

<br>
<br>

<div class="container">
    <div class="row">
    
    
    
        <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">Listas  tipos de usuários</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                   <a href="exibirIncluirTipoUsuario" > <button type="button" class="btn btn-default" >  Cadastrar Um novo tipo de usuário </button></a>
                  </div>
                </div>
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th><center><em class="fa fa-cog"></em></center></th>
                        <th class="hidden-xs">ID</th>                        			
						<td> DESCRIÇÃO </td>
						
                    </tr> 
                  </thead>
                  
                  <c:forEach var="c" items="${listaTipoUsuario}">
                  
                  <tbody>
                          <tr>
                            <td align="center">
                              <a href="exibirAlterarTipoUsuario?idTipoUsuario=${c.idTipoUsuario}" class="btn btn-default"><em class="fa fa-pencil" title="Alterar usuário"></em></a>
                              <a href="removerTipoUsuario?idTipoUsuario=${c.idTipoUsuario}" class="btn btn-danger"><em class="fa fa-trash" title="Remover usuário"></em></a>
                              <!-- QNDO FOR MANDA PELO ID TEM QUE SER MSM NOME DA CLASSE BASICA EX: idTipoUsario, ou id; -->
                            </td>                            
                            <td class="hidden-xs"> ${c.idTipoUsuario}</td> <!-- variavel igual o noem da classe basica -->  	
	    					<td> ${c.descricao}</td>
                          </tr>
                        </tbody>
                        
                        </c:forEach>
                        
                </table>
            
              </div>
              <div class="panel-footer">
                <div class="row">
                  <div class="col col-xs-4">Page 1 of 5
                  </div>
                  <div class="col col-xs-8">
                    <ul class="pagination hidden-xs pull-right">
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                    </ul>
                    <ul class="pagination visible-xs pull-right">
                        <li><a href="#">«</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>

</div></div></div>


</body>
</html>