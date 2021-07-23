<!-- Start Footer -->
<jsp:include page="csp-includes/csp-rl-header.jsp" />
<!-- End Footer -->

<script>
function resetPassword() {
var passwordreset =	document.getElementById("passwordreset").value;
if (passwordreset == "") {
	alert("Please enter username!");
	die("");;
}
var answer = confirm("Are you sure you want to reset password!")
if (answer) {
	//document.getElementById("overlay").style.display = "block";
 $.ajax({
     type: "post",
      url: "request-password-reset.jsp", //this is my servlet
       data: {
    	   passwordreset: passwordreset
           }, 
          success: function(msg){      
          //document.getElementById("overlay").style.display = "none";
          $('#output').append(msg);
          
        }
     });

} else {
	alert("Cancelled!");
}

}
</script>

<div class="container">

    <div class="row justify-content-center">
	
		<div class="col-xl-6 col-lg-6 col-md-6 justify-content-center my-5">

			<div class="card o-hidden border-0 shadow-lg my-5 bg-gray-300">
				<div class="card-header">
                    <div class="row">
                        <img class="col-3" width="100" height="75" src="backend/img/tcra-logo.png" alt="TCRA logo">
                        <h4 class="card-title text-gray-900 mt-4">Forgot Password</h4>
                    </div>
				</div>
			  <div class="card-body p-0">
	
					<div class="px-5 py-3">
						
					  <div class="row">
						<img class="col-2" src="pics/pic3.gif" width="50" height="50" />
						<p class="col-10">Please enter the email address you register with and an email to restore your access to your account will be sent!</p>
					  </div>

					  <form class="user" action="" method="">

						<div class="form-group">
							<label class="form-col-form-label" for="inputSuccess1">Email address</label>
							<input class="form-control form-control-user is-valid" id="passwordreset" name ="passwordreset" type="text">
						</div>

							
						<!-- a class="btn btn-primary btn-user btn-block mb-5" onclick="resetPassword();">Submit</a -->
						<!--  href="csp-re-enter-password.jsp" class="btn btn-primary btn-user btn-block mb-5" onclick="resetPassword();">Submit</a -->
							<input type="button" class="btn btn-primary btn-user btn-block mb-" value="Reset" onclick="resetPassword();"/>

						<div class="clearfix">
							<!-- <div class="float-left"><a href="csp-registration.jsp">Registration</a></div> -->
							<div class="float-right"><a href="index.jsp">System Login</a></div>
						</div>
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