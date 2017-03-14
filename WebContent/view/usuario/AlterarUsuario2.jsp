<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<c:import url="../bootstrapTiago/bootStrap.jsp"></c:import>
		<link rel="stylesheet" type="text/css" href="ListarUsuario.css">

<title>Insert title here</title>
</head>
<body>
<center><hr><h3>Alterar Usu�rio</h3><hr></center>
	
	<div style="text-align: center; color: red;"> ${msg} </div>
<br>
<br>


<form action="AlterarUsuario2" method="post">
<div class="container">
    <div class="row">
    
    
    
        <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">Alterar usu�rio</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                   <a href="listarUsuario" > <button type="button" class="btn btn-default" >Listagem de usu�rio </button></a>
                  </div>
                </div>
              </div>
              <div class="panel-body">
              
             				 <input type="hidden" name="senha" value="${usuario.senhaUsuario}" />
							<input type="hidden" name="id" value="${usuario.id}" />
							
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        
                        <th>CPF</th>
                        <th>NOME</th>
                        <th>ENDERE�O</th>
                        <th>TIPO USUARIO</th>
                        <th>A��O</th>
                    </tr> 
                  </thead>
                  
                  
                  
                  <tbody>
                          <tr>
                            
                            
                            <td><input type="text" name="cpfUsuario" value="${usuario.cpfUsuario}" /></td>
                            <td><input type="text" name="nomeUsuario" value="${usuario.nomeUsuario}" /></td>
                            <td><input type="text" name="enderecoUsuario" value="${usuario.enderecoUsuario}" /></td>
                            <td>
                            <div class="form-group">
							  <label class="col-md-4 control-label" for="selectbasic">Tipo de usu�rio</label>
							  <div class="col-md-4">
							    <select id="id_tipousuario" name="tipousuario_idTipousuario" class="form-control">
							      <option value="">  </option>
											<c:forEach items="${listaTipoUsuario}" var="obj">
												<option value="${obj.idTipoUsuario}"> ${obj.descricaoUsuario} </option> <!-- VARIAVEL IGUAL AO NOME DA CLASSE BASICA -->
											</c:forEach> 
   								 </select>
 								 </div></div>		
  				</td>
                            <td><button id="button1id" name="button1id" class="btn btn-success" type="submit" value="inserir">Alterar</button></td>
                          </tr>
                        </tbody>
                        
                        
                        
                </table>
                
                       
              </div>
              
              </div>
            </div>
            
            

</div></div>


</form>

</body>
</html>