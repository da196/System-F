<%@ page import="tcms.configuration.*" %>
<%@ page import="tcms.presentation.*" %>
<%@ page import="tcms.errorLogs.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!-- Start header -->
<jsp:include page="csp-includes/csp-rl-header.jsp" />
<!-- End header -->

<script type="text/javascript">

$(document).ready(function() {
	  // document.getElementById("contentType").value = "";  
	  var content_type_id = $("#contentType").val(); // get content id in a selected box 
		
		$.ajax({
			url: "channel.jsp", // yuor jsp page name
			data:{
				content_type_id: content_type_id
			},
			method: "POST",
			success: function (data)
			{
				$("#channel_id").html(data);
			}
		})
	});


//START PASSWORD CHECK 
function passwordCheck(field_val,fieldName){
	if(field_val.length <= 8){
		// Declare variable
    var lowercaseCheck = /.*[a-z]/
    var uppercaseCheck = /.*[A-Z]/
    var specialCharacterCheck = /.*[!@#$%^&*]/
    var digitCheck = /.*\d/       	
    var countDigitCheck = /.{8,}/

    // Search to the variable        
    var regResultLowerCase = field_val.search(lowercaseCheck);             
    var regResultUpperCase = field_val.search(uppercaseCheck);
    var regResultspecialCharacter = field_val.search(specialCharacterCheck);
    var regResultDigit = field_val.search(digitCheck);
    var regResultCountCharacters = field_val.search(countDigitCheck);

    if(regResultLowerCase != 0){
    	$('#pmatch').empty()
    			    .html("Password should contain atleast one lowercase character ")
    			    .css("display","block")
    			    .css("color","red")
    			    .css("font-weight","bold")
    			    .css("font-size","14px");    
    	die();
    }
    else if(regResultUpperCase != 0){        	
    	$('#pmatch').empty()
		    			.html("Password should contain atleast one uppercase character ")
		    			.css("display","block")
		    			.css("color","red")
		    			.css("font-weight","bold")
		    			.css("font-size","14px"); 
    	die();
    }
    else if(regResultspecialCharacter != 0){        	
    	$('#pmatch').empty()
		    			.html("Password should contain atleast one special character ")
		    			.css("display","block")
		    			.css("color","red")
		    			.css("font-weight","bold")
		    			.css("font-size","14px"); 
    }
    else if(regResultDigit != 0){        	
    	$('#pmatch').empty()
		    			.html("Password should contain atleast one digit ")
		    			.css("display","block")
		    			.css("color","red")
		    			.css("font-weight","bold")
		    			.css("font-size","14px"); 
    	die();
    }
    else if(regResultCountCharacters != 0){        	
    	$('#pmatch').empty()
		    			.html("Password should contain atleast eight characters ")
		    			.css("display","block")
		    			.css("color","red")
		    			.css("font-weight","bold")
		    			.css("font-size","14px"); 
    	die();
    }
    else{        	
    	$('#pmatch').empty();
    	//registerUser();
    }
}
}
//END PASSWORD CHECK

function registration(){
	
	var companyName = document.getElementById("CompanyName").value;
	var contentType_id = document.getElementById("contentType").value; 
	var channel_id = document.getElementById("channel").value; 
	var address = document.getElementById("address").value; 
	var email = document.getElementById("email").value;
	var password = document.getElementById("password").value; 
	var confirm_password = document.getElementById('cPassword').value;
	var contactPerson = document.getElementById('contactPerson').value;
	var mobileNumber = document.getElementById('mobileNumber').value;
	//Regex for Valid Characters i.e. Alphabets, Numbers and Space.
    var regex = /^[A-Za-z0-9 ]+$/

    //Validate TextBox value against the Regex.
    var isValid = regex.test(document.getElementById("email").value);
	
	if (companyName == "") {
		alert("Please enter Company Name!");
		die("");
	}
	if (contentType_id == "") {
		alert("Please select Content Type");
		die("");
	}
	if (channel_id == "") {
		alert("Please select Channel!");
		die("");
	}
	if (contactPerson == "") {
		alert("Please enter Contact Person");
		die("");
	}
	if (address == "") {
		alert("Please enter address");
		die("");
	}
	
	if (email == "") {
		alert("Please enter email");
		die("");
	}
	if (isValid) {
		document.getElementById("ematch").style.display = "block";
		die("");
	} 

	if(password.length >= 8){
		
		// Declare variable
	  var lowercaseCheck = /.*[a-z]/
	  var uppercaseCheck = /.*[A-Z]/
	  var specialCharacterCheck = /.*[!@#$%^&*]/
	  var digitCheck = /.*\d/       	
	  var countDigitCheck = /.{8,}/

	  // Search to the variable        
	  var regResultLowerCase = password.search(lowercaseCheck);             
	  var regResultUpperCase = password.search(uppercaseCheck);
	  var regResultspecialCharacter = password.search(specialCharacterCheck);
	  var regResultDigit = password.search(digitCheck);
	  var regResultCountCharacters = password.search(countDigitCheck);

	  if(regResultLowerCase != 0){
	  	$('#pmatch').empty()
	  			    .html("Password should contain atleast one lowercase character ")
	  			    .css("display","block")
	  			    .css("color","red")
	  			    .css("font-weight","bold")
	  			    .css("font-size","14px");    
	  	die();
	  }
	  else if(regResultUpperCase != 0){        	
	  	$('#pmatch').empty()
		    			.html("Password should contain atleast one uppercase character ")
		    			.css("display","block")
		    			.css("color","red")
		    			.css("font-weight","bold")
		    			.css("font-size","14px"); 
	  	die();
	  }
	  else if(regResultspecialCharacter != 0){        	
	  	$('#pmatch').empty()
		    			.html("Password should contain atleast one special character ")
		    			.css("display","block")
		    			.css("color","red")
		    			.css("font-weight","bold")
		    			.css("font-size","14px"); 
	  	die();
	  }
	  else if(regResultDigit != 0){        	
	  	$('#pmatch').empty()
		    			.html("Password should contain atleast one digit ")
		    			.css("display","block")
		    			.css("color","red")
		    			.css("font-weight","bold")
		    			.css("font-size","14px"); 
	  	die();
	  }
	  else if(regResultCountCharacters != 0){        	
	  	$('#pmatch').empty()
		    			.html("Password should contain atleast eight characters ")
		    			.css("display","block")
		    			.css("color","red")
		    			.css("font-weight","bold")
		    			.css("font-size","14px"); 
	  	die();
	  }
	  else{        	
	  	$('#pmatch').empty();
	  	//registerUser();
	  }
	  
	  if (password == confirm_password) {


		  var answer = confirm("Please confirm to register!")
		  if (answer) {
		  	
		  	//document.getElementById("overlay").style.display = "block";
		  	
		   $.ajax({
		       type: "post",
		        url: "user-registration-action.jsp", //this is my servlet
		         data: {
		        	 companyName: companyName, 
		        	 contentType_id: contentType_id,
		        	 channel_id: channel_id,
		        	 address: address,
		        	 contactPerson: contactPerson,
		        	 email: email,
		        	 password: password,
		        	 mobileNumber: mobileNumber
		             }, 
		            success: function(msg){      
		            //document.getElementById("overlay").style.display = "none";
		            $('#output').append(msg);
		            
		           // $('#mid-page-div').html("");
		    	     // $('#mid-page-div').load('test.html');
		          }
		       });

		  } else {
		  	alert("Registration was cancelled!");
		  }

		  } else {
			  $('#pmatch').empty()
			    .html("Password does not match ")
				.css("display","block")
				.css("color","red")
				.css("font-weight","bold")
				.css("font-size","14px"); 
		  	document.getElementById("pmatch").style.display = "block";
		  	
		  }
	}else{
		$('#pmatch').empty()
		.html("Password should contain atleast eight characters ")
		.css("display","block")
		.css("color","red")
		.css("font-weight","bold")
		.css("font-size","14px"); 
	}
}
</script>
<div id="output"></div>
<div class="container">

	<div class="card o-hidden border-0 shadow-lg my-5 bg-gray-300">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
      <div class="row">
	  
		<div class="col-lg-5 d-none d-lg-block">
			<img width="auto" height="auto" src="backend/img/tcra-logo.png" class="card-img mt-5 mb-4 mx-5" alt="tcra-logo">
			<div class="row ml-5">
				<span class="col-2"> <i class="fas fa-tv"></i> </span>
				<span class="col-2"> <i class="fas fa-music"></i> </span>
				<span class="col-2"> <i class="far fa-newspaper"></i> </span>
				<span class="col-2"> <i class="fas fa-rss-square"></i> </span>
				<span class="col-2"> <i class="far fa-futbol"></i> </span>
				<span class="col-2"> <i class="fas fa-list-ol"></i> </span>
			</div>
		</div>
          <div class="col-lg-7">
            <div class="p-4">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">Content Service Provider (CSP) Registration</h1>
              </div>
			  
			  
        <!-- <div class="col-md-12 col-lg-8">
          <div class="card mx-4">
            <div class="card-body p-4">
              <h2>csp: Online Users</h2>
              <p class="text-muted">CSP Registration</p> -->

				<form class="user">
				 
					  <div class="form-group">
					  	<label for="company">Company name</label>              
              			<input class="form-control" type="text" id="CompanyName">
					  </div>
          
					  <div class="form-row">
						<div class="form-group col-3">
						  <label for="content-type">Content type</label>
						  <select class="form-control" id="contentType" name="contentType">
						  	
							<%
						 	 			File errorLogs = null;
						                String errorLogFile = Utility.getPath();
						                errorLogs = new File(errorLogFile);
										try{
													                    
										java.util.List<Lookup> contentList = Lookup.GetContentTypeList();
													
										for (int i = 0; i < contentList.size(); i++){
											
										%>
										<option value="<% out.print(contentList.get(i).getId());%>"> <% out.print(contentList.get(i).getName()); %> </option>								      
										 <%
										}
										}catch(Exception er){
											er.printStackTrace();
										ErrorLogsAppender.appendException("csp-registration.jsp page", er, errorLogs);
										}
						 	 			%>
						  </select>
						</div>

						<div id="channel_id" class="form-group col-9">
						  <label for="channel">Channel</label>
						
						   <select class="form-control" name="channel" id="channel" >
						  	<option value="">Choose...</option>
						  	
						  </select>
						</div>
						
					  </div>					  

					  <div class="form-row">
						<div class="form-group col-lg-12">
						  <label for="country">Address</label>
						  <textarea class="form-control" id="address" name="address"></textarea>
						  
						</div>
					  </div>

					  <strong>CONTACT INFO</strong>
					  
					   <div class="form-group">
					  	<label for="company">Contact Person</label>              
              			<input class="form-control" type="text" id="contactPerson" name="contactPerson">
					  </div>
					   <div class="form-group">
					  	<label for="company">Mobile Number</label>              
              			<input class="form-control" type="text" id="mobileNumber" name="mobileNumber">
					  </div>

						<div class="form-group mt-2">

						  <label for="street">E-mail</label>
						  <input class="form-control" type="email" id="email" name="email">

						</div>
								<div id="ematch" style="color:red; display:none" >Email is not valid</div> 
						<div class="form-row">
							<div class="form-group col-6">
								<label for="password">Password</label>
								<input class="form-control" autocomplete="off" type="password"  id="password" name="password" onkeyup="passwordCheck(this.value, 'password')"> 
							</div>

							<div class="form-group col-6">
								<label for="password">Re-type password</label>
								<input class="form-control" type="password" id="cPassword" name="cPassword">
							</div>
						</div>
						  <div class="form-row">
							<div class="form-group col-12">
							<div id="pmatch" style="color:red; display:none" >Passwords dont match!</div>    <br>
							</div>
							</div>
					  <button class="btn btn-block btn-user btn-primary" type="button" onClick="registration();">Submit</button>
				  </form>

				</div>

            
          </div>
        </div>
      </div>
    </div>
</div>
    
    <!-- CoreUI and necessary plugins-->
    <script src="node_modules/jquery/dist/jquery.min.js"></script>
    <script src="node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="node_modules/pace-progress/pace.min.js"></script>
    <script src="node_modules/perfect-scrollbar/dist/perfect-scrollbar.min.js"></script>
    <script src="node_modules/@coreui/coreui/dist/js/coreui.min.js"></script>

    
  </body>
</html>
<script type="text/javascript">

$(document).ready(function (){
	
	$("#contentType").on("change", function (){
		
		var content_type_id = $("#contentType").val(); // get content id in a selected box 
		
		$.ajax({
			url: "channel.jsp", // yuor jsp page name
			data:{
				content_type_id: content_type_id
			},
			method: "POST",
			success: function (data)
			{
				$("#channel_id").html(data);
			}
		})
	});

	
});


</script>