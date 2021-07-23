
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
<!--  Start Searching Content//-->
function addRole(){
	var role_name = document.getElementById("role_name").value; 
	var description = document.getElementById("description").value; 
	var identifier = document.getElementById("add_id").value; 
	if (role_name == "") {
		alert("Please enter Role Name!");
		die("");
	}

	if (description == "") {
		alert("Please enter Description!");
		die("");
	}
	else{
		var answer = confirm("Please confirm to Add Role!")
		if (answer) {
	 $.ajax({
	     type: "post",
	      url: "actions/configuration/rolesAction.jsp", //this is my servlet
	       data: {
	    	   role_name: role_name,
	    	   description: description,
	    	   identifier: identifier
	           }, 
	          success: function(msg){    
	          
        	  var response = JSON.parse(msg);
              var status = response.status;
              if (status == 1) { 
                    alert("Role successfully Added!");
                    document.getElementById("role_name").value = "";
      	            document.getElementById("description").value = "";
                    location.reload();
                } 
              if (status == 2) { 
                    alert("Error, could not Add Role!");
                }
	          
	          }
	     });
		}
	}
}
function editRole(val){
	var role_id = val; 
	document.getElementById("role_id").value = role_id;
	var identifier = document.getElementById("edit_id").value; 
	 $.ajax({
	     type: "post",
	      url: "actions/configuration/rolesAction.jsp", //this is my servlet
	       data: {
	    	   role_id: role_id,
	    	   identifier: identifier,
	           }, 
	          success: function(msg){
	          var array = msg.split('|');
	          document.getElementById("roleName").value = array[0].trim();
	          document.getElementById("role_description").value = array[1].trim();
	          
	          }
	     });
}

function updateRole(){
	var role_name = document.getElementById("roleName").value; 
	var description = document.getElementById("role_description").value; 
	var role_id = document.getElementById("role_id").value; 
	var identifier = document.getElementById("update_id").value; 
	
	if (role_name == "") {
		alert("Please enter Role Name!");
		die("");
	}
	if (description == "") {
		alert("Please enter Description!");
		die("");
	}
	else{
		var answer = confirm("Please confirm to Update Role!")
		if (answer) {
	 $.ajax({
	     type: "post",
	      url: "actions/configuration/rolesAction.jsp", //this is my servlet
	       data: {
	    	   role_name: role_name,
	    	   description: description,
	    	   role_id:role_id,
	    	   identifier:identifier,
	           }, 
	          success: function(msg){    
	          
        	  var response = JSON.parse(msg);
              var status = response.status;
              if (status == 1) { 
                    alert("Role successfully Updated!");
                    document.getElementById("roleName").value = "";
      	            document.getElementById("role_description").value = "";
                    location.reload();
                } 
              if (status == 2) { 
                    alert("Error, could not Update Role!");
                }
	          
	          }
	     });
		}
	}
}
</script>
<input id="add_id" type="hidden" value="1" >
<input id="edit_id" type="hidden"  value="2" >
<input id="update_id" type="hidden" value="3" >
<input id="role_id" type="hidden" >

      <main class="main">
         <!-- Breadcrumb-->
         <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            Settings
          </li>   
          <li class="breadcrumb-item">
            <a href="roles.jsp">Roles</a>
          </li>   
        </ol>        
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> List of Roles            
                    <div class="card-header-actions">
                       <button class="btn btn-pill btn-block btn-primary mb-1" type="button" data-toggle="modal" data-target="#addRoleDetailsModal"><i class="fa fa-plus"></i> <b>Add Role</b> </button>                    
                    </div>
                  </div>
                  <div class="card-body">
                   
                    <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
										<thead>
											<tr>
												<th>Name</th>
												<th>Description</th>
												<th class="disabled-sorting">Actions</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
                        <th>Name</th>
												<th>Description</th>
												<th class="disabled-sorting">Actions</th>
											</tr>
										</tfoot>
										<tbody>										
						          <!-- Start of the Table Body -->	
									  <%	
										java.util.List<Roles> roleList = Roles.GetRolesList();
                                        
                                        for (int i = 0; i < roleList.size(); i++) {
                                        %>									  
											<tr>										
												<td><% out.print(roleList.get(i).getRoles_name()); %></td>
												<td><% out.print(roleList.get(i).getDescription()); %></td>
												<td>          
                      <!--  <a class="btn btn-success" href="permissions.jsp" title="PERMISSION"> <i class="fa fa-search-plus"></i> </a> -->
						<a class="btn btn-info" href="#editRoleDetailsModal" data-toggle="modal" title="EDIT" id="<% out.print(roleList.get(i).getRoleID()); %>" onClick="editRole(<% out.print(roleList.get(i).getRoleID()); %>);"><i class="fa fa-edit"></i> </a>
                     <!--   <a class="btn btn-danger" href="#deleteRolesModal" data-toggle="modal"  title="DELETE"><i class="fa fa-trash-o"></i></a> -->
												</td>
											</tr>	
											<%
										}
										%>														
											<!-- End of the Table Body -->
										   </tbody>
									    </table>                     
                    

                    
                </div>
                
              </div>
             
            </div>
          </div>
        </div>
      </main>
<!-- Start AsideMenu View -->
<jsp:include page="includes/asideMenuView.jsp" />
<!-- End AsideMenu View --> 
    </div>
    

 <!-- Start Add Roles Form -->
 	<div class="modal fade" id="addRoleDetailsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-primary" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">New Role</h4>
                  <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">X</span>
                  </button>
                </div>
                <div class="modal-body">
                <div class="card-body">
                    <form action="" method="post">
                      <div class="form-group">
                        <label for="role-name"><strong>Role Name</strong></label>
                        <input class="form-control" id="role_name" type="text" name="role-name" placeholder="Enter Role Name..">
                        
                      </div>
                      <div class="form-group">
                        <label for="role-description"><strong>Role Description</strong></label>
                        <input class="form-control" id="description" type="text" name="role-description" placeholder="Enter Role Description..">
                       
                      </div>
                    </form>
                  </div>
                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                  <button class="btn btn-primary" type="button" onClick="addRole();">Save</button>
                </div>
              </div>
              <!-- /.modal-content-->
            </div>
            <!-- /.modal-dialog-->
          </div>
 <!-- End Add Roles Form -->


  <!-- Edit Add Roles Form -->
 <div class="modal fade" id="editRoleDetailsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-primary" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Edit Role</h4>
                  <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">X</span>
                  </button>
                </div>
                <div class="modal-body">
                <div class="card-body">
                    <form action="" method="post">
                      <div class="form-group">
                        <label for="role-name"><strong>Role Name</strong></label>
                        <input class="form-control" id="roleName" type="text" name="roleName" placeholder="Enter Role Name..">
                      </div>
                      <div class="form-group">
                        <label for="role-description"><strong>Role Description</strong></label>
                        <input class="form-control" id="role_description" type="text" name="role_description" placeholder="Enter Role Description..">
                       
                      </div>
                    </form>
                  </div>
                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                  <button class="btn btn-primary" type="button" onClick="updateRole();">Save</button>
                </div>
              </div>
              <!-- /.modal-content-->
            </div>
            <!-- /.modal-dialog-->
          </div>
  <!-- End Edit Roles Form -->



<!-- Start Delete Roles Modal -->
   <div class="modal fade" id="deleteRolesModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-danger" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Delete Role</h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">X</span>
                </button>
              </div>
              <div class="modal-body">
                <p>Are you sure you want to <b>delete</b> this Role ?</p>
              </div>
              <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                <button class="btn btn-danger" type="sumit">Delete</button>
              </div>
            </div>
            <!-- /.modal-content-->
          </div>
          <!-- /.modal-dialog-->
        </div>
<!-- End Delete Roles Modal -->

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
