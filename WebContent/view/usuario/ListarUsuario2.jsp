<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<c:import url="../bootstrapTiago/bootStrap.jsp"></c:import>

<link rel="stylesheet" type="text/css" href="ListarUsuario.css"> 

<link rel="stylesheet" type="text/css" href="ListarUsuario.css"> 
		 
	<link href='https://fonts.googleapis.com/css?family=Lato:300' rel='stylesheet' type='text/css'>

</head>
<body>

<center><hr><h3>Lista de usuários</h3><hr></center>
	
	<div style="text-align: center; color: red;"> ${mensagem} </div>

<br>
<br>

<div class="container">
    <div class="row">
    
    <c:import url="/view/comum/menu.jsp" />
	<hr>
	<h3>Pesquisar Usuario</h3>
	<div>
		<form action="ListarUsuario2" method="post">
			<p>
				Nome: <br /> <input type="text" id="nomeUsuario"
					name="nomeusuario" value="${usuario.nomeUsuario}">
			</p>
             
             <p>
				CPF: <br /> <input type="text" id="cpfUsuario"
					name="cpfUsuario" value="${usuario.cpfUsuario}">
			</p>
    
            <p>
				<input type="reset" value="Limpar"> &nbsp; &nbsp; <input
					type="submit" value="Pesquisar">
			</p>
      
           <br>
    
        <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">Listas de usuários</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                   <a href="exibirCadastrarUsuario" > <button type="button" class="btn btn-success" >  Cadastrar novo usuário </button></a>
                  </div>
                </div>
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th><center><em class="fa fa-cog"></em></center></th>
                        <th class="hidden-xs">ID</th>
                        <th>CPF</th>
                        <th>NOME</th>
                        <th>ENDEREÇO</th>
                        <th>TIPO USUARIO</th>
                    </tr> 
                  </thead>
                  
                  <c:forEach var="usuario" items="${listaUsuario}">
                  
                  <tbody>
                          <tr>
                            <td align="center">
                              <a href="exibirAlterarUsuario?id=${usuario.id}" class="btn btn-default"><em class="fa fa-pencil" title="Alterar usuário"></em></a>
                              <a href="removerUsuario?id=${usuario.id}" class="btn btn-danger"><em class="fa fa-trash" title="Remover usuário"></em></a>
                              
                            </td>
                            <td class="hidden-xs">${usuario.id}</td>
                            <td>${usuario.cpfUsuario} </td>
                            <td>${usuario.nomeUsuario}</td>
                            <td>${usuario.enderecoUsuario}</td>
                            <td>${usuario.tipoUsuario.descricaoUsuario}</td> <!-- aqui chamo a descricao ou id do tipo suuario ex: usuario.tipousuario.id_tipousuario -->
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