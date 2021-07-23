<%
response.setHeader("Cache-control", "no-cache");
response.setHeader("Cache-control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expire",0);

if (session.getAttribute("userID") != null && session.getAttribute("roleID").equals("3") ) {
%>
<%@ page import="tcms.configuration.*" %>

<!-- Start header -->
<jsp:include page="includes/header.jsp" />
<!-- End header -->

<!-- Start Top header View -->
<jsp:include page="includes/topView.jsp" />
<!-- End Top Header View -->

<!-- Start SideBar View -->
<jsp:include page="includes/sideView.jsp" />
<!-- End SideBar View -->

<script type="text/javascript">

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

function changePassword() {
	var currentPass = document.getElementById("current_password").value;
	var newPass = document.getElementById("new_password").value;
	var confirmPass = document.getElementById("confirm_password").value;
	
	if (currentPass == "" || newPass == "" || confirmPass == "") {
		alert("Please fill all fields");
	} else {
		
	if (newPass != confirmPass) {
		alert("New password dont match with confirm password!");
	} else {
	var answer = confirm("Please confirm to change password!")
	if (answer) {
		
	//document.getElementById("overlay").style.display = "block";
	$.ajax({
	    type: "actions/components/change_password_action.jsp", //this is my servlet
	       data: {
	
	          currentPass: currentPass,
	          newPass: newPass,
	          confirmPass: confirmPass
	           }, 
	          success: function(msg){ 
	        	  var response = JSON.parse(msg);
	              var status = response.status;
	              if (status == 1) { 
	                    alert("Password successfully changed!");
	                    document.getElementById("current_password").value = "";
	      	            document.getElementById("new_password").value = "";
	      	            document.getElementById("confirm_password").value = "";
	                    location.reload();
	                } 
	              if (status == 2) { 
	                    alert("Error, could not change password!");
	                }
	              if (status == 3) { 
	                    alert("Error, you have entered wrong current password!");
	                } 
	         
	        }
	     });
	
	} else {
	  alert("Cancelled!");
	}
	}	
	}
}
</script>

<main class="main">
         <!-- Breadcrumb-->
         <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>   
          <li class="breadcrumb-item">
            <a href="changePassword.jsp">Change Password</a>
          </li>   
        </ol>        
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> Change Password         
                    <div class="card-header-actions">                                    
                    </div>
                  </div>
                  <div class="card-body">
                   
		                <div class="input-group mb-3">
		                <div class="input-group-prepend">
		                  <span class="input-group-text">
		                    <i class="fa fa-asterisk"></i>
		                  </span>
		                </div>
		                <input class="form-control col-sm-4" type="password" name="current_password" id="current_password" placeholder="Current password" required>
		               </div>

		              <div class="input-group mb-5">
		                <div class="input-group-prepend">
		                  <span class="input-group-text">
		                    <i class="icon-lock"></i>
		                  </span>
		                </div>
		                <input class="form-control col-sm-4" type="password" placeholder="New password" name="new_password" id="new_password" onkeyup="passwordCheck(this.value, 'password')" required>
		              </div>

		              <div class="input-group mb-4">
		                <div class="input-group-prepend">
		                  <span class="input-group-text">
		                    <i class="icon-lock"></i>
		                  </span>
		                </div>
		                <input class="form-control col-sm-4" type="password" placeholder="Re-type new password" name="confirm_password" id="confirm_password" required>
		              </div>
		               <div id="pmatch" style="color:red; display:none" >Passwords dont match!</div>    <br>  
		              <button class="btn btn-block btn-success col-sm-2" type="button" onClick="changePassword();">Submit</button>
		            </div>                    
                                      
                </div>               
                </div>           
            </div>
          </div>
        </div>
      </main>
    </div>
    
<!-- Start Top header View -->
<jsp:include page="includes/footer.jsp" />
<!-- End Top Header View -->

  </body>
</html>
 <%
} else {
	session.setAttribute("userID", null);
	session.setAttribute("fullName", null);
	session.setAttribute("roleID", null);
	session.setAttribute("roleDescription", null);
	session.setAttribute("email", null);
	session.setAttribute("username", null);
    session.invalidate();
	response.sendRedirect("index.jsp");
}
%>