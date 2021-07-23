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

      <main class="main">
        <!-- Breadcrumb-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            Report
          </li>
          <li class="breadcrumb-item active">
            <a href="users.jsp">Report 1</a>
          </li>
        </ol>

        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
			  
		<!-- Start News Index Card -->
              <div class="card">
                <div class="card-header">
                  <i class="fa fa-align-justify"></i> News Index Card Analysis
                </div>
                <div class="card-body pt-3">
			                   
			 
			<!-- <div class="form-row"> -->
			 
			<div class="d-flex justify-content-center bg-light pt-2">
			
			<div class="form-group mr-3">
			<label for="contentType"><strong>Content type </strong></label>
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
			 
			<div class="form-group mr-3 col-2">
			
			 <div id="channel_id">
				<label for="channel"><strong>Channel Name</strong></label>
				<select class="form-control" name="channel" id="channel" >
				<option value="">-- Channel Name -- </option>
			   
				</select>			      			  
			</div>
			
			</div>
			 
			<div class="form-group mr-3">
			<label for="analyzedOn"><strong>Analyzed on: </strong></label>
			<input type="date" id="analyzed_date" name="analyzed_date" class="form-control">
			</div>
			 
			<div class="form-group mr-4">
			<label for="language"><strong>Language</strong> </label>
			<select id="language" name="language" class="form-control">
			<option selected>-- Select --</option>
			<option>English</option>
			<option>Swahili</option>
			</select>
			</div>
			 
			<div class="form-group mt-4">
			<button class="btn btn-secondary mt-1" type="submit" onClick="getNewsAnalized();">Search</button>
			</div>
			</div>
			 
			<!-- </div> -->
			 
			                  </div>
			                </div>
			 
			<!-- End News Index Card -->
				
				
				
				<!-- Start Local News Analysis -->
				
				<div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> Local News Analysis
                  </div>
                  <div class="card-body col-12">
                   
				   <div class="row">
					   <div class="card col-lg-4 col-md-6 col-sm-12 col-xs-12">
						  
						  <div>
							<div class="demo-container">
							  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 image-container">
							   
								  <div id="container1">
								 
								  </div>
							  </div>
							</div>
						  </div>
						</div>
						
						<div class="card col-lg-4 col-md-6 col-sm-12 col-xs-12">
						  
						  <div>
							<div class="demo-container">
							  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 image-container">
							    <div id="overlay"></div>
								  <div id="container2" ></div>
							  </div>
							</div>
						  </div>
						</div>
						
						<div class="card col-lg-4 col-md-6 col-sm-12 col-xs-12">
						  
						  <div>
							<div class="demo-container">
							  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 image-container">
							   
								  <div id="container3" ></div>
							  </div>
							</div>
						  </div>
						</div>
						
						
					</div>
					
                  </div>
                </div>
				
				<!-- End Local News Analysis -->
				
				<!-- Start International News Analysis -->
				
				<div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> International News Analysis
                  </div>
                  <div class="card-body col-12">
                   
				   <div class="row">
					   <div class="card col-lg-4 col-md-6 col-sm-12 col-xs-12">
						  
						  <div>
							<div class="demo-container">
							  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 image-container">
							   
								  <div id="container4"></div>
							  </div>
							</div>
						  </div>
						</div>
						
						<div class="card col-lg-4 col-md-6 col-sm-12 col-xs-12">
						  
						  <div>
							<div class="demo-container">
							  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 image-container">
							   
								  <div id="container5" ></div>
							  </div>
							</div>
						  </div>
						</div>
						
						<div class="card col-lg-4 col-md-6 col-sm-12 col-xs-12">
						  
						  <div>
							<div class="demo-container">
							  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 image-container">
							   
								  <div id="container6" ></div>
							  </div>
							</div>
						  </div>
						</div>
						
						
					</div>
					
                  </div>
                </div>
				
				<!-- End International News Analysis -->
				
				<!-- Start Business News Analysis -->
				
				<div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> Business News Analysis
                  </div>
                  <div class="card-body col-12">
                   
				   <div class="row">
					   <div class="card col-lg-4 col-md-6 col-sm-12 col-xs-12">
						  
						  <div>
							<div class="demo-container">
							  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 image-container">
							   
								  <div id="container7"></div>
							  </div>
							</div>
						  </div>
						</div>
						
						<div class="card col-lg-4 col-md-6 col-sm-12 col-xs-12">
						  
						  <div>
							<div class="demo-container">
							  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 image-container">
							   
								  <div id="container8" ></div>
							  </div>
							</div>
						  </div>
						</div>
						
						<div class="card col-lg-4 col-md-6 col-sm-12 col-xs-12">
						  
						  <div>
							<div class="demo-container">
							  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 image-container">
							   
								  <div id="container9" ></div>
							  </div>
							</div>
						  </div>
						</div>
						
						
					</div>
					
                  </div>
                </div>
				
				<!-- End Business News Analysis -->
				
				<!-- Start Sports News Analysis -->
				
				<div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> Sports News Analysis
                  </div>
                  <div class="card-body col-12">
                   
				   <div class="row">
					   <div class="card col-lg-4 col-md-6 col-sm-12 col-xs-12">
						  
						  <div>
							<div class="demo-container">
							  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 image-container">
							   
								  <div id="container10"></div>
							  </div>
							</div>
						  </div>
						</div>
						
						<div class="card col-lg-4 col-md-6 col-sm-12 col-xs-12">
						  
						  <div>
							<div class="demo-container">
							  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 image-container">
							   
								  <div id="container11" ></div>
							  </div>
							</div>
						  </div>
						</div>
						
						<div class="card col-lg-4 col-md-6 col-sm-12 col-xs-12">
						  
						  <div>
							<div class="demo-container">
							  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 image-container">
							   
								  <div id="container12" ></div>
							  </div>
							</div>
						  </div>
						</div>
						
						
					</div>
					
                  </div>
                </div>
				
				<!-- End Sports News Analysis -->
                
              </div>
            </div>
            
          </div>
        </div>

        
		
      </main>


    </div>
<!-- Start Top header View -->
<jsp:include page="includes/footer.jsp" />
<!-- End Top Header View -->


<script type="text/javascript">

// START GET CHANNEL NAME 
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
//END GET CHANNEL NAME 

function getNewsAnalized(){
	
	var channel_id = document.getElementById("channel").value;
	var analyzed_date = document.getElementById("analyzed_date").value; 
	var language = document.getElementById("language").value; 
	var news_category_id = 1;
/*
 * ****************************************************************
 		LOCAL NEWS BUSINESS INTELIGENT (GRAPH)
 ******************************************************************
 */
	//start - funnel-cylinder (LOCAL NEWS)

	  $.ajax({
		  
		     type: "post",
		      url: "actions/bi/bi_local_news.jsp", //this is my servlet
		      dataType: "json",
		       data: {
		    	   channel_id: channel_id,
		    	   analyzed_date: analyzed_date,
		    	   language: language,
		    	   news_category_id: news_category_id
		           }, 
		          success: function(msg){ 
		        		
		        	  var local_news_count = msg.local_news_count;
		        	 	  
			Highcharts.chart('container1', {
				chart: {
					type: 'funnel3d',
					options3d: {
						enabled: true,
						alpha: 10,
						depth: 50,
						viewDistance: 50
					}
				},
				title: {
					text: 'Number of news Items'
				},
				plotOptions: {
					series: {
						dataLabels: {
							enabled: true,
							format: '<b>{point.name}</b> ({point.y:,.0f})',
							allowOverlap: true,
							y: 10
						},
						neckWidth: '30%',
						neckHeight: '25%',
						width: '80%',
						height: '80%'
					}
				},
				series: [{
					name: 'News Item Count',
					data: [
						['News items', local_news_count],
					]
				}]
				});
			
			},
	              
		});
	  
	//end - funnel-cylinder (LOCAL NEWS)
	
	//start - bar-chart (LOCAL NEWS)
		  $.ajax({
		     type: "post",
		      url: "actions/bi/BINewsStandard.jsp", //this is my servlet
		      dataType: "json",
		       data: {
		    	   channel_id: channel_id,
		    	   analyzed_date: analyzed_date,
		    	   language: language,
		    	   news_category_id: news_category_id
		           }, 
		          success: function(msg){ 
		        	  document.getElementById("overlay").style.display = "block";
		        	  var Accuracy = msg.Accuracy;
		        	  var Impartial = msg.Impartial;
		        	  var Fair = msg.Fair;
		        	  var Balanced = msg.Balanced;
		        	  var FactsDistortion = msg.FactsDistortion;
		        	  var Picture = msg.Picture;
		        	  var DisVictimChildren = msg.DisVictimChildren;
		        	  var ProperPronunciation = msg.ProperPronunciation;
		        	  var SignLanguage = msg.SignLanguage;
		        	        	  
		        	  var AccuracyNo = msg.AccuracyNo;
		        	  var ImpartialNo = msg.ImpartialNo;
		        	  var FairNo = msg.FairNo;
		        	  var BalancedNo = msg.BalancedNo;
		        	  var FactsDistortionNo = msg.FactsDistortionNo;
		        	  var PictureNo = msg.PictureNo;
		        	  var DisVictimChildrenNo = msg.DisVictimChildrenNo;
		        	  var ProperPronunciationNo = msg.ProperPronunciationNo;
		        	  var SignLanguageNo = msg.SignLanguageNo;

		        	  var AccuracyNA = msg.AccuracyNA;
		        	  var ImpartialNA = msg.ImpartialNA;
		        	  var FairNA = msg.FairNA;
		        	  var BalancedNA = msg.BalancedNA;
		        	  var FactsDistortionNA = msg.FactsDistortionNA;
		        	  var PictureNA = msg.PictureNA;
		        	  var DisVictimChildrenNA = msg.DisVictimChildrenNA;
		        	  var ProperPronunciationNA = msg.ProperPronunciationNA;
		        	  var SignLanguageNA = msg.SignLanguageNA;
		        	  
		        	  
		Highcharts.chart('container2', {
		      			chart: {
		      				type: 'bar'
		      			},
		      			title: {
		      				text: 'News Standard'
		      			},
		      			subtitle: {
		      				text: ''
		      			},
		      			xAxis: {
		      				categories: ['Accuracy', 'Impartial', 'Fair', 'Balanced', 'Facts Distortion', 'Picture(Good Taste)', 'Dis Victim Children', 'Proper Pronunciation', 'Sign Language Interpreter'],
		      				crosshair: true,
		      				title: {
		      					text: null
		      				}
		      			},
		      			yAxis: {
		      				min: 0,
		      				title: {
		      					text: 'News Standard Count',
		      					align: 'high'
		      				},
		      				labels: {
		      					overflow: 'justify'
		      				}
		      			},
		      			tooltip: {
		      				valueSuffix: ''
		      			},
		      			plotOptions: {
		      				bar: {
		      					dataLabels: {
		      						enabled: true
		      					}
		      				}
		      			},
		      			legend: {
		      				layout: 'vertical',
		      				align: 'right',
		      				verticalAlign: 'top',
		      				x: -40,
		      				y: 50,
		      				floating: true,
		      				borderWidth: 1,
		      				backgroundColor:
		      					Highcharts.defaultOptions.legend.backgroundColor || '#FFFFFF',
		      				shadow: true
		      			},
		      			credits: {
		      				enabled: false
		      			},
		      			
		      			series: [{
		      				name: 'YES',
		      				data: [Accuracy,Impartial,Fair,Balanced,FactsDistortion,Picture,DisVictimChildren,ProperPronunciation,SignLanguage]
		      			}, {
		    				name: 'No',
		    				data: [AccuracyNo,ImpartialNo,FairNo,BalancedNo,FactsDistortionNo,PictureNo,DisVictimChildrenNo,ProperPronunciationNo,SignLanguageNo]
		    			}
		      			, {
		    				name: 'NA',
		    				data: [AccuracyNA,ImpartialNA,FairNA,BalancedNA,FactsDistortionNA,PictureNA,DisVictimChildrenNA,ProperPronunciationNA,SignLanguageNA]
		    			}
		      			]
		      		});
		document.getElementById("overlay").style.display = "none";
					},
		              
			});	
		//end - bar-chart (LOCAL NEWS)
		
		//start - radar-chart (LOCAL NEWS)
		
		 $.ajax({
		     type: "post",
		      url: "actions/bi/BINewsSponsorship.jsp", //this is my servlet
		      dataType: "json",
		       data: {
		    	   channel_id: channel_id,
		    	   analyzed_date: analyzed_date,
		    	   language: language,
		    	   news_category_id: news_category_id
		           }, 
		          success: function(msg){ 
		        	          	
			        	  var sponsor_local_news = msg.sponsor_local_news;
			        	  var number_advert_aired = msg.number_advert_aired;
			        	  var sponsor_logo_proper_placed = msg.sponsor_logo_proper_placed;
			        	  var advert_accuracy = msg.advert_accuracy;
			        	  var advert_facts = msg.advert_facts;
			        	  var separation_programme = msg.separation_programme;
			        	  
			        	  var sponsor_local_news_no = msg.sponsor_local_news_no;
			        	  var number_advert_aired_no = msg.number_advert_aired_no;
			        	  var sponsor_logo_proper_placed_no = msg.sponsor_logo_proper_placed_no;
			        	  var advert_accuracy_no = msg.advert_accuracy_no;
			        	  var advert_facts_no = msg.advert_facts_no;
			        	  var separation_programme_no = msg.separation_programme_no;
			        	  
			        	  var sponsor_local_news_na = msg.sponsor_local_news_na;
			        	  var number_advert_aired_na = msg.number_advert_aired_na;
			        	  var sponsor_logo_proper_placed_na = msg.sponsor_logo_proper_placed_na;
			        	  var advert_accuracy_na = msg.advert_accuracy_na;
			        	  var advert_facts_na = msg.advert_facts_na;
			        	  var separation_programme_na = msg.separation_programme_na;
			        	 
		        	  Highcharts.chart('container3', {
		        		  colors: ['#FFD700', '#C0C0C0', '#CD7F32'],
		        		  chart: {
		        			type: 'column',
		        			inverted: true,
		        			polar: true
		        		  },
		        		  title: {
		        			text: 'Sponsorship'
		        		  },
		        		  tooltip: {
		        			outside: true
		        		  },
		        		  pane: {
		        			size: '85%',
		        			endAngle: 270
		        		  },
		        		  xAxis: {
		        			tickInterval: 1,
		        			labels: {
		        			  align: 'right',
		        			  useHTML: true,
		        			  allowOverlap: true,
		        			  step: 1,
		        			  y: 4,
		        			  style: {
		        				fontSize: '12px'
		        			  }
		        			},
		        			lineWidth: 0,
		        			categories: [
		        			  'Sponsorship on Local News <span class="f16"><span id="flag" class="flag no">' +
		        			  '</span></span>',
		        			  'Number of Adverts Aired <span class="f16"><span id="flag" class="flag us">' +
		        			  '</span></span>',
		        			  'Sponsorship Logo Proper Placed <span class="f16"><span id="flag" class="flag de">' +
		        			  '</span></span>',
		        			  'Advert of the Accuracy <span class="f16"><span id="flag" class="flag ca">' +
		        			  '</span></span>',
		        			  'Advert Facts Presentation <span class="f16"><span id="flag" class="flag at">' +
		        			  '</span></span>',
		        			  'Clear Separation from the Programme  <span class="f16"><span id="flag" class="flag se">' +
		        			  '</span></span>'
		        			  
		        			]
		        		  },
		        		  yAxis: {
		        			lineWidth: 0,
		        			tickInterval: 25,
		        			reversedStacks: false,
		        			endOnTick: true,
		        			showLastLabel: true
		        		  },
		        		  plotOptions: {
		        			column: {
		        			  stacking: 'normal',
		        			  borderWidth: 0,
		        			  pointPadding: 0,
		        			  groupPadding: 0.15
		        			}
		        		  },
		        		  series: [{
		        			name: 'YES',
		        			data: [sponsor_local_news, number_advert_aired, sponsor_logo_proper_placed, advert_accuracy, advert_facts, separation_programme]
		        		  }, {
		        			name: 'NO',
		        			data: [sponsor_local_news_no, number_advert_aired_no, sponsor_logo_proper_placed_no, advert_accuracy_no, advert_facts_no, separation_programme_no]
		        		  }, {
		        			name: 'N/A',
		        			data: [sponsor_local_news_na, number_advert_aired_na, sponsor_logo_proper_placed_na, advert_accuracy_na, advert_facts_na, separation_programme_na]
		        		  }]
		        		});
		        	  
					},		              
			});	
		
		//End - radar-chart (LOCAL NEWS)		

		
/*
* ********************************************************************************************************************
		  		INTERNATIONAL NEWS ANALYSIS BUSINESS INTELIGENCE (GRAPH)
  *********************************************************************************************************************
 */
 
//start - funnel-cylinder (INTERNATIONAL NEWS)
 $.ajax({
	     type: "post",
	      url: "actions/bi/bi_local_news.jsp", //this is my servlet
	      dataType: "json",
	       data: {
	    	   channel_id: channel_id,
	    	   analyzed_date: analyzed_date,
	    	   language: language,
	    	   news_category_id: 2
	           }, 
	          success: function(msg){ 
	        	
	        	  var local_news_count = msg.local_news_count;
	        	  
		Highcharts.chart('container4', {
			 colors: ['#fb8c00'],
			chart: {
				type: 'funnel3d',
				options3d: {
					enabled: true,
					alpha: 10,
					depth: 50,
					viewDistance: 50
				}
			},
			title: {
				text: 'Number of news Items'
			},
			plotOptions: {
				series: {
					dataLabels: {
						enabled: true,
						format: '<b>{point.name}</b> ({point.y:,.0f})',
						allowOverlap: true,
						y: 10
					},
					neckWidth: '30%',
					neckHeight: '25%',
					width: '80%',
					height: '80%'
				}
			},
			series: [{
				name: 'News Item Count',
				data: [
					['News items', local_news_count],
				]
			}]
			});
		},
             
	});
 //end - funnel-cylinder (INTERNATIONAL NEWS)

 //start - dot-chart (INTERNATIONAL NEWS)
		  $.ajax({
		     type: "post",
		      url: "actions/bi/BINewsStandard.jsp", //this is my servlet
		      dataType: "json",
		       data: {
		    	   channel_id: channel_id,
		    	   analyzed_date: analyzed_date,
		    	   language: language,
		    	   news_category_id: 2
		           }, 
		          success: function(msg){ 
		        	
		        	  var Accuracy = msg.Accuracy;
		        	  var Impartial = msg.Impartial;
		        	  var Fair = msg.Fair;
		        	  var Balanced = msg.Balanced;
		        	  var FactsDistortion = msg.FactsDistortion;
		        	  var Picture = msg.Picture;
		        	  var DisVictimChildren = msg.DisVictimChildren;
		        	  var ProperPronunciation = msg.ProperPronunciation;
		        	  var SignLanguage = msg.SignLanguage;
		        	        	  
		        	  var AccuracyNo = msg.AccuracyNo;
		        	  var ImpartialNo = msg.ImpartialNo;
		        	  var FairNo = msg.FairNo;
		        	  var BalancedNo = msg.BalancedNo;
		        	  var FactsDistortionNo = msg.FactsDistortionNo;
		        	  var PictureNo = msg.PictureNo;
		        	  var DisVictimChildrenNo = msg.DisVictimChildrenNo;
		        	  var ProperPronunciationNo = msg.ProperPronunciationNo;
		        	  var SignLanguageNo = msg.SignLanguageNo;

		        	  var AccuracyNA = msg.AccuracyNA;
		        	  var ImpartialNA = msg.ImpartialNA;
		        	  var FairNA = msg.FairNA;
		        	  var BalancedNA = msg.BalancedNA;
		        	  var FactsDistortionNA = msg.FactsDistortionNA;
		        	  var PictureNA = msg.PictureNA;
		        	  var DisVictimChildrenNA = msg.DisVictimChildrenNA;
		        	  var ProperPronunciationNA = msg.ProperPronunciationNA;
		        	  var SignLanguageNA = msg.SignLanguageNA;
		        	  
		        	  Highcharts.chart('container5', {
		      			chart: {
		      				type: 'area'
		      			},
		      			title: {
		      				text: 'News Standard Analysis'
		      			},
		      			subtitle: {
		      				text: '* News Standard Count',
		      				align: 'right',
		      				verticalAlign: 'bottom'
		      			},
		      			legend: {
		      				layout: 'vertical',
		      				align: 'left',
		      				verticalAlign: 'top',
		      				x: 100,
		      				y: 70,
		      				floating: true,
		      				borderWidth: 1,
		      				backgroundColor:
		      					Highcharts.defaultOptions.legend.backgroundColor || '#FFFFFF'
		      			},
		      			xAxis: {
		      				categories: ['Accuracy', 'Impartial', 'Fair', 'Balanced', 'Facts Distortion', 'Picture(Good Taste)', 'Dis Victim Children', 'Proper Pronunciation', 'Sign Language Interpreter']
		      			},
		      			yAxis: {
		      				title: {
		      					text: 'Y-Axis'
		      				}
		      			},
		      			plotOptions: {
		      				area: {
		      					fillOpacity: 0.5
		      				}
		      			},
		      			credits: {
		      				enabled: false
		      			},     			
		      			
		      			series: [{
		      				name: 'YES',
		      				data: [Accuracy,Impartial,Fair,Balanced,FactsDistortion,Picture,DisVictimChildren,ProperPronunciation,SignLanguage],
		      				color:'#A9FF96'
		      			}, {
		      				name: 'No',
		    				data: [AccuracyNo,ImpartialNo,FairNo,BalancedNo,FactsDistortionNo,PictureNo,DisVictimChildrenNo,ProperPronunciationNo,SignLanguageNo], 
		      				color:'#95CFFF'
		      			}, {
		      				name: 'N/A',
		    				data: [AccuracyNA,ImpartialNA,FairNA,BalancedNA,FactsDistortionNA,PictureNA,DisVictimChildrenNA,ProperPronunciationNA,SignLanguageNA],
		      				color:'#FFBC75'
		      			}]
		      		});
					},
		              
			});	
		//end - dot-chart (INTERNATIONAL NEWS)
		
		//start - stacked-bar-chart (INTERNATIONAL NEWS)
		 $.ajax({
		     type: "post",
		      url: "actions/bi/BINewsSponsorship.jsp", //this is my servlet
		      dataType: "json",
		       data: {
		    	   channel_id: channel_id,
		    	   analyzed_date: analyzed_date,
		    	   language: language,
		    	   news_category_id: 2
		           }, 
		          success: function(msg){ 
		        	          	
			        	  var sponsor_local_news = msg.sponsor_local_news;
			        	  var number_advert_aired = msg.number_advert_aired;
			        	  var sponsor_logo_proper_placed = msg.sponsor_logo_proper_placed;
			        	  var advert_accuracy = msg.advert_accuracy;
			        	  var advert_facts = msg.advert_facts;
			        	  var separation_programme = msg.separation_programme;
			        	  
			        	  var sponsor_local_news_no = msg.sponsor_local_news_no;
			        	  var number_advert_aired_no = msg.number_advert_aired_no;
			        	  var sponsor_logo_proper_placed_no = msg.sponsor_logo_proper_placed_no;
			        	  var advert_accuracy_no = msg.advert_accuracy_no;
			        	  var advert_facts_no = msg.advert_facts_no;
			        	  var separation_programme_no = msg.separation_programme_no;
			        	  
			        	  var sponsor_local_news_na = msg.sponsor_local_news_na;
			        	  var number_advert_aired_na = msg.number_advert_aired_na;
			        	  var sponsor_logo_proper_placed_na = msg.sponsor_logo_proper_placed_na;
			        	  var advert_accuracy_na = msg.advert_accuracy_na;
			        	  var advert_facts_na = msg.advert_facts_na;
			        	  var separation_programme_na = msg.separation_programme_na;
			        	  
			        	  Highcharts.chart('container6', {
			      			chart: {
			      				type: 'bar'
			      			},
			      			title: {
			      				text: 'Sponsorship'
			      			},
			      			xAxis: {
			      				
			      				categories: ['Sponsorship on Local News', 'Number of Adverts Aired', 'Sponsorship Logo Proper Placed', 'Advert of the Accuracy', 'Advert Facts Presentation', 'Clear Separation from the Programme']
			      			},
			      			yAxis: {
			      				min: 0,
			      				title: {
			      					text: 'Sponsorship Count'
			      				}
			      			},
			      			legend: {
			      				reversed: true
			      			},
			      			plotOptions: {
			      				series: {
			      					stacking: 'normal'
			      				}
			      			},
			      			series: [{
			        			name: 'YES',
			        			data: [sponsor_local_news, number_advert_aired, sponsor_logo_proper_placed, advert_accuracy, advert_facts, separation_programme]
			        		  }, {
			        			name: 'NO',
			        			data: [sponsor_local_news_no, number_advert_aired_no, sponsor_logo_proper_placed_no, advert_accuracy_no, advert_facts_no, separation_programme_no]
			        		  }, {
			        			name: 'N/A',
			        			data: [sponsor_local_news_na, number_advert_aired_na, sponsor_logo_proper_placed_na, advert_accuracy_na, advert_facts_na, separation_programme_na]
			        		  }]
			      		});
			        	  
			        	  
		          },		              
			});	
		//End - stacked-bar-chart (INTERNATIONAL NEWS)
		
		
/*
 * ********************************************************************************************************************
		 		  		BUSINESS NEWS ANALYSIS INTELIGENCE REPORT (GRAPH)
   *********************************************************************************************************************
 */
//start - funnel-cylinder (BUSINESS NEWS)
 $.ajax({
	     type: "post",
	      url: "actions/bi/bi_local_news.jsp", //this is my servlet
	      dataType: "json",
	       data: {
	    	   channel_id: channel_id,
	    	   analyzed_date: analyzed_date,
	    	   language: language,
	    	   news_category_id: 3
	           }, 
	          success: function(msg){ 
	        	
	        	  var local_news_count = msg.local_news_count;
	        	  
		Highcharts.chart('container7', {
			 colors: ['#7cb342'],
			chart: {
				type: 'funnel3d',
				options3d: {
					enabled: true,
					alpha: 10,
					depth: 50,
					viewDistance: 50
				}
			},
			title: {
				text: 'Number of news Items'
			},
			plotOptions: {
				series: {
					dataLabels: {
						enabled: true,
						format: '<b>{point.name}</b> ({point.y:,.0f})',
						allowOverlap: true,
						y: 10
					},
					neckWidth: '30%',
					neckHeight: '25%',
					width: '80%',
					height: '80%'
				}
			},
			series: [{
				name: 'News Item Count',
				data: [
					['News items', local_news_count],
				]
			}]
			});
		},
             
	});
 //end - funnel-cylinder (BUSINESS NEWS)
 
 //start - bar-chart (BUSINESS NEWS)
		  $.ajax({
		     type: "post",
		      url: "actions/bi/BINewsStandard.jsp", //this is my servlet
		      dataType: "json",
		       data: {
		    	   channel_id: channel_id,
		    	   analyzed_date: analyzed_date,
		    	   language: language,
		    	   news_category_id: 3
		           }, 
		          success: function(msg){ 
		        	
		        	  var Accuracy = msg.Accuracy;
		        	  var Impartial = msg.Impartial;
		        	  var Fair = msg.Fair;
		        	  var Balanced = msg.Balanced;
		        	  var FactsDistortion = msg.FactsDistortion;
		        	  var Picture = msg.Picture;
		        	  var DisVictimChildren = msg.DisVictimChildren;
		        	  var ProperPronunciation = msg.ProperPronunciation;
		        	  var SignLanguage = msg.SignLanguage;
		        	        	  
		        	  var AccuracyNo = msg.AccuracyNo;
		        	  var ImpartialNo = msg.ImpartialNo;
		        	  var FairNo = msg.FairNo;
		        	  var BalancedNo = msg.BalancedNo;
		        	  var FactsDistortionNo = msg.FactsDistortionNo;
		        	  var PictureNo = msg.PictureNo;
		        	  var DisVictimChildrenNo = msg.DisVictimChildrenNo;
		        	  var ProperPronunciationNo = msg.ProperPronunciationNo;
		        	  var SignLanguageNo = msg.SignLanguageNo;

		        	  var AccuracyNA = msg.AccuracyNA;
		        	  var ImpartialNA = msg.ImpartialNA;
		        	  var FairNA = msg.FairNA;
		        	  var BalancedNA = msg.BalancedNA;
		        	  var FactsDistortionNA = msg.FactsDistortionNA;
		        	  var PictureNA = msg.PictureNA;
		        	  var DisVictimChildrenNA = msg.DisVictimChildrenNA;
		        	  var ProperPronunciationNA = msg.ProperPronunciationNA;
		        	  var SignLanguageNA = msg.SignLanguageNA;
		        	  
		        	  
		Highcharts.chart('container8', {
		      			chart: {
		      				type: 'bar'
		      			},
		      			title: {
		      				text: 'News Standard'
		      			},
		      			subtitle: {
		      				text: ''
		      			},
		      			xAxis: {
		      				categories: ['Accuracy', 'Impartial', 'Fair', 'Balanced', 'Facts Distortion', 'Picture(Good Taste)', 'Dis Victim Children', 'Proper Pronunciation', 'Sign Language Interpreter'],
		      				crosshair: true,
		      				title: {
		      					text: null
		      				}
		      			},
		      			yAxis: {
		      				min: 0,
		      				title: {
		      					text: 'News Standard Count',
		      					align: 'high'
		      				},
		      				labels: {
		      					overflow: 'justify'
		      				}
		      			},
		      			tooltip: {
		      				valueSuffix: ''
		      			},
		      			plotOptions: {
		      				bar: {
		      					dataLabels: {
		      						enabled: true
		      					}
		      				}
		      			},
		      			legend: {
		      				layout: 'vertical',
		      				align: 'right',
		      				verticalAlign: 'top',
		      				x: -40,
		      				y: 50,
		      				floating: true,
		      				borderWidth: 1,
		      				backgroundColor:
		      					Highcharts.defaultOptions.legend.backgroundColor || '#FFFFFF',
		      				shadow: true
		      			},
		      			credits: {
		      				enabled: false
		      			},
		      			
		      			series: [{
		      				name: 'YES',
		      				data: [Accuracy,Impartial,Fair,Balanced,FactsDistortion,Picture,DisVictimChildren,ProperPronunciation,SignLanguage]
		      			}, {
		    				name: 'No',
		    				data: [AccuracyNo,ImpartialNo,FairNo,BalancedNo,FactsDistortionNo,PictureNo,DisVictimChildrenNo,ProperPronunciationNo,SignLanguageNo]
		    			}
		      			, {
		    				name: 'NA',
		    				data: [AccuracyNA,ImpartialNA,FairNA,BalancedNA,FactsDistortionNA,PictureNA,DisVictimChildrenNA,ProperPronunciationNA,SignLanguageNA]
		    			}
		      			]
		      		});
					},
		              
			});	
		//end - bar-chart (BUSINESS NEWS)
			
	//start - radar-chart (BUSINESS NEWS)
			
			 $.ajax({
			     type: "post",
			      url: "actions/bi/BINewsSponsorship.jsp", //this is my servlet
			      dataType: "json",
			       data: {
			    	   channel_id: channel_id,
			    	   analyzed_date: analyzed_date,
			    	   language: language,
			    	   news_category_id: 3
			           }, 
			          success: function(msg){ 
			        	          	
				        	  var sponsor_local_news = msg.sponsor_local_news;
				        	  var number_advert_aired = msg.number_advert_aired;
				        	  var sponsor_logo_proper_placed = msg.sponsor_logo_proper_placed;
				        	  var advert_accuracy = msg.advert_accuracy;
				        	  var advert_facts = msg.advert_facts;
				        	  var separation_programme = msg.separation_programme;
				        	  
				        	  var sponsor_local_news_no = msg.sponsor_local_news_no;
				        	  var number_advert_aired_no = msg.number_advert_aired_no;
				        	  var sponsor_logo_proper_placed_no = msg.sponsor_logo_proper_placed_no;
				        	  var advert_accuracy_no = msg.advert_accuracy_no;
				        	  var advert_facts_no = msg.advert_facts_no;
				        	  var separation_programme_no = msg.separation_programme_no;
				        	  
				        	  var sponsor_local_news_na = msg.sponsor_local_news_na;
				        	  var number_advert_aired_na = msg.number_advert_aired_na;
				        	  var sponsor_logo_proper_placed_na = msg.sponsor_logo_proper_placed_na;
				        	  var advert_accuracy_na = msg.advert_accuracy_na;
				        	  var advert_facts_na = msg.advert_facts_na;
				        	  var separation_programme_na = msg.separation_programme_na;
				        	 
			        	  Highcharts.chart('container9', {
			        		  colors: ['#FFD700', '#C0C0C0', '#CD7F32'],
			        		  chart: {
			        			type: 'column',
			        			inverted: true,
			        			polar: true
			        		  },
			        		  title: {
			        			text: 'Sponsorship'
			        		  },
			        		  tooltip: {
			        			outside: true
			        		  },
			        		  pane: {
			        			size: '85%',
			        			endAngle: 270
			        		  },
			        		  xAxis: {
			        			tickInterval: 1,
			        			labels: {
			        			  align: 'right',
			        			  useHTML: true,
			        			  allowOverlap: true,
			        			  step: 1,
			        			  y: 4,
			        			  style: {
			        				fontSize: '12px'
			        			  }
			        			},
			        			lineWidth: 0,
			        			categories: [
			        			  'Sponsorship on Local News <span class="f16"><span id="flag" class="flag no">' +
			        			  '</span></span>',
			        			  'Number of Adverts Aired <span class="f16"><span id="flag" class="flag us">' +
			        			  '</span></span>',
			        			  'Sponsorship Logo Proper Placed <span class="f16"><span id="flag" class="flag de">' +
			        			  '</span></span>',
			        			  'Advert of the Accuracy <span class="f16"><span id="flag" class="flag ca">' +
			        			  '</span></span>',
			        			  'Advert Facts Presentation <span class="f16"><span id="flag" class="flag at">' +
			        			  '</span></span>',
			        			  'Clear Separation from the Programme  <span class="f16"><span id="flag" class="flag se">' +
			        			  '</span></span>'
			        			  
			        			]
			        		  },
			        		  yAxis: {
			        			lineWidth: 0,
			        			tickInterval: 25,
			        			reversedStacks: false,
			        			endOnTick: true,
			        			showLastLabel: true
			        		  },
			        		  plotOptions: {
			        			column: {
			        			  stacking: 'normal',
			        			  borderWidth: 0,
			        			  pointPadding: 0,
			        			  groupPadding: 0.15
			        			}
			        		  },
			        		  series: [{
			        			name: 'YES',
			        			data: [sponsor_local_news, number_advert_aired, sponsor_logo_proper_placed, advert_accuracy, advert_facts, separation_programme]
			        		  }, {
			        			name: 'NO',
			        			data: [sponsor_local_news_no, number_advert_aired_no, sponsor_logo_proper_placed_no, advert_accuracy_no, advert_facts_no, separation_programme_no]
			        		  }, {
			        			name: 'N/A',
			        			data: [sponsor_local_news_na, number_advert_aired_na, sponsor_logo_proper_placed_na, advert_accuracy_na, advert_facts_na, separation_programme_na]
			        		  }]
			        		});
			        	  
						},		              
				});	
			
			//End - radar-chart (BUSINESS NEWS)		

/*
	********************************************************************************************************************
			 		 		  		SPORTS NEWS ANALYSIS INTELIGENCE REPORT (GRAPH)
	*********************************************************************************************************************
 */
			 //start - funnel-cylinder (SPORTS NEWS)
			  $.ajax({
			 	     type: "post",
			 	      url: "actions/bi/bi_local_news.jsp", //this is my servlet
			 	      dataType: "json",
			 	       data: {
			 	    	   channel_id: channel_id,
			 	    	   analyzed_date: analyzed_date,
			 	    	   language: language,
			 	    	   news_category_id: 4
			 	           }, 
			 	          success: function(msg){ 
			 	        	  var local_news_count = msg.local_news_count;
			 	        	  
			 		Highcharts.chart('container10', {
			 			 colors: ['#757ce8'],
			 			chart: {
			 				type: 'funnel3d',
			 				options3d: {
			 					enabled: true,
			 					alpha: 10,
			 					depth: 50,
			 					viewDistance: 50
			 				}
			 			},
			 			title: {
			 				text: 'Number of news Items'
			 			},
			 			plotOptions: {
			 				series: {
			 					dataLabels: {
			 						enabled: true,
			 						format: '<b>{point.name}</b> ({point.y:,.0f})',
			 						allowOverlap: true,
			 						y: 10
			 					},
			 					neckWidth: '30%',
			 					neckHeight: '25%',
			 					width: '80%',
			 					height: '80%'
			 				}
			 			},
			 			series: [{
			 				name: 'News Item Count',
			 				data: [
			 					['News items', local_news_count],
			 				]
			 			}]
			 			});
			 		},
			              
			 	});
			  //end - funnel-cylinder (SPORTS NEWS)

			//start - dot-chart (SPORTS NEWS)
			  $.ajax({
			     type: "post",
			      url: "actions/bi/BINewsStandard.jsp", //this is my servlet
			      dataType: "json",
			       data: {
			    	   channel_id: channel_id,
			    	   analyzed_date: analyzed_date,
			    	   language: language,
			    	   news_category_id: 4
			           }, 
			          success: function(msg){ 
			        	
			        	  var Accuracy = msg.Accuracy;
			        	  var Impartial = msg.Impartial;
			        	  var Fair = msg.Fair;
			        	  var Balanced = msg.Balanced;
			        	  var FactsDistortion = msg.FactsDistortion;
			        	  var Picture = msg.Picture;
			        	  var DisVictimChildren = msg.DisVictimChildren;
			        	  var ProperPronunciation = msg.ProperPronunciation;
			        	  var SignLanguage = msg.SignLanguage;
			        	        	  
			        	  var AccuracyNo = msg.AccuracyNo;
			        	  var ImpartialNo = msg.ImpartialNo;
			        	  var FairNo = msg.FairNo;
			        	  var BalancedNo = msg.BalancedNo;
			        	  var FactsDistortionNo = msg.FactsDistortionNo;
			        	  var PictureNo = msg.PictureNo;
			        	  var DisVictimChildrenNo = msg.DisVictimChildrenNo;
			        	  var ProperPronunciationNo = msg.ProperPronunciationNo;
			        	  var SignLanguageNo = msg.SignLanguageNo;

			        	  var AccuracyNA = msg.AccuracyNA;
			        	  var ImpartialNA = msg.ImpartialNA;
			        	  var FairNA = msg.FairNA;
			        	  var BalancedNA = msg.BalancedNA;
			        	  var FactsDistortionNA = msg.FactsDistortionNA;
			        	  var PictureNA = msg.PictureNA;
			        	  var DisVictimChildrenNA = msg.DisVictimChildrenNA;
			        	  var ProperPronunciationNA = msg.ProperPronunciationNA;
			        	  var SignLanguageNA = msg.SignLanguageNA;
			        	  
			        	  Highcharts.chart('container11', {
			      			chart: {
			      				type: 'area'
			      			},
			      			title: {
			      				text: 'News Standard Analysis'
			      			},
			      			subtitle: {
			      				text: '* News Standard Count',
			      				align: 'right',
			      				verticalAlign: 'bottom'
			      			},
			      			legend: {
			      				layout: 'vertical',
			      				align: 'left',
			      				verticalAlign: 'top',
			      				x: 100,
			      				y: 70,
			      				floating: true,
			      				borderWidth: 1,
			      				backgroundColor:
			      					Highcharts.defaultOptions.legend.backgroundColor || '#FFFFFF'
			      			},
			      			xAxis: {
			      				categories: ['Accuracy', 'Impartial', 'Fair', 'Balanced', 'Facts Distortion', 'Picture(Good Taste)', 'Dis Victim Children', 'Proper Pronunciation', 'Sign Language Interpreter']
			      			},
			      			yAxis: {
			      				title: {
			      					text: 'Y-Axis'
			      				}
			      			},
			      			plotOptions: {
			      				area: {
			      					fillOpacity: 0.5
			      				}
			      			},
			      			credits: {
			      				enabled: false
			      			},     			
			      			
			      			series: [{
			      				name: 'YES',
			      				data: [Accuracy,Impartial,Fair,Balanced,FactsDistortion,Picture,DisVictimChildren,ProperPronunciation,SignLanguage],
			      				
			      			}, {
			      				name: 'No',
			    				data: [AccuracyNo,ImpartialNo,FairNo,BalancedNo,FactsDistortionNo,PictureNo,DisVictimChildrenNo,ProperPronunciationNo,SignLanguageNo], 
			      				
			      			}, {
			      				name: 'N/A',
			    				data: [AccuracyNA,ImpartialNA,FairNA,BalancedNA,FactsDistortionNA,PictureNA,DisVictimChildrenNA,ProperPronunciationNA,SignLanguageNA],
			      				
			      			}]
			      		});
						},
			              
				});	
			//end - dot-chart (SPORTS NEWS)

//start - stacked-bar-chart (SPORTS NEWS)
		 $.ajax({
		     type: "post",
		      url: "actions/bi/BINewsSponsorship.jsp", //this is my servlet
		      dataType: "json",
		       data: {
		    	   channel_id: channel_id,
		    	   analyzed_date: analyzed_date,
		    	   language: language,
		    	   news_category_id: 4
		           }, 
		          success: function(msg){ 
		        	          	
			        	  var sponsor_local_news = msg.sponsor_local_news;
			        	  var number_advert_aired = msg.number_advert_aired;
			        	  var sponsor_logo_proper_placed = msg.sponsor_logo_proper_placed;
			        	  var advert_accuracy = msg.advert_accuracy;
			        	  var advert_facts = msg.advert_facts;
			        	  var separation_programme = msg.separation_programme;
			        	  
			        	  var sponsor_local_news_no = msg.sponsor_local_news_no;
			        	  var number_advert_aired_no = msg.number_advert_aired_no;
			        	  var sponsor_logo_proper_placed_no = msg.sponsor_logo_proper_placed_no;
			        	  var advert_accuracy_no = msg.advert_accuracy_no;
			        	  var advert_facts_no = msg.advert_facts_no;
			        	  var separation_programme_no = msg.separation_programme_no;
			        	  
			        	  var sponsor_local_news_na = msg.sponsor_local_news_na;
			        	  var number_advert_aired_na = msg.number_advert_aired_na;
			        	  var sponsor_logo_proper_placed_na = msg.sponsor_logo_proper_placed_na;
			        	  var advert_accuracy_na = msg.advert_accuracy_na;
			        	  var advert_facts_na = msg.advert_facts_na;
			        	  var separation_programme_na = msg.separation_programme_na;
			        	  
			        	  Highcharts.chart('container12', {
			      			chart: {
			      				type: 'bar'
			      			},
			      			title: {
			      				text: 'Sponsorship'
			      			},
			      			xAxis: {
			      				
			      				categories: ['Sponsorship on Local News', 'Number of Adverts Aired', 'Sponsorship Logo Proper Placed', 'Advert of the Accuracy', 'Advert Facts Presentation', 'Clear Separation from the Programme']
			      			},
			      			yAxis: {
			      				min: 0,
			      				title: {
			      					text: 'Sponsorship Count'
			      				}
			      			},
			      			legend: {
			      				reversed: true
			      			},
			      			plotOptions: {
			      				series: {
			      					stacking: 'normal'
			      				}
			      			},
			      			series: [{
			        			name: 'YES',
			        			data: [sponsor_local_news, number_advert_aired, sponsor_logo_proper_placed, advert_accuracy, advert_facts, separation_programme]
			        		  }, {
			        			name: 'NO',
			        			data: [sponsor_local_news_no, number_advert_aired_no, sponsor_logo_proper_placed_no, advert_accuracy_no, advert_facts_no, separation_programme_no]
			        		  }, {
			        			name: 'N/A',
			        			data: [sponsor_local_news_na, number_advert_aired_na, sponsor_logo_proper_placed_na, advert_accuracy_na, advert_facts_na, separation_programme_na]
			        		  }]
			      		});
			        	  
			        	  
		          },		              
			});	
		//End - stacked-bar-chart (INTERNATIONAL NEWS)

}

$(document).ready(function() {
	document.getElementById("contentType").value = "";
});

	

</script>


  </body>
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