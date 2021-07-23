<%
response.setHeader("Cache-control", "no-cache");
response.setHeader("Cache-control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expire",0);

if (session.getAttribute("userID") != null && session.getAttribute("roleID").equals("3") ) {
%>
<%@ page import="tcms.configuration.*" %>
<%@ page import="tcms.presentation.*" %>
<%@ page import="tcms.errorLogs.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="tcms.csp.*" %> 

<!-- Start header -->
<jsp:include page="includes/header.jsp" />
<!-- End header -->

<!-- Start Top header View -->
<jsp:include page="includes/topView.jsp" />
<!-- End Top Header View -->

<!-- Start SideBar View -->
<jsp:include page="includes/sideView.jsp" />
<!-- End SideBar View -->

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.js"></script>
<script type="text/javascript">

function getProgramLineUp(){
	
	$.ajax({ 
	     type: "GET",
	      url: "actions/configuration/getProgramLineStatus.jsp", //this is my servlet
	      dataType: "json",
	       data: {
	           }, 
		          success: function(applicationList){  
		        	 
			          var s = '';
			          s += '<div class="fresh-datatables">';
			          s += '<table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">';
			          s += '<thead>';
			          s += '<tr>';
			          s += '<th>ID</th>';
			          s += '<th>Channel Name</th>';
			          s += '<th>Day</th>';
			          s += '<th>Request Date</th>';
			          s += '<th>Status</th>';
			          s += '<th>Actions</th>';
			          s += '</tr>';
			          s += '</thead>';
			          s += '<tfoot>';
			          s += '<tr>';
			          s += '<th>ID</th>';
			          s += '<th>Channel Name</th>';
			          s += '<th>Day</th>';
			          s += '<th>Request Date</th>';
			          s += '<th>Status</th>';
			          s += '<th>Actions</th>';
			          s += '</tr>';
			          s += '</tfoot>';
			          s += '<tbody >';
			          $.each(applicationList.data, function(index,applicationList) {  
			                s += '<tr>';
						    s += '<td>' + applicationList.applicationID + '</td>';
							s += '<td>' + applicationList.channelName + '<input type="hidden" id="channelName" value="'+ applicationList.channelName +'"></td>';
							s += '<td>' + applicationList.day + '<input type="hidden" id="dayName" value="'+ applicationList.day +'"></td>';
							s += '<td>' + applicationList.entryDate + '</td>';
							//s += '<td>' + applicationList.flag + '</td>';						
							s += '<td> <span class="badge badge-danger" style="font-size:15px;">' + applicationList.flag + '</span></td>';
							
							s += '<td> <a class="btn btn-primary btn-circle btn-sm" href="#viewChangeRequestModal" data-toggle="modal" title="View"  onClick="viewComment('+ applicationList.applicationID +');" ><i class="fa fa-book"></i></a>&nbsp; <a class="btn btn-warning btn-circle btn-sm" href="#previewProgramLineup" data-toggle="modal" title="Preview"  onClick="approveProgramLineUp(' + applicationList.applicationID +');"><i class="fa fa-eye"></i></a></td>';
							s += '</tr>';
			          });	
			          //',' + applicationList.channelName + ',' + applicationList.day 
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

function approveProgramLineUp(appID){
    var applicationID = appID;
    var channelName = document.getElementById("channelName").value;
    var day = document.getElementById("dayName").value;
    
    document.getElementById("applicationID").value = applicationID;
     $.ajax({
    	  type: "GET",
          url: "actions/configuration/getProgramLineUp.jsp", //this is my servlet
          dataType: "json",
          data: {
        	   applicationID: applicationID
           },
        	   success: function(programList){  
                 
			          var s = '';
			          s += '<div class="modal-header">';
			         // s += '<h4 class="modal-title">Change Request Program Line up</h4>';
			          s += '<h4 class="modal-title">' + day + ' - ' + channelName +' Change Request Program Line up</h4>';
			          s += '<button class="close" type="button" data-dismiss="modal" aria-label="Close">';
			          s += '<span aria-hidden="true">X</span>';
			          s += '</button>';
			          s += '</div>';
			          s += '<div class="modal-body">';
			          s += '<div class="fresh-datatables">';
			          s += '<table id="datatables1" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">';
			          s += '<thead>';
			          s += '<tr>';
			          s += '<th class="no-sort" style="width:12%">Time</th>';
			          s += '<th class="no-sort">Name</th>';
			          s += '<th class="no-sort">Main Objective</th>';
			          s += '<th class="no-sort">Target Audience</th>';
			          s += '<th class="no-sort">Expectetions</th>';
			          s += '<th class="no-sort">Status</th>';
			         
			          s += '</tr>';
			          s += '</thead>';
			          s += '<tfoot>';
			          s += '<tr>';
			          s += '<th class="no-sort" style="width:12%">Time</th>';
			          s += '<th class="no-sort">Name</th>';
			          s += '<th class="no-sort">Main Objective</th>';
			          s += '<th class="no-sort">Target Audience</th>';
			          s += '<th class="no-sort">Expectetions</th>';
			          s += '<th class="no-sort">Status</th>';
			        
			          s += '</tr>';
			          s += '</tfoot>';
			          s += '<tbody >';
			          $.each(programList.data, function(index,programList) {
			                s += '<tr>';
						    s += '<td>' + programList.time + '</td>';
							s += '<td>' + programList.programeName + ' </td>';
							s += '<td>' + programList.programObjective + '</td>';
							s += '<td>' + programList.targetAudience + '</td>';
							s += '<td>' + programList.expectedArchivement + '</td>';
							s += '<td>' + programList.flag + '</td>';
							s += '</tr>';
			          });	
			      	
			          s += '</tbody>';
			          s += '</table>';
			          s += '</div>';
			          s += '</div>';
			         /* s += '<div class="form-group" style="margin-left:2%; margin-right:2%">';
			          s += '<label for="role-name"><b>Remark</b></label>';
			          s += '<textarea class="form-control" id="reason"  name="reason">';	
			          s += '</textarea>';               
			          s += '</div>';
			   
			          s += '<div class="modal-footer">';
			          s += '<a  data-toggle="modal" href="#rejectRequestModal">  <button class="btn btn-danger" type="button" onClick="rejectApplication();"> Reject</button></a>';
			          s += '<button class="btn btn-success" data-toggle="modal" type="button" onClick="approveApplication();">Approve</button>';
			          s += '</div>';
			          */
			          $('#result2').html(s);
			          $('#datatables1').DataTable( {
                          "order": [],
                           "columnDefs": [{
                               "targets": 'no-sort',
                               "orderable": false,
                    			 }]
                   		});

			        }
	   });
}

function approveApplication(){
	var applicationID = document.getElementById("applicationID").value
	var reason = document.getElementById("remark").value;
	var userID = document.getElementById("userID").value;
	
	 var day = document.getElementById("dayName").value;
	 
	if (reason == "") {
		alert("Please enter Remark to Approve the request!");
		die("");
	}else{
	$.ajax({
        type: "post",
         url: "actions/configuration/approvePL.jsp", //this is my servlet
          data: {
        	  applicationID: applicationID,
        	  reason: reason,
        	  userID: userID,
        	  day: day
              },
             success: function(msg){
            	
            	 var response = JSON.parse(msg);
                 var status = response.status;
                 if (status == 1) {
                	 alert('Program Line Up successful Approved!');
                	 location.reload();
                 }else{
                	 alert("Couldn't Approve program!");
                	 location.reload();
                 }
             }
        });
	}
}

function rejectApplication(){
	var applicationID = document.getElementById("applicationID").value;
	var reason = document.getElementById("remark").value;
	var userID = document.getElementById("userID").value;

	var day = document.getElementById("dayName").value;
	if (reason == "") {
		alert("Please enter Remark to Reject the request!");
		die("");
	}else{
	
	$.ajax({
        type: "post",
         url: "actions/configuration/rejectPL.jsp", //this is my servlet
          data: {
        	  applicationID: applicationID,
        	  reason: reason,
        	  userID:userID,
        	  day: day
              },
             success: function(msg){
            	
            	 var response = JSON.parse(msg);
                 var status = response.status;
                 if (status == 1) {
                	 alert('Program Line Up successful Rejected!');
                	 location.reload();
                 }else{
                	 alert("Couldn't Rejected program!");
                	 location.reload();
                 }
             }
        });
	}
}

function viewComment(appID){
    var applicationID = appID;

	$.ajax({
        type: "post",
         url: "actions/configuration/getProgramComment.jsp", //this is my servlet
          data: {
        	  	applicationID: applicationID,
        	    },
             success: function(msg){
            	
            	 document.getElementById("reason").value = msg.trim();
             }
        });
    
}
</script>
<input id="userID" name="userID" type="hidden" value ="<% out.print(session.getAttribute("userID")); %>">

<input type="hidden" id="applicationID">

      <main class="main">
         <!-- Breadcrumb-->
         <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            Program Line up
          </li>   
          <li class="breadcrumb-item">
            <a href="programLineup.jsp">PL - Change Request</a>
          </li>   
        </ol>        
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i>Change Request Program Line up for all Channels             
                  </div>

                  <div class="card-body">
                   
						<div id="result"></div>                   
 			
                </div>
                
              </div>
             
            </div>
          </div>
        </div>
      </main>
 
    </div>
 
 
    <!-- Start View Change Request Form -->
 <div class="modal fade" id="viewChangeRequestModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-primary" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Change Request Form</h4>
                  <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">X</span>
                  </button>
                </div>
                <div class="modal-body">
                <div class="card-body">
                   
                    
                      <div class="form-group">
                        <label for="role-name"><b>Reason for Change Request</b></label>
                        	<textarea class="form-control" id="reason"  name="reason"></textarea>                    
                      </div>
                     
                   
                    </div>
                </div>
                
              </div>
              <!-- /.modal-content-->
            </div>
            <!-- /.modal-dialog-->
          </div>
    <!-- End View Change Request Form -->
    

       
<!-- Start Preview Changed Program Line up -->        
      
        <div class="modal fade" id="previewProgramLineup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-primary modal-lg" role="document">
            <div class="modal-content" style="width:1200px; margin-left:-150px;">

			        <div id="result2"></div>
			       
			       <div class="form-group" style="margin-left:2%; margin-right:2%">
			         <label for="role-name"><b>Remark</b></label>
			         <textarea class="form-control" id="remark"  name="remark"></textarea>    
			                    
			         </div>
			   
			        <div class="modal-footer">
			       <button class="btn btn-danger" type="button" onClick="rejectApplication();"> Reject</button>
			         <button class="btn btn-success" data-toggle="modal" type="button" onClick="approveApplication();">Approve</button>
			          </div>
            </div>
            <!-- /.modal-content-->
          </div>
          <!-- /.modal-dialog-->
        </div>
        <!-- /.end-add-user-modal-->


<!-- End Preview Changed Program Line up -->        

<!-- Start Top header View -->
<jsp:include page="includes/footer.jsp" />
<!-- End Top Header View -->
<script type="text/javascript">

	$(document).ready(function() {
	    $('#datatables').DataTable( {
	        dom: 'Bfrtip',
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ]
	    } );
	    $('#datatables1').DataTable( {
	        dom: 'Bfrtip',
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ]
	    } );
	} );
	
	$(document).ready(function() {
		getProgramLineUp();
		});
</script>
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