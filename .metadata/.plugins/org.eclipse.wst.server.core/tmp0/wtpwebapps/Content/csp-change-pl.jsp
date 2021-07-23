<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.csp.*" %> 
<%@ page import="org.apache.commons.codec.digest.*" %>
<%@ page import="tcms.errorLogs.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<!-- Start Header -->
<jsp:include page="csp-includes/header.jsp" />
<!-- End Header -->


<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.js"></script>

<script type="text/javascript">


function getDay(){

	var sel = document.getElementById("day");
	var day= sel.options[sel.selectedIndex].text;
	var channelID = document.getElementById('channelID').value;
	
	$.ajax({ 
	     type: "GET",
	      url: "csp-get-program.jsp", //this is my servlet
	      dataType: "json",
	       data: {
			  day: day,
			  channelID: channelID
	           }, 
		          success: function(programList){  
			          var s = '';
			          s += '<div class="fresh-datatables">';
			          s += '<table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">';
			          s += '<thead>';
			          s += '<tr>';
			          s += '<th>Time</th>';
			          s += '<th>Name</th>';
			          s += '<th>Main Objective</th>';
			          s += '<th>Target Audience</th>';
			          s += '<th>Expectetions</th>';
			          s += '<th>Actions</th>';
			          s += '</tr>';
			          s += '</thead>';
			          s += '<tfoot>';
			          s += '<tr>';
			          s += '<th>Time</th>';
			          s += '<th>Name</th>';
			          s += '<th>Main Objective</th>';
			          s += '<th>Target Audience</th>';
			          s += '<th>Expectetions</th>';
			          s += '<th>Actions</th>';
			          s += '</tr>';
			          s += '</tfoot>';
			          s += '<tbody >';
			          $.each(programList.data, function(index,programList) {        
			              //alert(equipmentList.make+" -- "+equipmentList.model+" -- "+equipmentList.country+" -- "+equipmentList.equipmentType+" -- "+equipmentList.cdate)
			                s += '<tr>';
						    s += '<td>' + programList.time + '</td>';
							s += '<td>' + programList.programeName + '</td>';
							s += '<td>' + programList.programObjective + '</td>';
							s += '<td>' + programList.targetAudience + '</td>';
							s += '<td>' + programList.expectedArchivement + '</td>';
							
							s += '<td> <a class="btn btn-primary btn-circle btn-sm" href="#editProgrammeModal" data-toggle="modal" title="EDIT"  onClick="editProgram('+ programList.id +');" ><i class="fas fa-pencil-alt"></i></a>&nbsp; <a class="btn btn-danger btn-circle btn-sm" href="#editProgrammeModal" data-toggle="modal" title="DELETE"  onClick="editProgram(' + programList.id + ');"><i class="fas fa-trash"></i></a></td>';
							s += '</tr>';
			          });	
			      	
			          s += '</tbody>';
			          s += '</table>';
			          s += '</div>';
			          $('#result').html(s);
			          $('#datatables').DataTable( {
			        	  dom: 'Bfrtip',
				            buttons: [
				            	
				                'copy', 'csv', 'excel', 'pdf', 'print'
				                
				            ]
			           } );

			        }
	   });
}


function newProgram(){
	
	var program = document.getElementById('program-name').value;
	var start = document.getElementById('start-time').value;
	var end = document.getElementById('end-time').value;
	var objective = document.getElementById('objective').value;
	var audience = document.getElementById('audience').value;
	var expectation = document.getElementById('expectation').value;
	var sel = document.getElementById("day");
	var day2= sel.options[sel.selectedIndex].text;
	var channelID = document.getElementById('channelID').value;

	if (program == "") {
		alert("Please enter program name!");
		die("");
	}
	else if (start == "") {
		alert("Please enter start time!");
		die("");
	}
	else if (end == "") {
		alert("Please enter end time!");
		die("");
	}
	else if (objective == "") {
		alert("Please enter program objective!");
		die("");
	}
	else if (audience == "") {
		alert("Please program audience!");
		die("");
	}
	else if (expectation == "") {
		alert("Please enter program expectations!");
		die("");
	}
	else{
	 $.ajax({
	     type: "post",
	      url: "new-program-action.jsp", //this is my servlet
	       data: {
			  program: program,
			  start: start,
			  end: end,
			  objective: objective,
			  audience: audience,
			  expectation: expectation,
			  day2: day2,
			  channelID: channelID
	           }, 
	          success: function(msg){   
	        	  location.reload();
	        	  getDay();
	          $('#output').append(msg);
	        }
	     });
	}
}

function editProgram(val){
    var program_id = val;
     $.ajax({
         type: "post",
          url: "get-program-action.jsp", //this is my servlet
           data: {
               program_id: program_id
               },
              success: function(msg){
              var array = msg.split('|');
              document.getElementById("programmeID").value = array[0].trim();
              document.getElementById("programme-name2").value = array[1].trim();
              document.getElementById("start-time2").value = array[2].trim();
              document.getElementById("end-time2").value = array[3].trim();
              document.getElementById("objective2").value = array[6].trim();
              document.getElementById("audience2").value = array[7].trim();
              document.getElementById("achievement2").value = array[8].trim();
              }
         });
}

function updateProgram(){
	

	var programmeID = document.getElementById('programmeID').value;
	var program2 = document.getElementById('programme-name2').value;
	var startTime = document.getElementById('start-time2').value;
	var endTime = document.getElementById('end-time2').value;
	var objective2 = document.getElementById('objective2').value;
	var audience2 = document.getElementById('audience2').value;
	var expectation2 = document.getElementById('achievement2').value;
	var sel = document.getElementById("day");
	var day3= sel.options[sel.selectedIndex].text;
	var channelID = document.getElementById('channelID').value;

	alert(programmeID);
	
	if (program2 == "") {
		alert("Please enter program name!");
		die("");
	}
	else if (startTime == "") {
		alert("Please enter start time!");
		die("");
	}
	
	else if (endTime == "") {
		alert("Please enter end time!");
		die("");
	}
	
	else if (objective2 == "") {
		alert("Please enter program objective!");
		die("");
	}
	
	else if (audience2 == "") {
		alert("Please program audience!");
		die("");
	}
	
	else if (expectation2 == "") {
		alert("Please enter program expectations!");
		die("");
	}
	
	else{
	 $.ajax({
	     type: "post",
	      url: "update-program-action.jsp", //this is my servlet
	       data: {
	    	   	  programmeID: programmeID,
				  program2: program2,
				  startTime: startTime,
				  endTime: endTime,
				  objective2: objective2,
				  audience2: audience2,
				  expectation2: expectation2,
				  day3: day3,
				  channelID: channelID
	           }, 
	          success: function(msg){      
	        	  location.reload();
	        	  getDay();
	          $('#output').append(msg);
	        }
	     });
	}
}


</script>

<div id="output"></div>
<input type="hidden" id="channelID" value="<% out.print(session.getAttribute("channelID")); %>">
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Start Sidebar -->
    <jsp:include page="csp-includes/sidebar.jsp" />
    <!-- End Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Start Topbar -->
        <jsp:include page="csp-includes/csp-home-topbar.jsp" />
        <!-- End Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <!--<div class="clearfix"> -->
                <div class="d-flex justify-content-between">
                   <div class="dropdown">
    
    <select class="form-control rounded-pill" id="day" name="day"onChange="getDay();">
		<%
	 		File errorLogs = null;
            String errorLogFile = Utility.getPath();
            errorLogs = new File(errorLogFile);
			try{
						                    
			java.util.List<Days> contentList = Days.getDays();
						
			for (int i = 0; i < contentList.size(); i++){
				
			%>
			<option value="<% out.print(contentList.get(i).getId());%>"> <% out.print(contentList.get(i).getDay()); %> </option>								      
			 <%
			}
			}catch(Exception er){
				er.printStackTrace();
			ErrorLogsAppender.appendException("Search.jsp page", er, errorLogs);
			}
		%>
	</select>
</div>
                    <button class="btn btn-sm btn-primary rounded-pill" data-toggle="modal" data-target="#addProgrammeModal"><i class="fas fa-plus"></i> Add programme</button>
                </div>
                <!--</div> -->
            </div>
            
            <div class="card-body">
					<div id="result"></div>
            </div>
        </div>

		  <div class="d-flex justify-content-end">
            <button class="btn btn-sm btn-success rounded-pill" data-toggle="modal" data-target="#addGuideModal" style="position: fixed; bottom: 2em; z-index: 1;"><i class="fas fa-plus"></i> Publish</button>
          </div>
          <div id="outputProgram"></div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->



  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

    <!-- Add Programme Modal-->
   <div class="modal fade" id="addProgrammeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Create new Programme?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                </div>
                <div class="modal-body">
                	
                    <div class="form-group">
                      <label for="programme-name">Programme name</label>
                      <input type="text" class="form-control" id="program-name" required>
                    </div>

                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="start-time">Start time</label>
                        <input type="time" class="form-control" id="start-time" required>
                      </div>

                      <div class="form-group col-md-6">
                        <label for="end-time">End time</label>
                        <input type="time" class="form-control" id="end-time" required>
                      </div>
                    </div>

                    <div class="form-row">
                      <div class="form-group col-6">
                        <label>Objectives</label>
                        
                        <select class="selectpicker" id="objective">
                          <%
							try{
										                    
							java.util.List<Objctives> list = Objctives.getObjective();
										
							for (int i = 0; i < list.size(); i++){
								
							%>
							<option value="<% out.print(list.get(i).getId());%>"> <% out.print(list.get(i).getObjectiveName()); %> </option>								      
							 <%
							}
							}catch(Exception er){
								er.printStackTrace();
							ErrorLogsAppender.appendException("Search.jsp page", er, errorLogs);
							}
						%>
                        </select>
                    
                      </div>

                      <div class="form-group col-6">
                        <label>Target Audience</label>
                         <div class="dropdown">
                        <select class="selectpicker" id="audience">
                           <%
							try{
										                    
							java.util.List<TargetAudience> list = TargetAudience.getTargetAudience();
										System.out.println(list.size());
							for (int i = 0; i < list.size(); i++){
								
							%>
							<option value="<% out.print(list.get(i).getId());%>"> <% out.print(list.get(i).getTargetAudienceName()); %> </option>								      
							 <%
							}
							}catch(Exception er){
								er.printStackTrace();
							ErrorLogsAppender.appendException("Search.jsp page", er, errorLogs);
							}
						%>
                        </select>
                        </div>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="programme-name">Expectations</label>
                      <textarea class="form-control" id="expectation" rows="2"></textarea>
                    </div>

                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                  <button class="btn btn-primary" onClick="updateProgram();">Submit</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Add Programme Modal-->

    <!-- Add Programme Modal-->
   <div class="modal fade" id="addGuideModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><b>Publish Daily Programs</b></h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                </div>
                <div class="modal-body">
                  <label>Are you sure you want to publish Monday programs ?</label>
                  
                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                  <a class="btn btn-success" href="#">Yes</a>
                </div>
            </div>
        </div>
    </div>
    <!-- End Add Programme Modal-->

    <!-- Edit Programme Modal-->
   <div class="modal fade" id="editProgrammeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Programme?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                </div>
                <div class="modal-body">
                <input type="hidden" id="programmeID" name="programmeID">
                    <div class="form-group">
                      <label for="programme-name">Programme name</label>
                      <input type="text" class="form-control" id="programme-name2" required>
                    </div>

                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="start-time">Start time</label>
                        <input type="time" class="form-control" id="start-time2" required>
                      </div>

                      <div class="form-group col-md-6">
                        <label for="end-time">End time</label>
                        <input type="time" class="form-control" id="end-time2" required>
                      </div>
                    </div>
                    
                    <div class="form-row">
                      <div class="form-group col-6">
                        <label>Objective</label>
                        <input type="text" id="objective2" class="selectpicker" />
                      </div>

                      <div class="form-group col-6">
                        <label>Target Audience</label>
                        <input type="text" id="audience2" class="selectpicker" />
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="programme-name">Expectations</label>
                      <textarea class="form-control" id="achievement2" rows="2"></textarea>
                    </div>

                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                  <button class="btn btn-primary" type="button" onClick="updateProgram();" data-dismiss="modal">Update</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Edit Programme Modal-->
    
      <!-- Start Delete Program Lineup Modal-->
   <div class="modal fade" id="deleteProgrammeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">      
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete a program</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                </div>
                <div class="modal-body">Are you sure you want to delete this program ?</div>
                <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-danger" href="login.html">Delete</a>
                </div>
            </div>
        </div>
    </div>
   <!-- End Delete Program Lineup Modal-->

    <!-- Logout Modal-->
   <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Logout Modal-->

	<!-- Start Footer -->
	<jsp:include page="csp-includes/footer.jsp" />
	<!-- End Footer -->
 
  <script type="text/javascript">

	$(document).ready(function() {
	    $('#datatables').DataTable( {
	        dom: 'Bfrtip',
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ]
	    } );
	} );
	
	$(document).ready(function() {
		 getDay();
		});
</script>
 
</body>

</html>

