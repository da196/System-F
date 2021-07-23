<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>OTAS - LOGIN FORM</title>

<!-- ALL REGISTRATION CSS STYLES -->
<link rel="stylesheet" type = "text/css" href="css/registration-css/fonts-googleapis.css" >
<link rel="stylesheet" type = "text/css" href="css/registration-css/bootstrap.min.css">
<link rel="stylesheet" type = "text/css" href="css/registration-css/bootstrap-theme.min.css">
<link rel="stylesheet" type = "text/css" href="css/registration-css/custom.css">

<!-- ALL REGISTRATION JAVASCRIPT JS  -->
<script type="text/javascript" src="js/registration-js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">

function login(){
	
	var email = document.getElementById('email').value;
	var password = document.getElementById('password').value;
	
	if (email == "") {
		alert("Please enter email address!");
		die("");
	}
	else if (password == "") {
		alert("Please enter password!");
		die("");
	}
	else{
	 $.ajax({
	     type: "post",
	      url: "login-action.jsp", //this is my servlet
	       data: {
			  email: $('#email').val(),
			  password: $('#password').val()
	           }, 
	          success: function(msg){      
	          $('#output').append(msg);
	        }
	     });
	}
}

</script>

</head>
<body>
<div class="signup-form">
<br>
<br>
<br>
	 <form method="post" action="action/login-action.jsp">
   <div class="form">
		<h2>Login</h2>
	
        <div class="form-group">
        	<input type="email" class="form-control" id ="email" name="email" placeholder="Email" >
        </div>
		<div class="form-group">
            <input type="password" class="form-control" id="password" name="password" onfocus="this.value=''" placeholder="Password" >
       
        </div>
	 
		<div class="form-group">
            <button type="button" onClick="login();" class="btn btn-primary btn-lg btn-block">Login</button>
        </div>
   </div>
	<div class="text-center">Don't have an account? <a href="user-registration.html">Register</a></div><br/>
    <div class="text-center">Forgot Password ? <a href="forgot-password.html">Click here</a></div>
    </form>
<div id="output"></div>

</div>
</body>
</html>                            