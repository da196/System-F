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
function saveElectionIndexCard(){

	var contentType = document.getElementById("contentType").value;
	var file_date = document.getElementById("inputDate").value; 
	var start_time = document.getElementById("startTime").value; 
	var end_time = document.getElementById("endTime").value; 
	var channel_id = document.getElementById("channel").value; 
	var programTime = document.getElementById("programTime").value; 	
	var language = document.getElementById("language").value;
	var typeNews = document.getElementById("typeProgramme").value;
	var durationProgramme = document.getElementById("durationProgramme").value;
	var programmeName = document.getElementById("programmeName").value;
	var accuracy = document.getElementById("accuracy").value;	
	var impartial = document.getElementById("impartial").value;
	var fair = document.getElementById("fair").value;
	var balanced = document.getElementById("balanced").value;
	var factsDistortion = document.getElementById("factsDistortion").value;
	var numberNewsItems = document.getElementById("numberNewsItems").value;
	var timeNewsItem = document.getElementById("timeNewsItem").value;
	var politicalParty = document.getElementById("politicalParty").value;
	var opinionPull = document.getElementById("opinionPull").value;
	var defamation = document.getElementById("defamation").value;
	var newsItemDescription = document.getElementById("newsItemDescription").value;
	var newsItemStartTime = document.getElementById("newsItemStartTime").value;
	var newsItemEndTime = document.getElementById("newsItemEndTime").value;
	var hostname = document.getElementById("hostname").value;
	var interviewName = document.getElementById("interviewName").value;
	var newsRegulationBreached = document.getElementById("newsRegulationBreached").value;
	var presenter_wearing_symbols = document.getElementById("presenter_wearing_symbols").value;
	var public_involvement = document.getElementById("public_involvement").value;
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
	
	else{
	document.getElementById("overlay").style.display = "block";
	 $.ajax({
	     type: "post",
	      url: "actions/components/newsElectionIndexCard.jsp", //this is my servlet
	       data: {
	    	   file_date: file_date,
	    	   start_time:start_time,
	    	   end_time:end_time,
	    	   channel_id: channel_id,
	    	   programTime: programTime,
	    	   language: language,
	    	   typeNews: typeNews,
	    	   durationProgramme: durationProgramme,
	    	   programmeName: programmeName,
	    	   accuracy: accuracy,
	    	   impartial: impartial,
	    	   fair: fair,
	    	   balanced: balanced,
	    	   factsDistortion: factsDistortion,
	    	   numberNewsItems: numberNewsItems,
	    	   timeNewsItem: timeNewsItem,
	    	   politicalParty: politicalParty,
	    	   opinionPull: opinionPull,
	    	   defamation: defamation,
	    	   newsItemDescription: newsItemDescription,
	    	   newsItemStartTime: newsItemStartTime,
	    	   newsItemEndTime: newsItemEndTime,
	    	   hostname: hostname,
	    	   interviewName: interviewName,
	    	   newsRegulationBreached: newsRegulationBreached,
	    	   presenter_wearing_symbols: presenter_wearing_symbols,
	    	   public_involvement:public_involvement,
	    	   user_id: user_id
	           }, 
	          success: function(msg){  
		        	document.getElementById("overlay").style.display = "none";
		        	  var response = JSON.parse(msg);
	                  var status = response.status;
	                  if (status == 1) {
	                        alert("Election Index Card Successfully Added");     
	                        
	                        document.getElementById("contentType").value="";
	                    	document.getElementById("inputDate").value="";
	                    	document.getElementById("startTime").value="";
	                    	document.getElementById("endTime").value="";
	                    	document.getElementById("channel").value="";
	                    	document.getElementById("programTime").value=""; 	
	                    	document.getElementById("language").value="";
	                    	document.getElementById("typeProgramme").value="";
	                    	document.getElementById("durationProgramme").value="";
	                    	document.getElementById("programmeName").value="";
	                        document.getElementById("accuracy").value="";
	                    	document.getElementById("impartial").value="";
	                        document.getElementById("fair").value="";
	                    	document.getElementById("balanced").value="";
	                    	document.getElementById("factsDistortion").value="";
	                    	document.getElementById("numberNewsItems").value="";
	                    	document.getElementById("timeNewsItem").value="";
	                    	document.getElementById("politicalParty").value="";
	                    	document.getElementById("opinionPull").value="";
	                    	document.getElementById("defamation").value="";
	                    	document.getElementById("newsItemDescription").value="";
	                    	document.getElementById("newsItemStartTime").value="";
	                    	document.getElementById("newsItemEndTime").value="";
	                    	document.getElementById("hostname").value="";
	                    	document.getElementById("interviewName").value="";
	                    	document.getElementById("newsRegulationBreached").value="";
	                    	document.getElementById("presenter_wearing_symbols").value="";
	                    	document.getElementById("public_involvement").value="";
	                  }else {
	                        alert("Same Election Content already analyzed");          
	                  }
	                },
	                error : function(msg) {
	                	 alert("Error!.. Election Idex Card Couldn't Analyzed");
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
            <a href="electionIndexCard.jsp">Election Index Card</a>
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
                   <strong>Election Index Card - Analysis</strong>                 
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
			      			            <label for="programTime"><strong>Time</strong></label>
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
				      			        <label for="typeProgramme"><strong>Type of Programme</strong></label>
			      			  				<select class="form-control" id="typeProgramme" name="typeProgramme">			      			  			
					                  		  <option value="">-- Select -- </option>
					                          <%
						 	 			
										try{
													                    
										java.util.List<NewsCategory> list = NewsCategory.getElectionCategoryList();
													
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
			      			  				<select class="form-control" id="durationProgramme" name="durationProgramme">
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
                            <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Standards</a>
                          </h5>
                        </div>
                        <div class="collapse" id="collapseTwo" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                           <div class="card-body">
                                           
                          <div class="form-group row">
				      			    <div class="form-group col-sm-4">
				      			        <label for="accuracy"><strong>Accuracy</strong></label>
			      			  				<select class="form-control" id="accuracy" name="accuracy">
					                           <option value="">-- Select -- </option>
					                          <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			        </div>
			      			        
			      			        <div class="form-group col-sm-4">
				      			        <label for="impartial"><strong>Impartial</strong></label>
			      			  				<select class="form-control" id="impartial" name="impartial">
					                           <option value="">-- Select -- </option>
					                             <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
			      			      	      			       
			      			       <div class="form-group col-sm-4">
				      			        <label for="fair"><strong>Fair </strong></label>
			      			  				<select class="form-control" id="fair" name="fair">
					                           <option value="">-- Select -- </option>
					                             <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
			      			       
			      			      
                           </div>
                           
                            <div class="form-group row">
                            
                                   <div class="form-group col-sm-4">
				      			       <label for="balanced"><strong>Balanced</strong></label>
			      			  				<select class="form-control" id="balanced" name="balanced">
			      			  				 <option value="">-- Select -- </option>
					                         <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                         
					                        </select>
			      			       </div>
				      			  			      			        
			      			        <div class="form-group col-sm-4">
				      			        <label for="factsDistortion"><strong>Facts Distortion </strong></label>
			      			  				<select class="form-control" id="factsDistortion" name="factsDistortion">
					                           <option value="">-- Select -- </option>
									          <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
			      			      	      			       
			      			       <div class="form-group col-sm-4">
			      			       		<label for="defamation"><strong>Defamation</strong></label>
			      			  				<select class="form-control" id="defamation"  name="defamation">
					                           <option value="">-- Select -- </option>
					                          <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
			      			       			      			        
                           </div>
                           
                            <div class="form-group row">
                            
                                    <div class="form-group col-sm-4">
			      			       		<label for="numberNewsItems"><strong>Number <br> News Items</strong></label>
			      			  				<select class="form-control" id="numberNewsItems"  name="numberNewsItems">
					                           <option value="">-- Select -- </option>
					                          <option value="1">1</option>
					                          <option value="2">2</option>
					                          <option value="3">3</option>
					                          <option value="4">4</option>
					                          <option value="5">5</option>
					                          <option value="6">6</option>
					                          <option value="7">7</option>
					                          <option value="8">8</option>
					                          <option value="9">9</option>
					                          <option value="10">10</option>
					                          <option value="11">11</option>
					                          <option value="12">12</option>
					                          <option value="13">13</option>
					                          <option value="14">14</option>
					                          <option value="15">15</option>

					                        </select>
			      			       </div>
				      			  			      			        
			      			        <div class="form-group col-sm-4">
				      			        <label for="timeNewsItem"><strong>Time of the<br> News item </strong></label>
			      			  				<select class="form-control" id="timeNewsItem" name="timeNewsItem">
					                           <option value="">-- Select -- </option>
					                             <%
						 	 			
										try{
													                    
										java.util.List<Lookup> list = Lookup.GetContentPeriodList();
													
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
			      			       		<label for="politicalParty"><strong>Political <br> Party</strong></label>
			      			  				<select class="form-control" id="politicalParty" name="politicalParty">
					                            <option value="">-- Select -- </option>
						                        	                             <%
						 	 			
										try{
													                    
										java.util.List<Lookup> list = Lookup.GetPoliticalPartyList();
													
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
                           </div>
                           
                           <div class="form-group row">
                            
                                   <div class="form-group col-sm-4">
				      			       <label for="presenter_wearing_symbols"><strong>Presenter Wearing Symbols, Color or Logo of the Parties </strong></label>
			      			  				<select class="form-control" id="presenter_wearing_symbols" name="presenter_wearing_symbols">
			      			  				 <option value="">-- Select -- </option>
					                         <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                         
					                        </select>
			      			       </div>
				      			  			      			        
			      			        <div class="form-group col-sm-4">
				      			        <label for="opinionPull"><strong>Opinion Pull </strong></label>
			      			  				<select class="form-control" id="opinionPull" name="opinionPull">
					                           <option value="">-- Select -- </option>
									          <option value="Yes">After 30 days to elections</option>
					                          <option value="No">Below 30 days to elections</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
			      			      	      			       
			      			       <div class="form-group col-sm-4">
			      			       		<label for="public_involvement"><strong>Public Involvement In Political Debate</strong></label>
			      			  				<select class="form-control" id="public_involvement" name="public_involvement">
					                           <option value="">-- Select -- </option>
					                          <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
			      			       			      			        
                           </div>                         
                           <div class="form-group row">
                                 <div class="form-group col-sm-12">
                                 <label for="newsItemDescription"><strong>Item Description</strong></label>
				      			      <input class="form-control" id="newsItemDescription" type="text" name="newsItemDescription" placeholder = "Write Description here..."> 		      			        
			      			     </div>
                           </div>
				      	  <div class="form-group row">
                          			<div class="form-group col-sm-6">
			      			       		<label for="newsItemStartTime"><strong>Items Start Time</strong></label>
			      			  				<input class="form-control" id="newsItemStartTime" type="time" name="newsItemStartTime" step="2"> 
			      			       </div> 
			      			       <div class="form-group col-sm-6">
			      			       <label for="newsItemEndTime"><strong>Items End Time</strong></label>
			      			      <input class="form-control" id="newsItemEndTime" type="time" name="newsItemEndTime" step="2"> 
			      			       </div>
                          </div>
                            <div class="form-group row">
                          			<div class="form-group col-sm-6">
			      			       		<label for="hostname"><strong>Host Name</strong></label>
			      			  				 <input class="form-control" id="hostname" type="text" name="hostname"> 		      			        
			      			       </div> 
			      			       <div class="form-group col-sm-6">
			      			       <label for="interviewName"><strong>Inteviewee Name</strong></label>
			      			      <input class="form-control" id="interviewName" type="text" name="interviewName"> 
			      			       </div>
                          </div>			      			        			      			         			      	      			       		      			     			      			                          
                           
                            <div class="form-group row">
                                 <div class="form-group col-sm-12">
				      			        <label for="newsRegulationBreached"><strong>General Observation / Regulation Breached - (Election Content)</strong></label>
                        			<div class="col-sm-12">
                          				<textarea class="form-control" id="newsRegulationBreached" name="newsRegulationBreached" rows="5" placeholder="Write your observation here ..."></textarea>
                        			</div>
                                 </div>        
                           </div>

                          </div>
                        </div>
                      </div>
                                                                 
                        <br/>

                       
                        <button style='margin-left:10px;' class="btn btn-primary pull-right"  onClick="saveElectionIndexCard();" type="button"><i class="fa fa-save"></i>&nbsp;<b>Save Analysis</b></button> 
                        <button style='margin-left:10px;' class="btn btn-success pull-right" type="button"><i class="fa fa-check"></i>&nbsp;<b>Complete</b></button>
                         <button class="btn btn-info pull-right"  type="button"  data-toggle="modal" data-target="#previewElectionIndexModal">
                       		<i class="fa fa-eye"></i>&nbsp;<b>Preview</b>                     
                     	 </button> 
 						
                     
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
<!-- Start AsideMenu View -->

	
<!-- End AsideMenu View --> 
 </div>
 
 
 
<!-- Start Local Index Card Preview Modal-->
      
        <div class="modal fade" id="previewElectionIndexModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-primary modal-lg" role="document">
            <div class="modal-content" style="width:1200px; margin-left:-150px;">
              <div class="modal-header">
                <h4 class="modal-title">Election Index Card - History </h4>
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