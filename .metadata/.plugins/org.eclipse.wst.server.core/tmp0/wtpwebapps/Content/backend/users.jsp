<%@ page import="tcms.configuration.*" %>
<%@ page import="tcms.presentation.*" %>
<%@ page import="tcms.errorLogs.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

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

function addUser(){
	$('#pmatch').empty();
	var firstname = document.getElementById('first_name').value ;
	var middlename = document.getElementById('middle_name').value ;
	var lastname = document.getElementById('last_name').value ;
	var email = document.getElementById('email').value;
	var username = document.getElementById('username').value ;
	var role = document.getElementById("role").selectedIndex;
	var status = document.getElementById('status').selectedIndex;
	var password = document.getElementById('password').value;
	var confirm_password = document.getElementById('confirm_password').value;
	
	
	if (firstname == "") {
		alert("Please enter First Name!");
		die("");
	}
	if (lastname == "") {
		alert("Please enter Last Name!");
		die("");
	}
	if (email == "") {
		alert("Please enter email address!");
		die("");
	}
	if (username == "") {
		alert("Please enter username!");
		die("");
	}
	if (role == "") {
		alert("Please select Role!");
		die("");
	}
	if (status == "") {
		alert("Please select Status!");
		die("");
	}
	if (password == "") {
		alert("Please enter Password!");
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
		        url: "addStaff.jsp", //this is my servlet
		         data: {
		      	  firstname: firstname, 
		      	  middlename: middlename,
		  		  lastname: lastname,
		  		  email: email,
		  		  username: username,
		  		  password: password,
		  		  role:role,
		  		  status:status
		             }, 
		            success: function(msg){      
		            	var response = JSON.parse(msg);
		                var status = response.status;
		                if (status == 1) {
		                    alert("Staff Information Successfully Added !");
		                    
		                    document.getElementById('first_name').value = "";
		                    document.getElementById('middle_name').value ="";
		        			document.getElementById('last_name').value ="";
		        			document.getElementById('email').value = "";
		        			document.getElementById('username').value = "";
		        			document.getElementById("role").value="";
		        			document.getElementById('status').value = "";
		        			document.getElementById('password').value = "";
		        			document.getElementById('confirm_password').value = "";
		                    location.reload();
		                    } else {
		                    alert("Error! Couldn't Add Staff Information... ");
		                }
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
      <main class="main">
        <!-- Breadcrumb-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            Settings
          </li>
          <li class="breadcrumb-item active">
            <a href="users.jsp">Users</a>
          </li>
        </ol>

        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> System Users            
                    <div class="card-header-actions">
                      <button class="btn btn-pill btn-block btn-primary" type="button" data-toggle="modal" data-target="#addUserModal">
                       <i class="fa fa-plus"></i>
                        <b>Add User</b>
                      </button>
                      </a>
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="toolbar"></div>                   
                    <div class="fresh-datatables">
                    <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
										<thead>
											<tr>
												<th>Full Name</th>
												<th>Email</th>
                        <th>Role</th>
                        <th>Status</th>
												<th class="disabled-sorting">Actions</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
                        <th>Full Name</th>
												<th>Email</th>
                        <th>Role</th>
                        <th>Status</th>
												<th class="disabled-sorting">Actions</th>
											</tr>
										</tfoot>
										<tbody>										
						          <!-- Start of the Table Body -->	
									  
											<tr>										
												<td>Roger P. Njau</td>
												<td>roger.njau@trca.go.tz</td>
                        <td>Administrator</td>
                        <td> <span class="badge badge-success">Active</span> </td>
												<td>                       
                        <a class="btn btn-success" title="VIEW" data-toggle="modal" data-target="#viewUserModal">
                          <i class="fa fa-search-plus"></i>
                        </a>
                         
												<a class="btn btn-info" title="EDIT" data-toggle="modal" data-target="#editUserModal">
                          <i class="fa fa-edit"></i>
                        </a>
												</td>
											</tr>	

                      <tr>										
												<td>Ibrahim I. Ibrahim</td>
												<td>ibrahim.ibrahim@trca.go.tz</td>
                        <td>Senior operator</td>
                        <td> <span class="badge badge-danger">Inactive</span> </td>
												<td>                       
                        <a class="btn btn-success" title="VIEW" data-toggle="modal" data-target="#viewUserModal">
                          <i class="fa fa-search-plus"></i>
                        </a>
                         
												<a class="btn btn-info" title="EDIT" data-toggle="modal" data-target="#editUserModal">
                          <i class="fa fa-edit"></i>
                        </a>
												</td>
											</tr>															
											<!-- End of the Table Body -->
										   </tbody>
									    </table>                     
                    

                    </div>
                  </div>
                </div>
                
              </div>
            </div>
            
          </div>
        </div>

        <!-- /.start-add-user-modal-->
        <div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-primary modal-lg" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">New user </h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">X</span>
                </button>
              </div>
			        <!-- /.modal-header-->

              <div class="modal-body">
                <div class="row">
                  <div class="form-group col-sm-4 col-lg-4">
                    <label for="first_name"><strong>First name</strong></label>
                    <input class="form-control" type="text" id="first_name" placeholder="Enter first name" />
                  </div>

                  <div class="form-group col-sm-4 col-lg-4">
                    <label for="middle_name"><strong>Middle name</strong></label>
                    <input class="form-control" type="text" id="middle_name" placeholder="Enter middle name" />
                  </div>

                  <div class="form-group col-sm-4 col-lg-4">
                    <label  for="last_name"><strong>Last name</strong></label>
                    <input class="form-control" type="text" id="last_name" placeholder="Enter last name" />
                  </div>
                </div>

                <div class="row">
                  <div class="form-group col-sm-6 col-lg-6">
                    <label for="email"><strong>Email</strong></label>
                    <input class="form-control" type="text" id="email" placeholder="Enter user email" />
                  </div>

                  <div class="form-group col-sm-6 col-lg-6">
                    <label for="phoneNumber"><strong>Phone #</strong></label>
                    <input class="form-control" type="text" id="phoneNumber" placeholder="Enter phone number " />
                  </div>
                </div>

                <div class="row">
                  <div class="form-group col-sm-6 col-lg-6">
                    <label for="userPassword"><strong>User Password</strong></label>
                    <input class="form-control" type="password" id="password" placeholder=""  onkeyup="passwordCheck(this.value, 'password')"/>
                  </div>

                  <div class="form-group col-sm-6 col-lg-6">
                    <label for="reUserPassword"><strong>Re-type password</strong></label>
                    <input class="form-control" type="password" id="confirm_password" placeholder="" />
                  </div>
                </div>
 				<div id="pmatch" style="color:red; display:none" >Passwords dont match!</div>    <br>
                <div class="row">

                  <div class="form-group col-sm-4 col-lg-4">
                    <label for="role"><strong>Role:</strong></label>
                  <select class="form-control" id="region" name="region">
	 			<option value="">-- Roles -- </option>
 	 			<%
 	 			
				try{
					File errorLogs = null;
	                String errorLogFile = Utility.getPath();
	                errorLogs = new File(errorLogFile);
							                    
				java.util.List<Roles> list = Roles.GetRolesList();
							
				for (int i = 0; i < list.size(); i++){
				%>
				<option value="<% out.print(list.get(i).getRoleID());%>"> <% out.print(list.get(i).getRoles_name()); %> </option>								      
				 <%
				}
				}catch(Exception er){
				//ErrorLogsAppender.appendException("User.jsp page", er, errorLogs);
				}
 	 			%>
	 			</select>
                  </div>

                </div>
              </div>
			        <!-- /.modal-body -->
			  
              <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                <button class="btn btn-primary" type="submit" onClick="addUser();">Save changes</button>
              </div>
			        <!-- /.modal-footer -->
			  
            </div>
            <!-- /.modal-content-->
          </div>
          <!-- /.modal-dialog-->
        </div>
        <!-- /.end-add-user-modal-->

        <!-- /.start-edit-user-modal-->
        <div class="modal fade" id="editUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-primary modal-lg" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Edit user </h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">X</span>
                </button>
              </div>
			        <!-- /.modal-header-->
			  
              <div class="modal-body">
                <div class="row">
                  <div class="form-group col-sm-4">
                    <label for="firstName"><strong>First name</strong></label>
                    <input class="form-control" type="text" id="firstName" placeholder="Enter first name" />
                  </div>

                  <div class="form-group col-sm-4">
                    <label for="middleName"><strong>Middle name</strong></label>
                    <input class="form-control" type="text" id="middleName" placeholder="Enter middle name" />
                  </div>

                  <div class="form-group col-sm-4">
                    <label  for="lastName"><strong>Last name</strong></label>
                    <input class="form-control" type="text" id="lastName" placeholder="Enter last name" />
                  </div>
                </div>
				
				        <div class="row">
                  <div class="form-group col-sm-6 col-lg-6">
                    <label for="email"><strong>Email</strong></label>
                    <input class="form-control" type="text" id="email" placeholder="Enter user email" />
                  </div>

                  <div class="form-group col-sm-6 col-lg-6">
                    <label for="phoneNumber"><strong>Phone #</strong></label>
                    <input class="form-control" type="text" id="phoneNumber" placeholder="Enter phone number " />
                  </div>
                </div>

                <div class="row">
                  <div class="form-group col-sm-4 col-lg-4">
                    <label for="role"><strong>Role:</strong></label>
                    <select class="form-control" id="role" name="role">
                      <option value="0">Please select</option>
                      <option value="administrator">Administrator</option>
                      <option value="juniorOperator">Junior Operator</option>
                      <option value="seniorOperator">Senior Operator</option>
                    </select>
                  </div>

                  <div class="form-group col-sm-4 col-lg-4">
                    <label for="site"><strong>Site/Region:</strong></label>
                    <select class="form-control" id="site" name="site">
                      <option value="0">Please select</option>
                      <option value="1">Arusha</option>
                      <option value="2">Dar-es-salaam</option>
                      <option value="3">Mwanza</option>
                    </select>
                  </div>

                  <div class="form-group col-sm-4 col-lg-4">
                    <label for="status"><strong>Status:</strong></label>
                    <select class="form-control" id="status" name="status">
                      <option value="0">Active</option>
                      <option value="1">Inactive</option>
                    </select>
                  </div>
                </div>
              </div>
			        <!-- /.modal-body -->
			  
              <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                <button class="btn btn-primary" type="submit">Save changes</button>
              </div>
			        <!-- /.modal-footer -->
			  
            </div>
            <!-- /.modal-content-->
          </div>
          <!-- /.modal-dialog-->
        </div>
        <!-- /.end-edit-user-modal-->

		<!-- /.start-view-modal-->
        <div class="modal fade" id="viewUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-success" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">User details</h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">X</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="card">
                  <div class="card-header">Roger P. Njau</div>
                  <div class="card-body">
                    <dl class="row">
                      <dt class="col-sm-3">Email:</dt>
                      <dd class="col-sm-9">roger.njau@tcra.go.tz</dd>
                      <dt class="col-sm-3">Phone #:</dt>
                      <dd class="col-sm-9"> 0780-000000</dd>
                      <dt class="col-sm-3">Site/Region:</dt>
                      <dd class="col-sm-9">Dar-es-salaam</dd>
                      <dt class="col-sm-3">Role:</dt>
                      <dd class="col-sm-9">System Administrator.</dd>
                      <dt class="col-sm-3 text-truncate">Status:</dt>
                      <dd class="col-sm-9"><span class="badge badge-success">Active</span> <span class="badge badge-danger">Inactive</span></dd>
                    </dl>
                  </div>
                </div>
				
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
				</div>
			  </div>
			</div>
              
            </div>
            <!-- /.modal-content-->
          </div>
          <!-- /.modal-dialog-->
        <!-- /.end-view-modal-->
		
      </main>

<!-- Start AsideMenu View -->
<jsp:include page="includes/asideMenuView.jsp" />
<!-- End AsideMenu View --> 

    </div>
<!-- Start Top header View -->
<jsp:include page="includes/footer.jsp" />
<!-- End Top Header View -->
<script type="text/javascript">

$(document).ready(function() {

    $('#datatables').DataTable();

    });

  </script>
  </body>
</html>
