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
<style>
#overlay {
    position: fixed;
    display: none;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;

    z-index: 2;
    cursor: pointer;
    background: url('img/loading1.gif') 50% 50% no-repeat rgb(0,0,0,0.5);
}
</style>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.js"></script>

<script type="text/javascript">

$(document).ready(function() {
    $("#video").hide();
    
});

function getInterviewerVideo(){

	var startDate = document.getElementById('startDate').value;
	var endDate = document.getElementById('endDate').value;
	var keyword = document.getElementById('keyword').value;
	
	if (startDate == "") {
		alert("Please select Start Date");
		die("");
	}
	if (endDate == "") {
		alert("Please select End Date!");
		die("");
	}
	if (keyword == "") {
		alert("Please Enter Keyword!");
		die("");
	}
	else{
	$.ajax({ 
	     type: "GET",
	      url: "actions/configuration/getInterviewReport.jsp", //this is my servlet
	      dataType: "json",
	       data: {
	    	   startDate: startDate,
	    	   endDate: endDate,
	    	   keyword: keyword
	           }, 
		          success: function(list){  
			          var s = '';
			          s += '<h6> <strong><center> INTERVIEW REPORT FOR  '+ keyword + ' </center></strong></h6>';
			          s += '<div class="fresh-datatables">';
			          s += '<table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">';
			          s += '<thead>';
			          s += '<tr>';
			          s += '<th>Date</th>';
			          s += '<th>Channel</th>';
			          s += '<th> Start Time </th>';		
			          s += '<th> End Time </th>';		;
			          s += '<th>Action</th>';
			          s += '</tr>';
			          s += '</thead>';
			          s += '<tfoot>';
			          s += '<tr>';
			          s += '<th>Date</th>';
			          s += '<th>Channel</th>';
			          s += '<th> Start Time </th>';		
			          s += '<th> End Time </th>';		        ;
			          s += '<th>Action</th>';
			          s += '</tr>';
			          s += '</tfoot>';
			          s += '<tbody >';
			          $.each(list.data, function(index,list) {        
			            
			                s += '<tr>';						   
							s += '<td>' + list.contentDate + '</td>';
							s += '<td>' + list.channelName + '</td>';
							s += '<td>' + list.startTime +'</td>';
							s += '<td>' + list.endTime +'</td>';
							s += '<td> <a class="btn btn-primary btn-circle btn-sm" href="#viewInterviewLibrary" data-toggle="modal" title="VIEW"  onclick="getContent('+list.analysisID+','+list.channelID+',\''+list.contentDate.trim()+'\',\''+list.startTime.trim()+'\',\''+list.endTime.trim()+'\');" ><i class="fa fa-eye"></i></a>&nbsp; </td>';
							s += '</tr>';
			          });	
			      	
			          s += '</tbody>';
			          s += '</table>';
			          s += '</div>';
			          $('#result').html(s);
			          $('#datatables').DataTable({			        	
			           });

			        }
	   });
	}
}

function getContent(analysisID,channelID,contentDate, startTime, endTime){
	document.getElementById("overlay").style.display = "block";
	 $.ajax({
	     type: "post",
	      url: "actions/configuration/getInterviewAnalysis.jsp", //this is my servlet
	       data: {
	    	   analysisID: analysisID,
	    	   channelID: channelID,
	    	   contentDate: contentDate,
	    	   startTime: startTime,
	    	   endTime: endTime
	           }, 
	          success: function(msg){ 
	        	 
	        	  var array = msg.split('|');
	        	  var url = array[0].trim();
	        	  //var channelName = array[0];
	        	 
		          document.getElementById("overlay").style.display = "none";
		          $("#video").show();
		          $("#classic-video").attr("src","../../mergeFiles/" + url);
		          
		          
		          document.getElementById("channelName").value = array[3].trim();
		          document.getElementById("description").value = array[4].trim();
		          document.getElementById("generalObservation").value = array[1].trim();
		          

	          }
	     });
	

}

</script>

      <main class="main">
         <!-- Breadcrumb-->
         <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            Analysis Report
          </li>   
          <li class="breadcrumb-item">
            <a href="interviewReport.jsp">Interview Report</a>
          </li>   
        </ol>        
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> Interview Report for all Channels            
                  </div>

                  <div class="card-body" style="padding-bottom:0px; margin-bottom:0px;">                  
                     <!-- Start Search for the content --> 
                                        
                  
	      			  <div class="form-group row">
	      			  			      					      			  			      			  
			      			   <div class="form-group col-sm-12">
			      			   
				      			   <div class="form-group row">
				      			   
				      			    <div class="form-group col-sm-3">
				      			        <label for="startDate"><strong>Start Date</strong></label>
				      			        <input class="form-control" id="startDate" type="date" name="startDate"> 
			      			  			
			      			            </div>
				      			   
				      			        <div id="channel_id" class="form-group col-sm-3">
				      			            <label for="endDate"><strong>End Date</strong></label>
				      			            <input class="form-control" id="endDate" type="date" name="endDate"> 					                        			      			  
			      			            </div>
			      			            
			      			            <div class="form-group col-sm-3">
				      			  			<label for="day"><strong>Keyword</strong></label>
				      			  			<input class="form-control" id="keyword" type="text" name="keyword"> 					                        			      			  
			   														      			           					                        
					                    </div>

			      			            <div class="form-group col-sm-3">
			      			            	<br>			      			         
				      			            <button class="btn btn-sm btn-primary" type="submit" onClick="getInterviewerVideo();">
                      						<i class="fa fa-dot-circle-o"></i> Search 
                      						</button>
                      						
			      			            </div>
			      			          			      			   
				      			   </div>				      			   
				      			   </div>			      			  			      			   
			      			   </div>      			  
	      			  </div>
                   
                    <div class="col-sm-12 col-xl-12">                    
                      <div class="card-body">
                     
                     <!-- 	Start Table for display for all interview report here... -->
						 	<div id="result"></div>  
						
						
					<!-- End Table for display for all interview report here... -->		
										
            		 </div>
                    </div>
 
                    </div> <!-- End Div card-body -->

                    <!-- Start DIV for video/audio player --> 
                    
                </div>
                
              </div>
             
            </div>
          </div>
        </div>
      </main>
    </div>
    
    
<!-- Start Modal for the display of Interview Library           
        <div class="modal fade" id="viewInterviewLibrary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-primary modal-lg" role="document">
            <div class="modal-content" style="width:1200px; margin-left:-150px;">

			        <div id="result2"></div>
			        <div id="overlay"></div>
						        <div id="video">
	                            <video id="classic-video" class="media-video" controls>
	                            <source src="" type="video/mp4">Your browser does not support the video element.
	                            </video>
	                            </div>			       		  
            </div>          
          </div>        
        </div>     
 End Modal for the display of Interview Library 
 -->   



<!-- Start Modal for the display of Interview Library -->
<div class="modal fade" id="viewInterviewLibrary" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog modal-primary modal-lg" role="document">
<div class="modal-content" > 
<div class="row mt-4" >
 <div class="col-sm-12 col-lg-12"> 
     <div class="card">
     <div class="card-body text-center" style="width:800px;">    
     <div id="overlay"></div>                            
         <video id="classic-video" class="media-video" controls > 
             <source src="" type="video/mp4">
         </video>
     </div>
     <div class="card-footer" style="width:800px;">    
         <div class="form-group row">
            <div class="form-group col-2"><strong>Channel Name:</strong> 
            </div>
            <div class="form-group col-10">
            <input type="text" name="channelName" id="channelName" style="width:80%" readonly/>
            </div>
         </div>  
          <div class="form-group row">
            <div class="form-group col-2"><strong>Description:</strong>  
            </div>
            <div class="form-group col-10">
            <input type="text" name="description" id="description" style="width:80%" readonly/>
            </div>
         </div>
         <div class="form-group row">
            <div class="form-group col-2"><strong>General Observation:</strong>  
            </div>
            <div class="form-group col-10">
            <textarea name="generalObservation" id="generalObservation" style="width:80%"  readonly/></textarea>
            </div>
         </div>
         
         <button class="btn btn-primary" id="closemodal" type="button" data-dismiss="modal">Close</button>
         
    </div>
       </div>
 </div>
</div>
</div>
</div>
</div>
<!-- End Modal for the display of Interview Library --> 

<!-- Start Top header View -->
<jsp:include page="includes/footer.jsp" />
<!-- End Top Header View -->

  </body>
  
 

</html>
 <script type="text/javascript">
  $(document).ready(function() {
	  //alert('Auckland');
	  $('#closemodal').click(function() {
		    $('#viewInterviewLibrary').modal('hide');
		});
	  
	});
  </script>

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
