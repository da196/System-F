<!-- Start header -->
<jsp:include page="includes/header2.jsp" />
<!-- End header -->

<div class="container">
      <div class="row justify-content-center">
        <div class="col-md-8">
          <div class="card mx-4">
            <div class="card-body p-4">
              <h2>Forget password?</h2>
              <p class="text-muted">Please enter your email account</p>

				<form>
					<center>
					<div class="col-sm-6 col-lg-6">
					  <div class="input-group mb-3">
						<div class="input-group-prepend">
						  <span class="input-group-text">
							<i class="fa fa-envelope"></i>
						  </span>
						</div>
						<input class="form-control" type="text" placeholder="Email">
					  </div>
					</div>
					</center>

                    <center>
				  <div class="col-sm-8 col-lg-8">
					<div class="g-recaptcha mb-3" data-sitekey="6LejSbMUAAAAAGRb4uyvnI5iRb1qh1YXXbmmjpyI"></div>
				  </div>
                  </center>
                  
                  <center>
				  <button class="btn btn-block btn-success col-lg-6" type="button">Submit</button>
                  </center>
			  </form>
            </div>

            
          </div>
        </div>
      </div>
    </div>
    <!-- CoreUI and necessary plugins-->
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <script src="../node_modules/jquery/dist/jquery.min.js"></script>
    <script src="../node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="../node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../node_modules/pace-progress/pace.min.js"></script>
    <script src="../node_modules/perfect-scrollbar/dist/perfect-scrollbar.min.js"></script>
    <script src="../node_modules/@coreui/coreui/dist/js/coreui.min.js"></script>
    
  </body>
</html>