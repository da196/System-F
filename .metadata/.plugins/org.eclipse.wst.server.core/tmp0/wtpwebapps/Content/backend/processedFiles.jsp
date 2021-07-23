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

<script type="text/javascript">

function getContent(){
	
	var contentType = document.getElementById("contentType").value;
	var file_date = document.getElementById("inputDate").value; 
	var channel_id = document.getElementById("channel").value; 
	
	if (contentType == "") {
		alert("Please select Content Type!");
		die("");
	}
	if (file_date == "") {
		alert("Please select date");
		die("");
	}
	if (channel_id == "") {
		alert("Please select Channel!");
		die("");
	}
	else{
	//document.getElementById("overlay").style.display = "block";
	 $.ajax({
	       type: "GET",
	       url: "actions/components/getProcessedFiles.jsp", //this is my servlet
	       dataType: "json",
	       data: {
	    	   file_date: file_date,
	    	   channel_id: channel_id,
	    	   contentType: contentType
	           }, 
	          success: function(applicationList){    
	        	
		          //document.getElementById("overlay").style.display = "none";
		          var s = '';
		          s += '<div class="fresh-datatables">';
		          s += '<table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">';
		          s += '<thead>';
		          s += '<tr>';
		          s += '<th>Channel Name</th>';
		          s += '<th>File Name</th>';
		          s += '<th>Serial Number</th>';
		          s += '<th>Time</th>'; 
		          s += '<th>Download File</th>'; 
		          s += '</tr>';
		          s += '</thead>';
		          s += '<tfoot>';
		          s += '<tr>';
		          s += '<th>Channel Name</th>';
		          s += '<th>File Name</th>';
		          s += '<th>Serial Number</th>';
		          s += '<th>Time</th>';
		          s += '<th>Download File</th>'; 
		          s += '</tr>';
		          s += '</tfoot>';
		          s += '<tbody >';
		         
		          $.each(applicationList.data, function(index,applicationList) {  
		        	 
		                s += '<tr>';
					    s += '<td>' + applicationList.channelName + '</td>';
						s += '<td>' + applicationList.fileName + '</td>';
						s += '<td>' + applicationList.fileSerialNo + '</td>';
						s += '<td>' + applicationList.time + '</td>';
						//s += '<td>' + applicationList.flag + '</td>';						
						//s += '<td> <span class="badge badge-danger" style="font-size:15px;">' + applicationList.flag + '</span></td>';
						
						s += '<td> <a class="icon-arrow-down-circle icons" href="../../' + applicationList.url + '" title="Download" download="' + applicationList.url + '"></a></td>';
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
}
</script>
<div id="overlay"></div>
<input type="hidden" id="filename" />

      <main class="main">
         <!-- Breadcrumb-->
         <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            Settings
          </li>   
          <li class="breadcrumb-item">
            <a href="processedFiles.jsp">Processed Files</a>
          </li>   
        </ol>        
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
              
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> Search for the Processed Files             
                  </div>

                  <div class="card-body">                  

                     <!-- Start Search for the files -->                                         
	      			  <div class="form-group row">

			      			   <div class="form-group col-sm-12">
			      			   
				      			   <div class="form-group row">
				      			   
				      			        <div class="form-group col-sm-3">
				      			        <label for="source"><strong>Content Type</strong></label>
						                <select class="form-control" id="contentType" name="contentType" >
							 			<option value="">-- Content Type -- </option>
						 	 			<%
						 	 			File errorLogs = null;
						                String errorLogFile = Utility.getPath();
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
				      			  			<label for="source"><strong>Date</strong></label>
				      			  			<input class="form-control" id="inputDate" type="date" name="inputDate">  
				      			        </div>			      			         
			      			            
			      			             <div class="form-group col-sm-2" style="padding:15px;">			      			         
				      			            <button class="btn btn-sm btn-primary" type="submit" onClick="getContent();">
                      						<i class="fa fa-dot-circle-o"></i> Search </button>
			      			            </div>
				      			   
				      			   </div>
				      			   
				      			   				      			   
				      			   </div>
			      			  			      			   
			      			   </div>
	      			                     
                    <!-- End Search for the files --> 


                    <!-- Start for display files --> 
                   
					<div id="result"></div>
                        
                   
                    <!-- End for display files --> 
                </div>
                
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
</html>

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