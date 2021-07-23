<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.csp.*" %> 
<%@ page import="org.apache.commons.codec.digest.*" %>

<!-- Start Header -->
<jsp:include page="csp-includes/header.jsp" />
<!-- End Header -->


<script type="text/javascript" src="js/registration-js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">

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
              
              document.getElementById("programme-name2").value = array[1].trim();
              document.getElementById("start-time2").value = array[2].trim();
              document.getElementById("end-time2").value = array[3].trim();
              document.getElementById("objective2").value = array[6].trim();
              document.getElementById("audience2").value = array[7].trim();
              document.getElementById("achievement2").value = array[8].trim();
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
	var day2 = document.getElementById('dayText').value;

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
			  day2: day2
	           }, 
	          success: function(msg){      
	          $('#output').append(msg);
	        }
	     });
	}
}



function updateProgram(){
	var program2 = document.getElementById('program-name2').value;
	alert(program2);
	var start2 = document.getElementById('start-time2').value;
	var end2 = document.getElementById('end-time2').value;
	var objective2 = document.getElementById('objective2').value;
	var audience2 = document.getElementById('audience2').value;
	var expectation2 = document.getElementById('expectation2').value;
	var day3 = document.getElementById('dayText').value;

	if (program2 == "") {
		alert("Please enter program name!");
		die("");
	}
	else if (start2 == "") {
		alert("Please enter start time!");
		die("");
	}
	
	else if (end2 == "") {
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
	      url: "new-program-action.jsp", //this is my servlet
	       data: {
			  program2: program2,
			  start2: start2,
			  end2: end2,
			  objective2: objective2,
			  audience2: audience2,
			  expectation2: expectation2,
			  day3: day3
	           }, 
	          success: function(msg){      
	          $('#output').append(msg);
	        }
	     });
	}
}


</script>

<div id="output"></div>
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
        <jsp:include page="csp-includes/csp-pledit-topbar.jsp" />
        <!-- End Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

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
                        <label>Lengo Kuu</label>
                        <select class="selectpicker" id="objective" multiple>
                          <option>Burudani</option>
                          <option>Kuelimisha</option>
                          <option>Kuonya</option>
                        </select>
                      </div>

                      <div class="form-group col-6">
                        <label>Target Audience</label>
                        <select class="selectpicker" id="audience" multiple>
                          <option>Adults</option>
                          <option>Children</option>
                          <option>Women</option>
                        </select>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="programme-name">Expectations</label>
                      <textarea class="form-control" id="expectation" rows="2"></textarea>
                    </div>

                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                  <button class="btn btn-primary" onClick="newProgram();" href="login.html">Submit</button>
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
                <h5 class="modal-title" id="exampleModalLabel">Ready to Publish?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                </div>
                <div class="modal-body">
                  <label>Choose Quarter to publish your Program Line-Up</label>
                  <select class="form-control">
	                  <option>Quarter 1 (July - September)</option>
	                  <option>Quarter 2 (October - December)</option>
	                  <option>Quarter 3 (January - March)</option>
	                  <option>Quarter 4 (April - June)</option>
                  </select>
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
                        <label>Lengo Kuu</label>
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

</body>

</html>