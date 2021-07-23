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

function getProgram(){
	
	var sel = document.getElementById("day");
	var day= sel.options[sel.selectedIndex].text;
	
	var sel_channel = document.getElementById('channel');
	var channelname = sel_channel.options[sel_channel.selectedIndex].text;
	
	var channelID = document.getElementById('channel').value;
	if (day == "") {
		alert("Please select Day");
		die("");
	}
	if (channelID == "") {
		alert("Please select Channel!");
		die("");
	}
	else{
	$.ajax({ 
	     type: "GET",
	      url: "actions/configuration/getApprovedPL.jsp", //this is my servlet
	      dataType: "json",
	       data: {
			  day: day,
			  channelID: channelID
	           }, 
		          success: function(programList){  
			          var s = '';
			          s += '<h6> <strong><center> '+day + " - " + channelname +' Program Line Up </center></strong></h6>';
			          s += '<div class="fresh-datatables">';
			          s += '<table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">';
			          s += '<thead>';
			          s += '<tr>';
			          s += '<th class="no-sort" style="width:12%">Time</th>';
			          s += '<th class="no-sort">Name</th>';
			          s += '<th class="no-sort">Main Objective</th>';
			          s += '<th class="no-sort">Target Audience</th>';
			          s += '<th class="no-sort">Expectetions</th>';
			         // s += '<th>Status</th>';
			          //s += '<th>Actions</th>';
			          s += '</tr>';
			          s += '</thead>';
			          s += '<tfoot>';
			          s += '<tr>';
			          s += '<th>Time</th>';
			          s += '<th>Name</th>';
			          s += '<th>Main Objective</th>';
			          s += '<th>Target Audience</th>';
			          s += '<th>Expectetions</th>';
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
			         
			        }
	   });
	}
}


</script>

      <main class="main">
         <!-- Breadcrumb-->
         <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            Program Line up
          </li>   
          <li class="breadcrumb-item">
            <a href="programLineup.jsp">PL - Current</a>
          </li>   
        </ol>        
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> Current Program Line up for all Channels             
                  </div>

                  <div class="card-body" style="padding-bottom:0px; margin-bottom:0px;">                  
                     <!-- Start Search for the content --> 
                                        
                  
	      			  <div class="form-group row">
	      			  			      					      			  			      			  
			      			   <div class="form-group col-sm-12">
			      			   
				      			   <div class="form-group row">
				      			   
				      			    <div class="form-group col-sm-3">
				      			        <label for="content"><strong>Content Type</strong></label>
			      			  			<select class="form-control" id="contentType" name="contentType" >
					                    <option value="">-- Content Type -- </option>
						 	 			<%
						 	 			File errorLogs = null;
						                String errorLogFile = "";//Utility.getPath();
						                errorLogs = new File(errorLogFile);
										try{
													                    
										java.util.List<Lookup> contentList = Lookup.GetContentTypeList();
													
										for (int i = 0; i < contentList.size(); i++){
											
										%>
										<option value="<% out.print(contentList.get(i).getId());%>"> <% out.print(contentList.get(i).getName()); %> </option>								      
										 <%
										}
										}catch(Exception er){
											er.printStackTrace();
										ErrorLogsAppender.appendException("Search.jsp page", er, errorLogs);
										}
						 	 			%>
					                         
					                        </select>
			      			            </div>
				      			   
				      			        <div id="channel_id" class="form-group col-sm-3">
				      			            <label for="channel"><strong>Channel Name</strong></label>
					                        <select class="form-control" name="channel" id="channel" >
					                        <option value="">-- Channel Name -- </option>
					                       
					                        </select>			      			  
			      			            </div>
			      			            
			      			            <div class="form-group col-sm-3">
			      			  			<label for="day"><strong>Day</strong></label>
											<select class="form-control" id="day">
					                          	<%
	 		
										            
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

			      			            <div class="form-group col-sm-3">
			      			            	<br>			      			         
				      			            <button class="btn btn-sm btn-primary" type="submit" onClick="getProgram();">
                      						<i class="fa fa-dot-circle-o"></i> Search 
                      						</button>
                      						
			      			            </div>
			      			          			      			   
				      			   </div>				      			   
				      			   </div>			      			  			      			   
			      			   </div>      			  
	      			  </div>
                   
                    <div class="col-sm-12 col-xl-12">
                    <!-- Start Table -->
                  <!--   <h6> <strong><center> ITV PROGRAM LINE UP </center></strong></h6>  -->
                    
                     <div class="card-body">
					<div id="result"></div>
            		</div>
                    </div>
                    
                    
                    <!-- End Table -->
                   
                    
                    </div> <!-- End Div card-body -->

                    <!-- Start DIV for video/audio player --> 
                        
                    <div id='search_player'>

                    
                    </div>


                    <!-- End DIV for video/audio player --> 


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
  <script type="text/javascript">

$(document).ready(function (){
	
	$("#contentType").on("change", function (){
		var content_type_id = $("#contentType").val(); // get content id in a selected box 
		
		$.ajax({
			url: "channel.jsp", // yuor jsp page name
			data:{
				content_type_id: content_type_id
			},
			method: "POST",
			success: function (data)
			{
				$("#channel_id").html(data);
			}
		})
	});

	
});
</script>

<script type="text/javascript">

$(document).ready(function() {

    $('#datatables').DataTable();

    });

  </script>
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
