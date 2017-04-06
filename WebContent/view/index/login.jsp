<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<c:import url="../bootstrapTiago/bootStrap.jsp"></c:import>

<link rel="stylesheet" type="text/css" href="estilo.css"> 
		<link rel="stylesheet" type="text/css" href="login.css"> 
	<link href='https://fonts.googleapis.com/css?family=Lato:300' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>


<!-- Isso é necessário para funcionar a versão mobile -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
 
  <!-- CSS -->
  <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="//assets.locaweb.com.br/locastyle/2.0.6/stylesheets/locastyle.css">


</head>
<body  >
<center><h1 class="project-name"><a href="#">SCEP - Sistema Controle Excesso de Prazo</a></h1></center>
<br/><br/>

<hr>

<div style="text-align: center; color: red; font-size: 30px;">
		${msg}</div>
		
<form action="efetuarLogin"	method="post">	
 <div class="container">
 <br>
    <div class="row">
		<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Acesso</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form accept-charset="UTF-8" role="form">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="CPF" name="cpfUsuario" type="text" maxlength="11">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Senha" name="senhaUsuario" type="password" value="">
			    		</div>
			    		 <div class="checkbox">
			    	    	<label>
			    	    		<input name="remember" type="checkbox" value="Remember Me"> Remember Me
			    	    	</label>
			    	    </div> 
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Entrar">
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>
</form>



</body>
</html>