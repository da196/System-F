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
function saveNewsIndexCard(){
	
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
	var accuracy = document.getElementById("accuracy").value;
	var impartail = document.getElementById("impartail").value;
	var fair = document.getElementById("fair").value;
	var Balanced = document.getElementById("balanced").value;
	var factsDistortion = document.getElementById("factsDistortion").value;
	var pictureGoodTaste = document.getElementById("pictureGoodTaste").value;
	var dicloseVictimChildren = document.getElementById("dicloseVictimChildren").value;
	var properPronunciations = document.getElementById("properPronunciations").value;
	var numberNewsItems = document.getElementById("numberNewsItems").value;
	var firstHeadline = document.getElementById("firstHeadline").value;
	var signLanguage = document.getElementById("signLanguage").value;
	var newsRegulationBreached = document.getElementById("newsRegulationBreached").value;
	var sponsorshipLocalNews = document.getElementById("sponsorshipLocalNews").value;
	var noofAdvertsAired = document.getElementById("noofAdvertsAired").value;
	var sponsorshipLogo = document.getElementById("sponsorshipLogo").value;
	var advertAccuracy = document.getElementById("advertAccuracy").value;
	var advertFactsPresentation = document.getElementById("advertFactsPresentation").value;
	var separationProgramme = document.getElementById("separationProgramme").value;
	var sponsorRegulationBreached = document.getElementById("sponsorRegulationBreached").value;
	var user_id = 1;
	alert(programTime);
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
	      url: "actions/components/newsIndexCardAction.jsp", //this is my servlet
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
	    	   accuracy: accuracy,
	    	   impartail: impartail,
	    	   fair: fair,
	    	   Balanced: Balanced,
	    	   factsDistortion: factsDistortion,
	    	   pictureGoodTaste: pictureGoodTaste,
	    	   dicloseVictimChildren: dicloseVictimChildren,
	    	   properPronunciations: properPronunciations,
	    	   numberNewsItems: numberNewsItems,
	    	   firstHeadline: firstHeadline,
	    	   signLanguage: signLanguage,
	    	   newsRegulationBreached: newsRegulationBreached,
	    	   sponsorshipLocalNews: sponsorshipLocalNews,
	    	   noofAdvertsAired: noofAdvertsAired,
	    	   sponsorshipLogo: sponsorshipLogo,
	    	   advertAccuracy: advertAccuracy,
	    	   advertFactsPresentation: advertFactsPresentation,
	    	   separationProgramme: separationProgramme,
	    	   sponsorRegulationBreached: sponsorRegulationBreached,
	    	   user_id: user_id
	           }, 
	          success: function(msg){  
		        	document.getElementById("overlay").style.display = "none";
		        	  var response = JSON.parse(msg);
	                  var status = response.status;
	                  if (status == 1) {
	                        alert("News Index Card Successfully Added");     	                                   		    
	                  }else {
	                        alert("News Content Number with the same news type already analyzed");          
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
            <a href=newsIndexCard.jsp">News Index Card</a>
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
					  <div id="search_player">
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
                   <strong>News Index Card - Analysis</strong>                 
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
				      			        <label for="typeNews"><strong>Type of News</strong></label>
			      			  				<select class="form-control" id="typeNews">
					                     <option value="">-- Select -- </option>
						 	 			<%
						 	 			
										try{
													                    
										java.util.List<NewsCategory> list = NewsCategory.getNewsCategoryList();
													
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
                            <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">News Standard</a>
                          </h5>
                        </div>
                        <div class="collapse" id="collapseTwo" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                           <div class="card-body">
                                           
                          <div class="form-group row">
				      			    <div class="form-group col-sm-4">
				      			        <label for="accuracy"><strong>Accuracy</strong></label>
			      			  				<select class="form-control" id="accuracy">
					                           <option value="">-- Select -- </option>
					                          <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			        </div>
			      			        
			      			        <div class="form-group col-sm-4">
				      			        <label for="impartial"><strong>Impartial </strong></label>
			      			  				<select class="form-control" id="impartail">
					                           <option value="">-- Select -- </option>
					                             <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
			      			      	      			       
			      			       <div class="form-group col-sm-4">
				      			        <label for="fair"><strong>Fair </strong></label>
			      			  				<select class="form-control" id="fair">
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
			      			  				<select class="form-control" id="balanced">
			      			  				 <option value="">-- Select -- </option>
					                         <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                         
					                        </select>
			      			       </div>
				      			  			      			        
			      			        <div class="form-group col-sm-4">
				      			        <label for="factsDistortion"><strong>Facts Distortion</strong></label>
			      			  				<select class="form-control" id="factsDistortion">
					                           <option value="">-- Select -- </option>
									         <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
			      			      	      			       
			      			       <div class="form-group col-sm-4">
			      			       		<label for="pictureGoodTaste"><strong>Picture(Good Taste)</strong></label>
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
				      			       <label for="dicloseVictimChildren"><strong>Dis Victim Children</strong></label>
			      			  				 <select class="form-control" id="dicloseVictimChildren">
				      			  				 <option value="">-- Select -- </option>
						                         <option value="Yes">Yes</option>
						                          <option value="No">No</option>
						                          <option value="N/A">N/A</option>			                         
					                        </select>
			      			       </div>
				      			  			      			        
			      			        <div class="form-group col-sm-4">
				      			        <label for="properPronunciations"><strong>Proper Pronunciations</strong></label>
			      			  				<select class="form-control" id="properPronunciations">
					                           <option value="">-- Select -- </option>
					                          <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
			      			      	      			       
			      			       <div class="form-group col-sm-4">
			      			       		<label for="numberNewsItems"><strong>Number News Items</strong></label>
			      			  				<select class="form-control" id="numberNewsItems">
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
                           </div>
                           
                           
                           <div class="form-group row">
                            
                                   <div class="form-group col-sm-6">
				      			       <label for="firstHeadline"><strong>First News Headline</strong></label>
			      			  				<select class="form-control" id="firstHeadline">
			      			  				 <option value="">-- Select -- </option>
					                         <option value="Political">Political</option>
					                          <option value="Social">Social</option>
					                          <option value="Economic">Economic</option>
					                          <option value="Technology">Technology</option>
					                          <option value="Technology">Technology</option>
					                          <option value="Development">Development</option>
					                        </select>
			      			       </div>
				      			  			      			        
			      			        <div class="form-group col-sm-6">
				      			        <label for="signLanguage"><strong>Sign Language Interpreter</strong></label>
			      			  				<select class="form-control" id="signLanguage">
					                          <option value="">-- Select -- </option>
					                          <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>     			      	      			       
			      			     			      			        
                           </div>
                           
                           
                            <div class="form-group row">
                                 <div class="form-group col-sm-12">
				      			        <label for="newsRegulationBreached"><strong>General Observation / Regulation Breached - (News Standard)</strong></label>
                        			<div class="col-sm-12">
                          				<textarea class="form-control" id="newsRegulationBreached" name="newsRegulationBreached" rows="5" placeholder="Write your observation here ..."></textarea>
                        			</div>
                                 </div>        
                           </div>

                          </div>
                        </div>
                      </div>
                      <br/>
                      <div class="card mb-0">
                        <div class="card-header" id="headingThree" role="tab">
                          <h5 class="mb-0">
                            <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Sponsorship</a>
                          </h5>
                        </div>
                        <div class="collapse" id="collapseThree" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                          <div class="card-body">
                          	<div class="form-group row">
				      			    <div class="form-group col-sm-4">
				      			        <label for="sponsorshipLocalNews"><strong>Sponsorship on Local News</strong></label>
			      			  				<select class="form-control" id="sponsorshipLocalNews">
					                          <option value="">-- Select --  </option>
					                          <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			        </div>
			      			        
			      			        <div class="form-group col-sm-4">
				      			        <label for="noofAdvertsAired"><strong>Number of Adverts Aired </strong></label>
			      			  				<select class="form-control" id="noofAdvertsAired">
					                          <option value="">-- Select -- </option>
					                             <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
			      			      	      			       
			      			       <div class="form-group col-sm-4">
				      			        <label for="sponsorshipLogo"><strong>Sponsorship Logo Proper Placed </strong></label>
			      			  				<select class="form-control" id="sponsorshipLogo">
					                          <option value="">-- Select  -- </option>
					                             <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
    
                           </div>
                           
                           
                           <div class="form-group row">
				      			    <div class="form-group col-sm-4">
				      			        <label for="advertAccuracy"><strong>Advert of the<br/> Accuracy</strong></label>
			      			  				<select class="form-control" id="advertAccuracy">
					                          <option value="">-- Select --  </option>
					                          <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			        </div>
			      			        
			      			        <div class="form-group col-sm-4">
				      			        <label for="advertFactsPresentation"><strong>Advert Facts Presentation</strong></label>
			      			  				<select class="form-control" id="advertFactsPresentation">
					                          <option value="">-- Select --  </option>
					                          <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>
			      			      	      			       
			      			       <div class="form-group col-sm-4">
				      			        <label for="separationProgramme"><strong>Clear Separation from the Programme </strong></label>
			      			  				<select class="form-control" id="separationProgramme">
					                          <option value="">-- Select  -- </option>
					                             <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
					                        </select>
			      			       </div>

                           </div>
                           
                           
                           
                            <div class="form-group row">
                                 <div class="form-group col-sm-12">
				      			        <label for="sponsorRegulationBreached"><strong>General Observation / Regulation Breached - (Sponsorship)</strong></label>
                        			<div class="col-sm-12">
                          				<textarea class="form-control" id="sponsorRegulationBreached" name="sponsorRegulationBreached" rows="5" placeholder="Write your observation here ..."></textarea>
                        			</div>
                                 </div>        
                           </div>
                           
                          
                          </div>
                        </div>
                      </div>
                      
                        <br/>
                        <button class="btn btn-primary pull-right" type="button" onClick="saveNewsIndexCard();" ><b>Submit</b></button>
                     
                  
                  
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
	<aside class="aside-menu">    
        <!-- Tab panes-->
        <div class="tab-content">
          <div class="tab-pane active" id="timeline" role="tabpanel">
            <div class="list-group list-group-accent">
              <div class="list-group-item list-group-item-accent-secondary bg-light text-center font-weight-bold text-muted text-uppercase small">MONDAY</div>            
            
              
              <!--  Loop Start here  -->
              <div class="list-group-item list-group-item-accent-info list-group-item-divider">
                <div><i class="icon-clock"></i> 06:00 - 07:00 
                <br>
                <small><strong>Power Breakfast</strong></small>
                </div>            
              </div>
              <!--  Loop End here  -->
              
                          
        
          </div>
          </div>
        </div>
      </aside>
<!-- End AsideMenu View --> 
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
      
});

</script>
