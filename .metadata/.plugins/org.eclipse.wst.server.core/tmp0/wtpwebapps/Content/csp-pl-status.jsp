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


function getProgramLineUp(){
	var channelID = document.getElementById('channelID').value;
	
	$.ajax({ 
	     type: "GET",
	      url: "csp-approved-pl-status.jsp", //this is my servlet
	      dataType: "json",
	      data: {
			  channelID: channelID
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
			          s += '<th>Action</th>';
			         // s += '<th>Actions</th>';
			          s += '</tr>';
			          s += '</thead>';
			          s += '<tfoot>';
			          s += '<tr>';
			          s += '<th>ID</th>';
			          s += '<th>Channel Name</th>';
			          s += '<th>Day</th>';
			          s += '<th>Request Date</th>';
			          s += '<th>Status</th>';
			          s += '<th>Action</th>';
			         // s += '<th>Actions</th>';
			          s += '</tr>';
			          s += '</tfoot>';
			          s += '<tbody >';
			          $.each(applicationList.data, function(index,applicationList) {  
			                s += '<tr>';
						    s += '<td>' + applicationList.applicationID + '</td>';
							s += '<td>' + applicationList.channelName + '</td>';
							s += '<td>' + applicationList.day + '</td>';
							s += '<td>' + applicationList.entryDate + '</td>';						
							if(applicationList.flag == 'Pending'){
							s += '<td> <span class="badge badge-warning" style="font-size:15px;">' + applicationList.flag + '</span></td>';
							}else if(applicationList.flag == 'Rejected'){
							s += '<td> <span class="badge badge-danger" style="font-size:15px;">' + applicationList.flag + '</span></td>';
							}else{
							s += '<td> <span class="badge badge-success" style="font-size:15px;">' + applicationList.flag + '</span></td>';	
							}
							s += '<td> <a class="btn btn-primary btn-circle btn-sm" href="#viewCommentModal" data-toggle="modal" title="View"  onClick="viewComment('+ applicationList.applicationID +');" ><i class="fa fa-eye"></i></a>';
							
							var channelName = applicationList.channelName;
							//s += '<td> <a class="btn btn-primary btn-circle btn-sm" href="#viewChangeRequestModal" data-toggle="modal" title="View"  onClick="editProgram('+ applicationList.applicationID +');" ><i class="fas fa-pencil-alt"></i></a>&nbsp; <a class="btn btn-danger btn-circle btn-sm" href="#previewProgramLineup" data-toggle="modal" title="Preview"  onClick="approveProgramLineUp(' + applicationList.applicationID + ');"><i class="fas fa-trash"></i></a></td>';
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

function viewComment(appID){
    var applicationID = appID;

	$.ajax({
        type: "post",
         url: "csp-get-comment.jsp", //this is my servlet
          data: {
        	  	applicationID: applicationID,
        	    },
             success: function(msg){
            	
            	 document.getElementById("reason").value = msg.trim();
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
        <!-- Begin Page Content -->
        <div class="container-fluid">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <!--<div class="clearfix"> -->
                <div class="d-flex justify-content-between">
                   		
                   		
     					<h5> <i class="fas fa-fw fa-clone"></i> PROGRAM LINE-UP STATUS </h5>
                </div>
                <!--</div> -->
            </div>
            
            <div class="card-body">
					<div id="result"></div>
            </div>
        </div>

		
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->



  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>




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
    
   <!-- View Comment Modal-->
   <div class="modal fade" id="viewCommentModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"> Change Request Comments </h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                </div>
                
                <div class="modal-body">  
                             
                   <form action="" method="post">
                      <div class="form-group">
                        <label for="role-name"><b>Reason for Change Request</b></label>
                        	<textarea class="form-control" id="reason"  name="reason"></textarea>                    
                      </div>                    
                    </form>
                            
                </div>
                
                <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                </div>
            </div>
        </div>
    </div>
    <!-- View Comment Modal-->    

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
		getProgramLineUp();
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
