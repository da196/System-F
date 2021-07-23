<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.csp.*" %> 
<%@ page import="org.apache.commons.codec.digest.*" %>

   
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
<title>OTAS - LOGIN FORM</title>

<!-- ALL REGISTRATION CSS STYLES -->
<link rel="stylesheet" type = "text/css" href="css/registration-css/fonts-googleapis.css" >
<link rel="stylesheet" type = "text/css" href="css/registration-css/bootstrap.min.css">
<link rel="stylesheet" type = "text/css" href="css/registration-css/bootstrap-theme.min.css">
<link rel="stylesheet" type = "text/css" href="css/registration-css/custom.css">



  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">


<div class="card shadow mb-4">
            <div class="card-header py-3">
                <!--<div class="clearfix"> -->
                <div class="d-flex justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Monday Programmes</h6>
                    <button class="btn btn-sm btn-primary rounded-pill" data-toggle="modal" data-target="#addProgrammeModal"><i class="fas fa-plus"></i> Add programme</button>
                </div>
                <!--</div> -->
            </div>
            
            <%
            String day = request.getParameter("day");
            java.util.List<Program> programList = ProgramManipulator.getPrograms("2", day);
            //System.out.println(programList.size());
            %>
            <input type="hidden" id="day2" value="<% out.print(day); %>"/>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable"  width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Start Time</th>
                                <th>End Time</th>
                                <th>Name</th>
                                <th>Main Objective</th>
                                <th>Target Audience</th>
                                <th>Expectations</th>
                                <th class="disabled-sorting">Actions</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>No</th>                       
                                <th>Start Time</th>
                                <th>End Time</th>
                                <th>Name</th>
                                <th>Main Objective</th>
                                <th>Target Audience</th>
                                <th>Expectations</th>
                                <th class="disabled-sorting">Actions</th>
                            </tr>
                        </tfoot>
                            <tbody>										
                            <!-- Start of the Table Body -->
                            
                            <%
                            for (int i = 0; i < programList.size(); i++) {
                            	out.print("<tr>");
                            	out.print("<td>");
                            	out.print(i+1);
                            	out.print("</td>");
                            	out.print("<td>");
                            	out.print(programList.get(i).getStartTime());
                            	out.print("</td>");
                            	
                            	out.print("<td>");
                            	out.print(programList.get(i).getEndTime());
                            	out.print("</td>");
                            	
                            	out.print("<td>");
                            	out.print(programList.get(i).getProgramName());
                            	out.print("</td>");
                            	
                            	out.print("<td>");
                            	out.print(programList.get(i).getProgramObjective());
                            	out.print("</td>");
                            	
                            	out.print("<td>");
                            	out.print(programList.get(i).getTargetAudience());
                            	out.print("</td>");
                            	
                            	out.print("<td>");
                            	out.print(programList.get(i).getExpectedArchievement());
                            	out.print("</td>");                        	
                            	%>	
                            
                                <td class="d-flex justify-content-center">                                                            
                                   <a class="btn btn-primary btn-circle btn-sm" >
                                            <i class="fas fa-pencil-alt" aria-hidden="true"> </i>
                                    </a>
                                </td>
	                            <%
	                        	out.print("</tr>");
	                            }
	                            %>	
                            
                                		
                                <!-- End of the Table Body -->
                            </tbody>
                    </table>
                </div>
            </div>
        </div>

</body>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>

  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>
   <script src="js/dataTables.editor.min.js"></script>
   <script src="vendor/datatables/dataTables.editor.min.js"></script>
 
  
  
 <script type='text/javascript'>
 $(document).ready(function() {
	 
	var myTable = $('#dataTable').DataTable();
	// Click to make EDIT
	   $("#dataTable").on('mousedown.edit', "i.fas.fa-pencil-alt", function(e) {
		   
	        $(this).removeClass().addClass("fas fa-bed");
	        var $row = $(this).closest("tr").off("mousedown");
	        var $tds = $row.find("td").not(':first').not(':last');

	        $.each($tds, function(i, el) {
	          var txt = $(this).text();
	          var id = i;

	          $(this).html("").append("<input type='text' id=\""+id+"\" value=\""+txt+"\">");
	        });

	      });
	   	   
	// Click to SAVE 
	   $("#dataTable").on('mousedown.save', "i.fas.fa-bed", function(e) {
		   
		    var startTime = document.getElementById("0").value;
		    var endTime = document.getElementById("1").value;
		    var name = document.getElementById("2").value;
		    var objective = document.getElementById("3").value;
		    var audience = document.getElementById("4").value;
		    var expectation = document.getElementById("5").value;
		    var day3 = document.getElementById("day2").value;
		    
		    if (startTime == "") {
				alert("Please enter start time!");
				die("");
			}
			else if (endTime == "") {
				alert("Please enter end time!");
				die("");
			}
			
			else if (name == "") {
				alert("Please enter program name!");
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
			      url: "get-program-actions.jsp", //this is my servlet
			       data: {
					  startTime: startTime,
					  endTime: endTime,
					  name: name,
					  objective: objective,
					  audience: audience,
					  expectation: expectation,
					  day3: day3
			           }, 
			          success: function(msg){      
			          $('#output').append(msg);
			        }
			     });
			}
		    
		    
	        
	        $(this).removeClass().addClass("fas fa-pencil-alt");
	        var $row = $(this).closest("tr");
	        var $tds = $row.find("td").not(':first').not(':last');
	        
	        $.each($tds, function(i, el) {
	        	
	          var txt = $(this).find("input").val()
	          $(this).html(txt);
	          
	  
	        });
	        
	        
	        
	      });
 });
                       
</script>


</html>  

