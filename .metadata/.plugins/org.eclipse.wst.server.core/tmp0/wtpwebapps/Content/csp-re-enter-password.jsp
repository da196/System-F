<!-- Start header -->
<jsp:include page="csp-includes/csp-rl-header.jsp" />
<!-- End header -->

<div class="container">

    <div class="row justify-content-center">
	
		<div class="col-xl-6 col-lg-6 col-md-6 justify-content-center my-5">

			<div class="card o-hidden border-0 shadow-lg my-5 bg-gray-300">
				<div class="card-header">
                    <div class="row">
                        <img class="col-3" width="100" height="75" src="backend/img/tcra-logo.png" alt="TCRA logo">
                        <h4 class="card-title text-gray-900 mt-4">New Password</h4>
                    </div>
				</div>
			  <div class="card-body p-0">
	
					<div class="px-5 py-3">

					  <form class="user" action="" method="">

						<div class="form-group">
							<label class="form-col-form-label" for="inputSuccess1">New password</label>
							<input class="form-control form-control-user is-valid" id="inputSuccess1" type="password">
						</div>

						<div class="form-group">
							<label class="form-col-form-label" for="inputError1">Re-type new password</label>
							<input class="form-control form-control-user is-invalid" id="inputError1" type="password">
							<div class="invalid-feedback">Password do not match.</div>
						</div>
							
						<a href="csp-home.jsp" class="btn btn-primary btn-user btn-block mb-5">Submit</a>
						
					  </form>
					</div>

			</div>
		  </div>
	  </div>
	</div>
</div>

    
	<!-- Start footer -->
	<jsp:include page="csp-includes/csp-out-pgs-footer.jsp" />
	<!-- End footer -->
	
  </body>
</html>