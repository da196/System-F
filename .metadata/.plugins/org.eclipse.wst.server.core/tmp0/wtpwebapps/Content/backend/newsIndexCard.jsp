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
	      url: "actions/components/search_content.jsp", //this is my servlet
	       data: {
	    	   file_date: file_date,
	    	   start_time:start_time,
	    	   end_time:end_time,
	    	   channel_id: channel_id,
	    	   contentType: contentType,
	    	   user_id: user_id,
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
	                        //document.getElementById("contentType").value = ""; 
	                    	//document.getElementById("inputDate").value= ""; 
	                    	//document.getElementById("startTime").value= ""; 
	                    	//document.getElementById("endTime").value= ""; 
	                    	//document.getElementById("channel").value= ""; 
	                    	//var program = document.getElementById("program").value;
	                    	
	                    	document.getElementById("programTime").value= ""; 
	                    	document.getElementById("language").value= ""; 
	                    	document.getElementById("typeNews").value= ""; 
	                    	document.getElementById("durationProgramme").value= ""; 
	                    	document.getElementById("programmeName").value= ""; 
	                    	document.getElementById("accuracy").value= ""; 
	                    	document.getElementById("impartail").value= ""; 
	                    	document.getElementById("fair").value= ""; 
	                    	document.getElementById("balanced").value= ""; 
	                    	document.getElementById("factsDistortion").value= ""; 
	                    	document.getElementById("pictureGoodTaste").value= ""; 
	                    	document.getElementById("dicloseVictimChildren").value= ""; 
	                    	document.getElementById("properPronunciations").value= ""; 
	                    	document.getElementById("numberNewsItems").value= ""; 
	                        document.getElementById("firstHeadline").value= ""; 
	                    	document.getElementById("signLanguage").value= ""; 
	                    	document.getElementById("newsRegulationBreached").value= ""; 
	                    	document.getElementById("sponsorshipLocalNews").value= ""; 
	                    	document.getElementById("noofAdvertsAired").value= ""; 
	                    	document.getElementById("sponsorshipLogo").value= ""; 
	                    	document.getElementById("advertAccuracy").value= ""; 
	                    	document.getElementById("advertFactsPresentation").value= ""; 
	                    	document.getElementById("separationProgramme").value= ""; 
	                    	document.getElementById("sponsorRegulationBreached").value= ""; 
	                    	document.getElementById("newsItemDescription").value= ""; 
	                    	document.getElementById("newsItemStartTime").value= ""; 
	                    	document.getElementById("newsItemEndTime").value= ""; 
	                  }else {
	                        alert("News Content Number with the same news type already analyzed");          
	                  }
	                },
	                error : function(msg) {
	                	document.getElementById("overlay").style.display = "none";
	                	 alert("Error!.. Data Analyzed Couldn't Save");
	                }
	          
	     });
	}
	
}

function editNewsIndexCard(){
	
	var contentType = document.getElementById("contentType").value;
	var file_date = document.getElementById("inputDate").value; 
	var start_time = document.getElementById("startTime").value; 
	var end_time = document.getElementById("endTime").value; 
	var channel_id = document.getElementById("channel").value; 
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
	      url: "actions/components/search_content.jsp", //this is my servlet
	       data: {
	    	   file_date: file_date,
	    	   start_time:start_time,
	    	   end_time:end_time,
	    	   channel_id: channel_id,
	    	   contentType: contentType,
	    	   user_id: user_id
	           }, 
	          success: function(msg){  
		          document.getElementById("overlay").style.display = "none";

	        	 
	          }
	     });
	}
	
}

function previewNewsIndexCard() {
	$('#previewNewsIndexModal').modal({show:false});
	
	var contentType = document.getElementById("contentType").value;
	var file_date = document.getElementById("inputDate").value; 
	var start_time = document.getElementById("startTime").value; 
	var end_time = document.getElementById("endTime").value; 
	var channel_id = document.getElementById("channel").value; 
	var user_id = 1;
	var identifier = document.getElementById("preview").value; 
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
	//document.getElementById("overlay").style.display = "block";
	$.ajax({
	    type: "GET",
	      url: "actions/components/editNewsIndexCard.jsp", //this is my servlet
	      dataType: "json",
	       data: {
	    	   file_date: file_date,
	    	   start_time: start_time,
	    	   end_time: end_time,
	    	   channel_id: channel_id,
	    	   user_id: user_id,
	    	   identifier: identifier
	           }, 
	          success: function(newsIndexCardList){  
	        	  $('#previewNewsIndexModal').modal({show:true});
	          var s = '';
	          s += '<div class="fresh-datatables">';
	          s += '<table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">';
	          s += '<thead>';
	          s += '<tr>';
	          s += '<th>Channel Name</th>';
	          s += '<th>Date</th>';
	          s += '<th>News Type</th>';
	          s += '<th>News Item Description</th>';
	          s += '<th>Duration Of News Item</th>';
	          s += '<th>Action</th>';
	          s += '</tr>';
	          s += '</thead>';
	          s += '<tfoot>';
	          s += '<tr>';
	          s += '<th>Channel Name</th>';
	          s += '<th>Date</th>';
	          s += '<th>News Type</th>';
	          s += '<th>News Item Description</th>';
	          s += '<th>Duration Of News Item</th>';
	          s += '<th>Action</th>';
	          s += '</tr>';
	          s += '</tfoot>';
	          s += '<tbody >';
	          $.each(newsIndexCardList.data, function(index,newsIndexCardList) {        
	             // alert(newsIndexCardList.channel_name+" -- "+newsIndexCardList.news_type+" -- "+ newsIndexCardList.news_item_description+" -- "+newsIndexCardList.news_item_duration+" -- "+newsIndexCardList.cdate)
	                s += '<tr>';
				    s += '<td>' + newsIndexCardList.channel_name + '</td>';
				    s += '<td>' + newsIndexCardList.cdate + '</td>';
					s += '<td>' + newsIndexCardList.news_type + '</td>';
					s += '<td>' + newsIndexCardList.news_item_description + '</td>';
					s += '<td>' + newsIndexCardList.news_item_duration + '</td>';
					s += '<td> <a href="#addEmployeeModal" id="' + newsIndexCardList.id + '" onClick="getApplicationInfo(' + newsIndexCardList.id + ');" class="edit" data-toggle="modal"> <i class="fa fa-eye"></i> </a> </td>';
					s += '</tr>';
	          });	
	      	
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

function completeNewsIndexCard(){
	
	var contentType = document.getElementById("contentType").value;
	var file_date = document.getElementById("inputDate").value; 
	var start_time = document.getElementById("startTime").value; 
	var end_time = document.getElementById("endTime").value; 
	var channel_id = document.getElementById("channel").value; 
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
	      url: "actions/components/completeAnalysis.jsp", //this is my servlet
	       data: {
	    	   file_date: file_date,
	    	   start_time:start_time,
	    	   end_time:end_time,
	    	   channel_id: channel_id,
	    	   contentType: contentType,
	    	   user_id: user_id
	           }, 
	          success: function(msg){  
		      document.getElementById("overlay").style.display = "none";
		      var response = JSON.parse(msg);
              var status = response.status;
              if (status == 1) {
                  alert("News Index Card Successfully Completed");     	  
                  document.getElementById("contentType").value = ""; 
              	  document.getElementById("inputDate").value= ""; 
              	  document.getElementById("startTime").value= ""; 
              	  document.getElementById("endTime").value= ""; 
              	  document.getElementById("channel").value= ""; 
              }else{
            	  alert("No!!! News Index Card to Complete");     	  
              }
	        	 
	          }
	     });
	}
	
}


</script>
<div id="overlay"></div>
<input type="hidden" id="preview" value="1" />
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
              <!-- Start Index Card Analysis Form -->
                
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
					                          <option value="Swahili">Kiswahili</option>
					                         
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
			      			       <div class="form-group col-sm-8">
			      			       <label for="newsItemDescription"><strong>News Items Description</strong></label>
			      			       <input class="form-control" id="newsItemDescription" type="text" name="newsItemDescription" placeholder = "Write News Items Description here..."> 		      			        
			      			       </div>
                          </div>
                         <div class="form-group row">
                          			<div class="form-group col-sm-6">
			      			       		<label for="newsItemStartTime"><strong>News Items Start Time</strong></label>
			      			  				<input class="form-control" id="newsItemStartTime" type="time" name="newsItemStartTime"> 
			      			       </div> 
			      			       <div class="form-group col-sm-6">
			      			       <label for="newsItemEndTime"><strong>News Items End Time</strong></label>
			      			      <input class="form-control" id="newsItemEndTime" type="time" name="newsItemEndTime"> 
			      			       </div>
                          </div>
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
                            
                                   <div class="form-group col-sm-6">
				      			       <label for="dicloseVictimChildren"><strong>Dis Victim Children</strong></label>
			      			  				 <select class="form-control" id="dicloseVictimChildren">
				      			  				 <option value="">-- Select -- </option>
						                         <option value="Yes">Yes</option>
						                          <option value="No">No</option>
						                          <option value="N/A">N/A</option>			                         
					                        </select>
			      			       </div>
				      			  			      			        
			      			        <div class="form-group col-sm-6">
				      			        <label for="properPronunciations"><strong>Proper Pronunciations</strong></label>
			      			  				<select class="form-control" id="properPronunciations">
					                           <option value="">-- Select -- </option>
					                          <option value="Yes">Yes</option>
					                          <option value="No">No</option>
					                          <option value="N/A">N/A</option>
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

                        <button style='margin-left:10px;' class="btn btn-success pull-right" type="button" onClick="completeNewsIndexCard();"><i class="fa fa-check"></i>&nbsp;<b>Complete Analysis</b></button>
                        <button style='margin-left:10px;' class="btn btn-primary pull-right"  onClick="saveNewsIndexCard();" type="button"><i class="fa fa-save"></i>&nbsp;<b>Save</b></button> 
                         <button  class="btn btn-info pull-right"  type="button" onClick="previewNewsIndexCard();">
                       		<i class="fa fa-eye"></i>&nbsp;<b>Preview</b>                     
                     	 </button> 

                    </div>
                  </div>
                </div>
              
              
              </div>
          
            <!-- End Index Card Analysis Form -->
              <!-- /.col-->
            </div>
            <!-- /.row-->
            
        </div>
        </div>    

      </main>
<!-- Start AsideMenu View -->

<!-- End AsideMenu View --> 
 </div>
 
 
 
<!-- Start News Index Card Preview Modal-->
      
        <div class="modal fade" id="previewNewsIndexModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-primary modal-lg" role="document">
            <div class="modal-content" style="width:1200px; margin-left:-150px;">
            
              <div class="modal-header">
              
                <h4 class="modal-title">News Index Card - History </h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">X</span>
                </button>
              </div>
			        <!-- /.modal-header-->
              <div class="modal-body">
              
                <!-- /.Table Start -->
           <div  id="result"></div>	
                   
                 
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