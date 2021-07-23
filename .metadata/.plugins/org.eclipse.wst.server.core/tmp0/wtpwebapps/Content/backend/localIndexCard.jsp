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
	//var program = document.getElementById("program").value;
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
	    	   contentType: contentType,
	    	   identifier: identifier
	           }, 
	          success: function(msg){  
	        	  
	              var filename = msg.trim();
		          document.getElementById("overlay").style.display = "none";
		         
		          
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
function saveLocalNewsIndexCard(){
	
	var contentType = document.getElementById("contentType").value;
	var file_date = document.getElementById("inputDate").value; 
	var start_time = document.getElementById("startTime").value; 
	var end_time = document.getElementById("endTime").value; 
	var channel_id = document.getElementById("channel").value; 
	//var program = document.getElementById("program").value;
	
	var programTime = document.getElementById("programTime").value; 	
	var language = document.getElementById("language").value;
	var typeNews = document.getElementById("typeNews").value;
	var durationProgramme = document.getElementById("durationProgramme").value;
	var programmeName = document.getElementById("programmeName").value;
	
	var educationalContent = document.getElementById("educationalContent").value;
	var culturalIdentity = document.getElementById("culturalIdentity").value;
	var useOffensiveLanguage = document.getElementById("useOffensiveLanguage").value;
	var observeWatershedPeriod = document.getElementById("observeWatershedPeriod").value;
	var eventNationalInterest = document.getElementById("eventNationalInterest").value;
	var pictureGoodTaste = document.getElementById("pictureGoodTaste").value;
	var signLanguageInterpreter = document.getElementById("signLanguageInterpreter").value;
	var producer = document.getElementById("producer").value;
	var discloseNameProducer = document.getElementById("discloseNameProducer").value;
	var familyViewing = document.getElementById("familyViewing").value;
	var newsRegulationBreached = document.getElementById("newsRegulationBreached").value;
	var newsItemDescription = document.getElementById("newsItemDescription").value;
	var newsItemStartTime = document.getElementById("newsItemStartTime").value;
	var newsItemEndTime = document.getElementById("newsItemEndTime").value;
	
	var user_id = 1;
	
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
	if (programTime == "") {
		alert("Please select Program Information Time");
		die("");
	}
	if (typeNews == "") {
		alert("Please select Program Type!");
		die("");
	}
	if (programmeName == "") {
		alert("Please write Program Name!");
		die("");
	}
	if (newsItemDescription == "") {
		alert("Please write News Description!");
		die("");
	}
	if (newsItemStartTime == "") {
		alert("Please select Start Time of Content!");
		die("");
	}
	if (newsItemEndTime == "") {
		alert("Please select End time of Content!");
		die("");
	}
	if (eventNationalInterest == "") {
		alert("Please select Event of National Interest !");
		die("");
	}
	else{
	document.getElementById("overlay").style.display = "block";
	 $.ajax({
	     type: "post",
	      url: "actions/components/newLocalIndexCard.jsp", //this is my servlet
	       data: {
	    	   file_date: file_date,
	    	   start_time:start_time,
	    	   end_time:end_time,
	    	   channel_id: channel_id,
	    	   contentType: contentType,
	    	   programTime: programTime,
	    	   language: language,
	    	   typeNews: typeNews,
	    	   durationProgramme: durationProgramme,
	    	   programmeName: programmeName,
	    	   educationalContent: educationalContent,
	    	   culturalIdentity: culturalIdentity,
	    	   useOffensiveLanguage: useOffensiveLanguage,
	    	   observeWatershedPeriod: observeWatershedPeriod,
	    	   eventNationalInterest: eventNationalInterest,
	    	   pictureGoodTaste: pictureGoodTaste,
	    	   signLanguageInterpreter: signLanguageInterpreter,
	    	   producer: producer,
	    	   discloseNameProducer: discloseNameProducer,
	    	   familyViewing: familyViewing,
	    	   newsRegulationBreached: newsRegulationBreached,
	    	   newsItemDescription: newsItemDescription,
	    	   newsItemStartTime: newsItemStartTime,
	    	   newsItemEndTime: newsItemEndTime,
	    	   user_id: user_id
	           }, 
	          success: function(msg){  
		        	document.getElementById("overlay").style.display = "none";
		        	  var response = JSON.parse(msg);
	                  var status = response.status;
	                  if (status == 1) {
	                        alert("News Index Card Successfully Added");     	                                   		    
	                  }else {
	                        alert("Same Content already analyzed");          
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
<input type="hidden" id="search" value="search" />
      <main class="main">
         <!-- Breadcrumb-->
         <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            Analysis
          </li>   
          <li class="breadcrumb-item">
            <a href="localIndexCard.jsp">Local Index Card</a>
          </li>   
        </ol>        
        <!-- Breadcrumb-->
        
        
       <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-6">
			  
                <div class="card">
                  <div class="card-header">
                  <i class="fa fa-align-justify"></i>
                    <strong>Video/Audio Content for Analysis</strong>
                  </div>
                  <div class="card-body">
                    <div class="row">
					
					    <div class="form-group col-sm-4">
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
										ErrorLogsAppender.appendException("newsIndexCard.jsp page", er, errorLogs);
										}
						 	 			%>		
							</select>
					    </div>		
                        <div id="channel_id" class="form-group col-sm-4">
				      		<label for="channel"><strong>Channel Name</strong></label>
					        <select class="form-control" name="channel" id="channel" >
					        <option value="">-- Channel Name -- </option>               
					        </select>			      			  
			      		</div>	
						
                        <div class="form-group col-sm-4">
			      			<label for="source"><strong>Date</strong></label>
			      			<input class="form-control" id="inputDate" type="date" name="inputDate">  
			      		</div>
			      			          
                    </div>
                    <!-- /.row-->
                    <div class="row">
					    <div class="form-group col-sm-4">
			      			<label for="source"><strong>Start Time</strong></label>
			      			<input class="form-control" id="startTime" type="time" name="startTime"> 
			      	    </div>
                        <div class="form-group col-sm-4">
			      			<label for="source"><strong>End Time</strong></label>
			      			<input class="form-control" id="endTime" type="time" name="endTime" placeholder="11:20 AM">
						</div>
						<div class="form-group col-sm-4"style="padding-top:30px">
						    <button type="submit" class="btn btn-info" onClick="getContent();">
	                        <i class="fa fa-search">&nbsp;</i> Search </button>
						</div>
						 
                    </div>
                    <!-- /.row-->
					
					
					
					<!-- /.row-->
					  <div id='search_player'>
                    <div class="row">
					    <div class="form-group col-sm-12">
						
			      			<div class="card" >
                              <div class="card-body">
                              
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
                       
                    </div>
                    </div>
                    
                    <!-- /.row-->
                    
                  </div>
                </div>
              </div>
              <!-- /.col-->
              <div class="col-sm-6">
              <div class="card">
                  <div class="card-header">
                  <i class="fa fa-align-justify"></i>
                   <strong>Local Index Card - Analysis</strong>                 
                  </div>
                  <div class="card-body">
                    <div id="accordion" role="tablist">
                      <div class="card mb-0">
                        <div class="card-header" id="headingOne" role="tab">
                          <h5 class="mb-0">
                            <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Programme Information</a>
                          </h5>
                        </div>
                        <div class="collapse show" id="collapseOne" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                          <div class="card-body">
                                           
                          <div class="form-group row">
     			       
			      			       <div class="form-group col-sm-6">
			      			            <label for="source"><strong>Time</strong></label>
			      			  			<input class="form-control" id="programTime" type="time" name="programTime"> 
			      			       </div>
								    <div class="form-group col-sm-6">
				      			        <label for="language"><strong>Language</strong></label>
			      			  				<select class="form-control" id="language">
					                           <option value="">-- Select -- </option>
					                          <option value="English">English</option>
					                          <option value="Kiswahili">Kiswahili</option>
					                         
					                        </select>
			      			        </div>
                           </div>
                           
                            <div class="form-group row">

			      			        <div class="form-group col-sm-6">
				      			        <label for="typeNews"><strong>Type of Programme</strong></label>
			      			  				<select class="form-control" id="typeNews">
					                     <option value="">-- Select -- </option>
						 	 			<%
						 	 			
										try{
													                    
										java.util.List<NewsCategory> list = NewsCategory.getLocalCategoryList();
													
										for (int i = 0; i < list.size(); i++){
											
										%>
										<option value="<% out.print(list.get(i).getId());%>"> <% out.print(list.get(i).getCategory_name()); %> </option>								      
										 <%
										}
										}catch(Exception er){
											er.printStackTrace();
										ErrorLogsAppender.appendException("newsIndexCard.jsp page", er, errorLogs);
										}
						 	 			%>		
					                        </select>
			      			       </div>
			      			      	      			       
			      			       <div class="form-group col-sm-6">
			      			       		<label for="durationProgramme"><strong>Duration (Mins)</strong></label>
			      			  				<select class="form-control" id="durationProgramme">
					                           <option value="">-- Select -- </option>
					                          <option value="15">15</option>
					                          <option value="20">20</option>
					                          <option value="30">30</option>
					                          <option value="45">45</option>
					                          <option value="60">60</option>
					                        </select>
			      			       </div>
                           </div>
                           
                           <div class="form-group row">
                                    <div class="form-group col-sm-12">
				      			       	<input class="form-control" id="programmeName" type="text" name="programmeName" placeholder = "Write Programme name here..."> 		      			        
			      			        </div>
                           </div>
                          
                          </div>
                        </div>
                      </div>
                      <br/>
                      <div class="card mb-0">
                        <div class="card-header" id="headingTwo" role="tab">
                          <h5 class="mb-0">
                            <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Local Content</a>
                          </h5>
                        </div>
                        <div class="collapse" id="collapseTwo" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                           <div class="card-body">
                           
                          
                          <div class="form-group row">
                           <div class="form-group col-sm-4">
			      			       <label for="newsItemDescription"><strong>News Items Description</strong></label>
			      			       <input class="form-control" id="newsItemDescription" type="text" name="newsItemDescription"> 		      			        
			      			       </div>
                          			<div class="form-group col-sm-4">
			      			       		<label for="newsItemStartTime"><strong>News Items Start Time</strong></label>
			      			  				<input class="form-control" id="newsItemStartTime" type="time" name="newsItemStartTime"> 
			      			       </div> 
			      			       <div class="form-group col-sm-4">
			      			       <label for="newsItemEndTime"><strong>News Items End Time</strong></label>
			      			      <input class="form-control" id="newsItemEndTime" type="time" name="newsItemEndTime"> 
			      			       </div>
                          </div>                
                          <div class="form-group row">
				      			    <div class="form-group col-sm-4">
				      			        <label for="educationalContent"><strong>Educational <br> Content</strong></label>
			      			  				<select class="form-control" id="educationalContent">
					                           <option value="">-- Select -- </option>
					                          <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			        </div>
			      			        
			      			        <div class="form-group col-sm-4">
				      			        <label for="culturalIdentity"><strong>Cultural  <br> Identity </strong></label>
			      			  				<select class="form-control" id="culturalIdentity">
					                           <option value="">-- Select -- </option>
					                             <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
			      			      	      			       
			      			       <div class="form-group col-sm-4">
				      			        <label for="useOffensiveLanguage"><strong>Use Offensive Language </strong></label>
			      			  				<select class="form-control" id="useOffensiveLanguage">
					                           <option value="">-- Select -- </option>
					                             <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
			      			       
			      			      
                           </div>
                           
                            <div class="form-group row">
                            
                                   <div class="form-group col-sm-4">
				      			       <label for="observeWatershedPeriod"><strong>Observe Watershed Period</strong></label>
			      			  				<select class="form-control" id="observeWatershedPeriod">
			      			  				 <option value="">-- Select -- </option>
					                         <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                         
					                        </select>
			      			       </div>
				      			  			      			        
			      			        <div class="form-group col-sm-4">
				      			        <label for="eventNationalInterest"><strong>Event of National Interest </strong></label>
			      			  				<select class="form-control" id="eventNationalInterest">
					                           <option value="">-- Select -- </option>
									        <%
						 	 			
										try{
													                    
										java.util.List<Lookup> list = Lookup.GetContenNationaInterestList();
													
										for (int i = 0; i < list.size(); i++){
											
										%>
										<option value="<% out.print(list.get(i).getId());%>"> <% out.print(list.get(i).getName()); %> </option>								      
										 <%
										}
										}catch(Exception er){
											er.printStackTrace();
										ErrorLogsAppender.appendException("newsIndexCard.jsp page", er, errorLogs);
										}
						 	 			%>		
					                        </select>
			      			       </div>
			      			      	      			       
			      			       <div class="form-group col-sm-4">
			      			       		<label for="pictureGoodTaste"><strong>Picture <br> (Good Taste)</strong></label>
			      			  				<select class="form-control" id="pictureGoodTaste">
					                           <option value="">-- Select -- </option>
					                          <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
			      			       			      			        
                           </div>
                           
                            <div class="form-group row">
                            
                                   <div class="form-group col-sm-4">
				      			       <label for="signLanguageInterpreter"><strong>Sign Language Interpreter</strong></label>
			      			  				 <select class="form-control" id="signLanguageInterpreter">
				      			  				 <option value="">-- Select -- </option>
						                         <option value="Yes">Yes</option>
						                          <option value="No">No</option>
						                          <option value="N/A">N/A</option>			                         
					                        </select>
			      			       </div>
				      			  			      			        
			      			        <div class="form-group col-sm-4">
				      			        <label for="producer"><strong>Producer <br> Status</strong></label>
			      			  				<select class="form-control" id="producer">
					                           <option value="">-- Select -- </option>
					                          <option value="In-house">In-house</option>
					                          <option value="Independent">Independent</option>
					                       
					                        </select>
			      			       </div>
			      			      	      			       
			      			       <div class="form-group col-sm-4">
			      			       		<label for="discloseNameProducer"><strong>Disclose name of Producer</strong></label>
			      			  				<select class="form-control" id="discloseNameProducer">
					                            <option value="">-- Select -- </option>
						                         <option value="Yes">Yes</option>
						                          <option value="No">No</option>
						                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>  			      			        
                           </div>
                           
                           
                           <div class="form-group row">
                            
                                   <div class="form-group col-sm-6">
				      			       <label for="familyViewing"><strong>Family Viewing/Programme Classification</strong></label>
			      			  				<select class="form-control" id="familyViewing">
			      			  				 <option value="">-- Select -- </option>
						                         <option value="Yes">Yes</option>
						                          <option value="No">No</option>
						                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
				      			  			      			        			      			         			      	      			       
			      			     			      			        
                           </div>
                           
                           
                            <div class="form-group row">
                                 <div class="form-group col-sm-12">
				      			        <label for="newsRegulationBreached"><strong>General Observation / Regulation Breached - (Local Content)</strong></label>
                        			<div class="col-sm-12">
                          				<textarea class="form-control" id="newsRegulationBreached" name="newsRegulationBreached" rows="5" placeholder="Write your observation here ..."></textarea>
                        			</div>
                                 </div>        
                           </div>

                          </div>
                        </div>
                      </div>
                                                                 
                        <br/>

                       
                        <button style='margin-left:10px;' class="btn btn-success pull-right"  onClick="saveLocalNewsIndexCard();" type="button"><i class="fa fa-save"></i>&nbsp;<b>Save Analysis</b></button>
                        <!--   
                        <button style='margin-left:10px;' class="btn btn-success pull-right" type="button"><i class="fa fa-check"></i>&nbsp;<b>Complete</b></button>
                         <button class="btn btn-info pull-right"  type="button"  data-toggle="modal" data-target="#previewLocalIndexModal">
                       		<i class="fa fa-eye"></i>&nbsp;<b>Preview</b>                     
                     	 </button> 
						-->
                     
                    </div>
                  </div>
                </div>
              
              
              </div>
              <!-- /.col-->
            </div>
            <!-- /.row-->
            
        </div>
        </div>    

      </main>


 </div>
 
 
 
<!-- Start Local Index Card Preview Modal-->
      
        <div class="modal fade" id="previewLocalIndexModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-primary modal-lg" role="document">
            <div class="modal-content" style="width:1200px; margin-left:-150px;">
              <div class="modal-header">
                <h4 class="modal-title">Local Index Card - History </h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">X</span>
                </button>
              </div>
			        <!-- /.modal-header-->
              <div class="modal-body">
              
                <!-- /.Table Start -->
            
                    <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
										<thead>
											<tr>
												<th>Channel</th>
												<th>Date</th>
												<th>News Type</th>
												<th>Item Name</th>
						                        <th>Duration</th>
												<th class="disabled-sorting">Actions</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
						                        <th>Channel</th>
												<th>Date</th>
												<th>News Type</th>
												<th>Item Name</th>
						                        <th>Duration</th>					                  
												<th class="disabled-sorting">Actions</th>
											</tr>
										</tfoot>
										<tbody>										
						          <!-- Start of the Table Body -->	
									  
											<tr>										
												<td>ITV</td>
												<td>23/12/2019</td>
												<td>Local</td>
												<td>Usajili wa line kwa alama ya vidole</td>
						                        <td>08:00 - 08:05</td>						
												<td>                       							                      
													<a class="btn btn-info" title="EDIT" data-toggle="modal" data-target="#editUserModal">
                         							  <i class="fa fa-edit"></i>
                        							</a>
												</td>
											</tr>	

											<tr>										
												<td>ITV</td>
												<td>23/12/2019</td>
												<td>International</td>
												<td>Mkutano wa SADC</td>
						                        <td>08:05 - 08:10</td>
												<td>                       						                         
													<a class="btn btn-info" title="EDIT" data-toggle="modal" data-target="#editUserModal">
                         							  <i class="fa fa-edit"></i>
                        							</a>
												</td>
											</tr>		
											
											<tr>										
												<td>ITV</td>
												<td>23/12/2019</td>
												<td>Business</td>
												<td>Soko la hisa nchini</td>
						                        <td>08:20 - 08:25</td>
												<td>                       						                         
													<a class="btn btn-info" title="EDIT" data-toggle="modal" data-target="#editUserModal">
                         							  <i class="fa fa-edit"></i>
                        							</a>
												</td>
											</tr>	
											
											<tr>										
												<td>ITV</td>
												<td>23/12/2019</td>
												<td>Sports</td>
												<td>Yanga yaibamiza Simba</td>
						                        <td>08:40 - 08:45</td>
												<td>                       						                         
													<a class="btn btn-info" title="EDIT" data-toggle="modal" data-target="#editUserModal">
                         							  <i class="fa fa-edit"></i>
                        							</a>
												</td>
											</tr>											
											<!-- End of the Table Body -->
										   </tbody>
									    </table>                     
                 
                <!-- /.Table End-->
             
              </div>
			        <!-- /.modal-body -->			  
            </div>
            <!-- /.modal-content-->
          </div>
          <!-- /.modal-dialog-->
        </div>
        <!-- /.end-add-user-modal-->


<!-- End News Index Card Preview --> 
 



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
	
	// Searching for the DataTable
	$('#datatables').dataTable( {
		  "searching": true
		});

	
});
$(document).ready(function() {
   $("#search_player").hide();
   document.getElementById("contentType").value = ""; 
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