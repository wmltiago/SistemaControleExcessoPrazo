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


</head>
<body  >


 <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
          <h1 class="text-center">Welcome</h1>
        </div>
         <div class="modal-body">
             <div class="form-group">
                 <input type="text" class="form-control input-lg" placeholder="Username"/>
             </div>

             <div class="form-group">
                 <input type="password" class="form-control input-lg" placeholder="Password"/>
             </div>

             <div class="form-group">
                 <input type="submit" class="btn btn-block btn-lg btn-primary" value="Login"/>
                 <span class="pull-right"><a href="#">Register</a></span><span><a href="#">Forgot Password</a></span>
             </div>
         </div>
    </div>
 </div>




</body>
</html>