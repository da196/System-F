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
                                 		
     					<h5> <i class="fas fa-clipboard-list"></i> COMPANY PROFILE </h5>
                </div>
                <!--</div> -->
            </div>
            
            <div class="card-body">
            
<form>

  <div class="form-group row">
    <label for="companyName" class="col-sm-2 col-form-label">Company Name</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="companyName" value="<% out.print(session.getAttribute("company_name")); %>" readonly>
    </div>
  </div>
  

  <div class="form-group row">
    <label for="channel" class="col-sm-2 col-form-label">Channel</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="channel" value="<% out.print(session.getAttribute("channel_name")); %>" readonly>
    </div>
  </div>
  
   
  <div class="form-group row">
    <label for="Address" class="col-sm-2 col-form-label">Company Address</label>
    <div class="col-sm-5">
      <textarea class="form-control" id="Address" readonly> <% out.print(session.getAttribute("company_address")); %></textarea>
    </div>
  </div>
  
  <div class="form-group row">
    <label for="contactPerson" class="col-sm-2 col-form-label">Contact Person</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="contactPerson" value="<% out.print(session.getAttribute("contact_person")); %>" readonly>
    </div>
  </div>
  
  <div class="form-group row">
    <label for="email" class="col-sm-2 col-form-label">Email</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="email" value="<% out.print(session.getAttribute("email")); %>" readonly>
    </div>
  </div>
  
   <div class="form-group row">
    <label for="phoneNumber" class="col-sm-2 col-form-label">Phone Number</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" id="phoneNumber" value="<% out.print(session.getAttribute("mobile_phone")); %>" readonly>
    </div>
  </div>
 
  
</form>
						
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
