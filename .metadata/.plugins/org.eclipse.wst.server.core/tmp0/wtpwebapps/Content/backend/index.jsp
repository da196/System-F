<!-- Start Top header View -->
<jsp:include page="includes/header-login.jsp" />
<!-- End Top Header View --> 

  <body class="app flex-row align-items-center">
    <div class="container"  style="padding-bottom:100px;">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <div class="card-group">
            <div class="card p-4">
              <div class="card-body">
			  
                <h1>  
				<img class="navbar-brand-full" src="img/tcra-logo.png" width="120px" height="100px" alt="TCMS Logo">
				TCMS - Login
        </h1>
         <span class="badge badge-success" style="width:15px; height:17px;">  </span>
         <span class="badge badge-warning" style="width:15px; height:17px;">  </span>
          <span class="badge badge-dark" style="width:15px; height:17px;">  </span>
        <span class="badge badge-primary" style="width:15px; height:17px;">  </span>
       
       
       

                <p class="text-muted">Sign In to your account</p>
                
                 <form method="post" action="login-action.jsp" autocomplete="off">
                 
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="icon-user"></i>
                    </span>
                  </div>

                  <input class="form-control" type="text" placeholder="Username" id="username" name="username"  autocomplete="off" readonly 
    onfocus="this.removeAttribute('readonly');" required >
                </div>
                <div class="input-group mb-4">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="icon-lock"></i>
                    </span>
                  </div>
                  <input class="form-control" type="password" placeholder="Password" id="password" name="password" autocomplete="off" readonly 
    onfocus="this.removeAttribute('readonly');" required >
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
                <div class="row">
                  <div class="col-6">
                    <button class="btn btn-primary px-3" type="submit" value="Login">Login</button>
                  </div>
                  <div class="col-6 text-right">
                 <!--    <button class="btn btn-link px-0" type="button" style="text-decoration:none;">Forgot password?</button> -->
                  </div>
                </div>
                </form>
              </div>
            </div>
           
        </div>
      </div>
    </div>
   

  </body>
</html>
