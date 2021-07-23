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
	var start_time = document.getElementById("startTime").value; 
	var end_time = document.getElementById("endTime").value; 
	var channel_id = document.getElementById("channel").value; 
	var program = document.getElementById("program").value;
	var identifier = document.getElementById("search").value; 
	
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
	if (start_time == "" || end_time =="") {
		alert("Please enter time");
		die("");
	}
	
	else{
	document.getElementById("overlay").style.display = "block";
	 $.ajax({
	     type: "post",
	      url: "actions/components/search_content.jsp", //this is my servlet
	       data: {
	    	   file_date: file_date,
	    	   start_time:start_time,
	    	   end_time:end_time,
	    	   channel_id: channel_id,
	    	   identifier: identifier,
	    	   program: program,
	    	   contentType: contentType
	           }, 
	          success: function(msg){  
	              var filename = msg.trim();
	        	  
		          document.getElementById("overlay").style.display = "none";
		          document.getElementById("filename").value = filename
		          if(contentType == 1)  {
		        	  $("#search_player").show();
		        	  $("#video").show();
			          $("#audio").hide();
			  
		        	  $("#classic-video").attr("src","../../mergeFiles/" + filename);
		          }else{
		        	  $("#search_player").show();
		        	  $("#audio").show();
			          $("#video").hide();
		
		        	  $("#classic-audio").attr("src","../../mergeFiles/" + filename);
		          }
	        	 
	          }
	     });
	}
}

function trimAudioVideo(){
	
	var filename = document.getElementById("filename").value;
	var title = document.getElementById("title").value;
	var description = document.getElementById("description").value;
	var identifier = document.getElementById("trim").value; 
	var channel_id = document.getElementById("channel").value; 
	var contentType = document.getElementById("contentType").value;
	var userID = document.getElementById("userID").value;
	
	var hh_from = document.getElementById("hh_from").value;
	var mm_from = document.getElementById("mm_from").value;
	var ss_from = document.getElementById("ss_from").value;
	var hh_duration = document.getElementById("hh_duration").value;
	var mm_duration = document.getElementById("mm_duration").value;
	var ss_duration = document.getElementById("ss_duration").value;
	
	var cut_from = hh_from + ":" + mm_from + ":" + ss_from;
	//var duration = (hh_duration - hh_from) + ":" + (mm_duration - mm_from) + ":" + (ss_duration - ss_from);
	var duration = hh_duration + ":" + mm_duration+ ":" + ss_duration ;

	if (filename == "") {
		alert("No File to trim please retrive the file");
		die("");
	}
	if (channel_id == "") {
		alert("Please select Channel!");
		die("");
	}
	if (cut_from == "") { 
		alert("Please cut from");
		die("");
	}
	if (duration =="") {
		alert("Please enter duration");
		die("");
	}
	if (title =="") {
		alert("Please enter title");
		die("");
	}
	else{
	document.getElementById("overlay").style.display = "block";
	 $.ajax({
	     type: "post",
	      url: "actions/components/search_content.jsp", //this is my servlet
	       data: {
	    	   filename: filename,
	    	   cut_from: cut_from,
	    	   duration: duration,
	    	   title: title,
	    	   description: description,
	    	   identifier: identifier,
	    	   channel_id: channel_id,
	    	   contentType: contentType,
	    	   userID: userID
	           }, 
	          success: function(msg){  
	        	document.getElementById("overlay").style.display = "none";
	        	
	        	  var response = JSON.parse(msg);
                  var status = response.status;
                  if (status == 1) {
                        alert("File Successfully Generated. Click on Library menu to view and download!");
                        location.reload();
                        document.getElementById("filename").value = "";
                    	document.getElementById("cut_from").value = "";
                    	document.getElementById("duration").value = "";
                    	document.getElementById("title").value = "";
                    	document.getElementById("description").value = "";
                    	document.getElementById("channel").value = "";
                    	document.getElementById("contentType").value = "";
						document.getElementById("inputDate").value = ""; 
                    	document.getElementById("startTime").value = ""; 
                    	document.getElementById("endTime").value = ""; 
                    	document.getElementById("program").value = "";
                                   		    
                    } else {
                    	
                        alert("Error!.. File Couldn't Generated");
                        
                    }
                },
                error : function(msg) {
                	 alert("Error!.. File Couldn't Generated");
                    
                }
	     });
	}
}
</script>
<div id="overlay"></div>
<input type="hidden" id="filename" />
<input type="hidden" id="search" value="search" />
<input type="hidden" id="trim" value="trim" />
<input id="userID" name="userID" type="hidden" value ="<% out.print(session.getAttribute("userID")); %>">

      <main class="main">
         <!-- Breadcrumb-->
         <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            Components
          </li>   
          <li class="breadcrumb-item">
            <a href="search.jsp">Search</a>
          </li>   
        </ol>        
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
              
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> Search for the Content Playback             
                  </div>

                  <div class="card-body">                  

                     <!-- Start Search for the content --> 
                                        
               <!--     <form class="form-horizontal"  action="" method="post">	-->
	      			  <div class="form-group row">

			      			   <div class="form-group col-sm-10">
			      			   
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
			      			            
			      			            <div class="form-group col-sm-3">
			      			  			<label for="source"><strong>Date</strong></label>
			      			  			<input class="form-control" id="inputDate" type="date" name="inputDate">  
			      			            </div>
			      			            
			      			            <div class="form-group col-sm-3">
			      			            <label for="source"><strong>Start Time</strong></label>
			      			  			<input class="form-control" id="startTime" type="time" name="startTime"> 
			      			            </div>
			      			            
			      			            <div class="form-group col-sm-3">
			      			  			<label for="source"><strong>End Time</strong></label>
			      			  			<input class="form-control" id="endTime" type="time" name="endTime" placeholder="11:20 AM">
			      			            </div>
				      			   
				      			   </div>
				      			   
				      			   
				      			   <div class="form-group row">
				      			   
				      			        <div id="channel_id" class="form-group col-sm-3">
				      			            <label for="channel"><strong>Channel Name</strong></label>
					                        <select class="form-control" name="channel" id="channel" >
					                        <option value="">-- Channel Name -- </option>
					                       
					                        </select>			      			  
			      			            </div>
			      			            
			      			            <div class="form-group col-sm-7">
				      			            <label for="source"><strong>Description</strong></label>
				      			            <input class="form-control" id="program" type="text" name="program" placeholder="Program">
				      			            			      			            
			      			            </div>
			      			            
			      			           
			      			            <div class="form-group col-sm-2">
			      			         
				      			            <button class="btn btn-sm btn-primary" type="submit" onClick="getContent();">
                      						<i class="fa fa-dot-circle-o"></i> Search </button>
			      			            </div>
			      			            		      			            
			      			  
			      			            </div>
				      			   
				      			   </div>
			      			  			      			   
			      			   </div>
	      			  
	      			  
                  <!--   </form> -->
                   

                    <!-- End Search for the content --> 


                    <!-- Start DIV for video/audio player --> 
                        
                    <div id='search_player'>
                    	<div class="row">
	                        
                            <div class="col-sm-12 col-lg-6"> 
                             <div class="card">
                              <div class="card-body text-center">
                              
                              <div id="video">
	                            <video id="classic-video" class="media-video" controls>
	                            
	                                <source src="" type="video/mp4">
	                                    Your browser does not support the video element.
	                            </video>
	                            </div>

                              <div id="audio">
	                           
	                            <audio id="classic-audio" controls> 
	                            <source src="" type="audio/mp3" preload="auto">
	                            </audio>
	                            </div>
	                          </div>
	                          </div>
	                          </div>
	                          
	                          
	                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                          <div class="col-sm-12 col-lg-4 mb-2">
	                                   
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> Trim Content Playback             
                  </div>

                  <div class="card-body">  
                  
						              <div class="form-group mr-1">
									<label for="cutFrom"><strong>Cut From </strong></label>
										</div>     
						          <div class="d-flex">
									<div class="form-group mr-1">
									
									<input class="form-control" type="text" id = "hh_from" maxlength = 2 placeholder="HH">
									</div> 
									<div class="form-group mr-1">
										
										<input class="form-control" type="text" id = "mm_from" maxlength = 2 placeholder="MM"> 			  			
									</div>
									<div class="form-group mr-1">
										
										<input class="form-control" type="text" id = "ss_from" maxlength = 2 placeholder="SS">	      			  			
									</div>
									</div>
									<!-- Duration -->
        							 <div class="form-group mr-1">
									<label for="duration"><strong>Duration </strong></label>
										</div>     
						          <div class="d-flex">
									<div class="form-group mr-1">
									
									<input class="form-control" type="text" id = "hh_duration" maxlength = 2 placeholder="HH">
									</div> 
									<div class="form-group mr-1">
										
										<input class="form-control" type="text" id = "mm_duration" maxlength = 2 placeholder="MM">	      			  			
									</div>
									<div class="form-group mr-1">
										
										<input class="form-control" type="text" id = "ss_duration" maxlength = 2 placeholder="SS">	      			  			
									</div>
									</div>
									
									<!-- Tittle -->
									 <div class="form-group mr-1">
									<label for="title"><strong>Tittle </strong></label>
									<input class="form-control" id="title" type="text" name="title">
										</div> 
	                               
	                                
	                                <!-- Description -->
	                                 <div class="form-group">
									<label  for="title"><strong>Description </strong></label>
									<textarea class="form-control"  id="description" name="description"></textarea>
										</div> 
	                                 <div class="form-group row justify-content-center">
	                                  <button type="submit" class="btn btn-primary justify-content-center" onClick="trimAudioVideo();">
	                                  <i class="fa fa-cut">&nbsp;</i>Trim</button>
	                                </div>
	                          	
	                          	
	                          	</div>
	                          	</div>
	                          </div>
                    	</div>
                    </div>


                    <!-- End DIV for video/audio player --> 


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

$(document).ready(function() {
    $("#search_player").hide();
    document.getElementById("contentType").value = "";  
});

</script>
<!-- <script type="text/javascript">
$(document).ready(function (){
	
    $("#cut_from").focusin(function (evt) {
        $(this).keypress(function () {
            content=$(this).val();
            content1 = content.replace(/\:/g, '');
            length=content1.length;
            if(((length % 2) == 0) && length < 10 && length > 1){
                $('#cut_from').val($('#cut_from').val() + ':');
            }
        });
    });
    
    $("#duration").focusin(function (evt) {
        $(this).keypress(function () {
            content=$(this).val();
            content1 = content.replace(/\:/g, '');
            length=content1.length;
            if(((length % 2) == 0) && length < 10 && length > 1){
                $('#duration').val($('#duration').val() + ':');
            }
        });
    });
});

</script>

 -->
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