<%
response.setHeader("Cache-control", "no-cache");
response.setHeader("Cache-control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expire",0);

if (session.getAttribute("channelID") != null ) {
%>
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
	
	document.getElementById('dayName').value = day;
	
	$.ajax({ 
	     type: "GET",
	      url: "csp-get-approved-program.jsp", //this is my servlet
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
			          s += '<th class="no-sort" style="width:12%">Time</th>';			          
			          s += '<th class="no-sort" >Name</th>';
			          s += '<th class="no-sort" >Main Objective</th>';
			          s += '<th class="no-sort" >Target Audience</th>';
			          s += '<th class="no-sort" >Expectetions</th>';
			         // s += '<th>Status</th>';
			          //s += '<th>Actions</th>';
			          s += '</tr>';
			          s += '</thead>';
			          s += '<tfoot>';
			          s += '<tr>';
			          s += '<th class="no-sort" style="width:12%">Time</th>';			          
			          s += '<th class="no-sort" >Name</th>';
			          s += '<th class="no-sort" >Main Objective</th>';
			          s += '<th class="no-sort" >Target Audience</th>';
			          s += '<th class="no-sort" >Expectetions</th>'
			         // s += '<th>Status</th>';
			          //s += '<th>Actions</th>';
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
							s += '<td>' + programList.expectedArchivement + '<input type="hidden" id="entryDate" value="'+programList.entryDate+'"></td>';
							//s += '<td>' + programList.status + '</td>';
							//s += '<td> <a class="btn btn-primary btn-circle btn-sm" href="#editProgrammeModal" data-toggle="modal" title="EDIT"  onClick="editProgram('+ programList.id +');" ><i class="fas fa-pencil-alt"></i></a>&nbsp; <a class="btn btn-danger btn-circle btn-sm" href="#editProgrammeModal" data-toggle="modal" title="DELETE"  onClick="editProgram(' + programList.id + ');"><i class="fas fa-trash"></i></a></td>';
							s += '</tr>';
			          });	
			      	
			          s += '</tbody>';
			          s += '</table>';
			          s += '</div>';
			          $('#result').html(s);
			          $('#datatables').DataTable( {
                          "order": [],
                           "columnDefs": [{
                               "targets": 'no-sort',
                               "orderable": false,
                    			 }]
                   		});

			        }
	   });
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
                
                     <h5> <i class="fas fa-fw fa-clock"></i> CURRENT PROGRAM LINE-UP  </h5>
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
                  
                </div>
                <!--</div> -->
            </div>
            
            <div class="card-body">
					<div id="result"></div>
            </div>
        </div>

		  <div class="d-flex justify-content-end">
          
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
                      <input type="text" class="form-control" id="program-name" name ="program-name" required>
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
                  <button class="btn btn-primary" onClick="newProgram();">Submit</button>
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
                  <label>Are you sure you want to publish <input type="text" id="dayName">programs ?</label>
                  
                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                   <button class="btn btn-primary" type="button" onClick="publisProgram();" data-dismiss="modal">Yes</button>
                 
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

      <%
} else {
	session.setAttribute("channelID", null);
	session.setAttribute("channel_name", null);
	session.setAttribute("company_name", null);
	session.setAttribute("user_id", null);
	session.setAttribute("company_address", null);
	session.setAttribute("contact_person", null);
	session.setAttribute("mobile_phone", null);
	session.setAttribute("email", null);
    session.invalidate();
	response.sendRedirect("index.jsp");
}
%>