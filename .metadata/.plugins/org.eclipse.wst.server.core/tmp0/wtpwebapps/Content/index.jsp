<!-- Start header -->
<jsp:include page="csp-includes/csp-rl-header.jsp" />
<!-- End header -->

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
			  email: email,
			  password: password
	           }, 
	          success: function(msg){      
	          $('#output').append(msg);
	        }
	     });
	}
}
</script>

<form action = "login-action.jsp" method = "POST">
<div class="container">

    <div class="row justify-content-center">
	
		<div class="col-xl-10 col-lg-12 col-md-9 justify-content-center my-5">

			<div class="card o-hidden border-0 shadow-lg my-5 bg-gray-300">
			  <div class="card-body p-0">
				
	
				<div class="row">
				  <div class="col-lg-6 d-none d-lg-block">
					  <img width="auto" height="auto" src="backend/img/tcra-logo.png" class="card-img mt-5 mx-5" alt="...">
					  <div class="row ml-5">
						<span class="col-2"> <i class="fas fa-tv"></i> </span>
						<span class="col-2"> <i class="fas fa-music"></i> </span>
						<span class="col-2"> <i class="far fa-newspaper"></i> </span>
						<span class="col-2"> <i class="fas fa-rss-square"></i> </span>
						<span class="col-2"> <i class="far fa-futbol"></i> </span>
						<span class="col-2"> <i class="fas fa-list-ol"></i> </span>
					</div>
				  </div>
				  <div class="col-lg-6 mt-3">
					<div class="p-5">
					  <div class="text-center">
						<h1 class="h4 text-gray-900 mb-4">Welcome to TCRA CSP Platform</h1>
						<h5 class="card-title text-muted">System login</h5>
					  </div>

					  <form class="user" action="" method="">

						<div class="form-group">
							<label class="form-col-form-label" for="inputSuccess1">Email address</label>
							<input class="form-control form-control-user is-valid" id="email" name="email" type="text"  autocomplete="off" readonly 
    onfocus="this.removeAttribute('readonly');" required>
						</div>

						<div class="form-group">
							<label class="form-col-form-label" for="inputError1">Password</label>
							<input class="form-control form-control-user is-invalid" id="password" name="password" type="password" autocomplete="off" readonly 
    onfocus="this.removeAttribute('readonly');" required>
							<div style="display:none;" id="invalid-pass" class="invalid-feedback">Please provide a valid password.</div>
						</div>
							 <% 
                    try {
                      String id = null;
                      id = request.getParameter("id");
                    if (id.equals("1")) {
                    	out.print("<div style='color:red; '>Username or password is incorrect!</div><br>");
                    }
                    if (id.equals("2")) {
                    	out.print("<div style='color:red; '>You have attempt 3 times, please wait after 1 hour system will resume again!!</div><br>");
                    }
                    } catch(NullPointerException ex) {
                    	
                    }
                    %>
						<button type="submit" onClick="login();" class="btn btn-primary btn-lg btn-block">Login</button>

						<div class="clearfix mt-5">
							<div class="float-left mt-4"><a href="csp-registration.jsp">Registration</a></div>
							<div class="float-right mt-4"><a href="csp-forgot-password.jsp">Forgot password?</a></div>
						</div>
					</form>
					</div>

					
				  </div>
			  </div>
			</div>
		  </div>
	  </div>
	</div>
</div>
</form>
    
  	<!-- Start footer -->
	<jsp:include page="csp-includes/csp-out-pgs-footer.jsp" />
	<!-- End footer -->
	
  </body>
</html>