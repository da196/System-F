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
<%@ page import="java.text.*" %>
<!-- Start header -->
<jsp:include page="includes/header.jsp" />
<!-- End header -->

<!-- Start Top header View -->
<jsp:include page="includes/topView.jsp" />
<!-- End Top Header View -->

<!-- Start SideBar View -->
<jsp:include page="includes/sideView.jsp" />
<!-- End SideBar View -->


<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>

<script type="text/javascript">


function getChannel(){
	
	var regionID = document.getElementById('region').value
	var contentTypeID = "2";
	
	$.ajax({ 
	     type: "GET",
	      url: "actions/configuration/getChannel.jsp", //this is my servlet
	      dataType: "json",
	       data: {
	    	   regionID: regionID,
	    	   contentTypeID: contentTypeID
	           }, 
		          success: function(channelList){  
			          var s = '';
			          s += '<ul class="list-group" id="myUL">';          
			          $.each(channelList.data, function(index,channelList) {        
			                s += '<li class="list-group-item"><a class="adddiv" data-id="'+ channelList.channelID +'" onClick="getChannelID('+ channelList.channelID +');" style="text-decoration:none;">'+channelList.channelName+'</a> </li>'; 
			          });
			          s += '</ul>';     
			          $('#result').html(s);

			        }
	   });
}

$(document).ready(function() {
	getChannel();
	});


</script>
<%
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	
	Calendar calendar = Calendar.getInstance();
	
	//System.out.println("Current Date = " + df.format(calendar.getTime()));
	
	// Subtract 15 minutes from current date
	//calendar.add(Calendar.MINUTE, -5);
	
	calendar.add(Calendar.SECOND, -50);
	String updateDate = df.format(calendar.getTime());
	
	String[] parts = updateDate.split(" ");
	String date = parts[0];
	String time  = parts[1];
	
	int weekday = calendar.get(Calendar.DAY_OF_WEEK);
	DateFormatSymbols dfs = new DateFormatSymbols();
	
	String day = dfs.getWeekdays()[weekday];
%> 
	<input type="hidden" id="date" value="<% out.print(date); %>">
	<input type="hidden" id="time" value="<% out.print(time); %>">
	<input type="hidden" id="day" value="<% out.print(day); %>">
      <main class="main">
        <!-- Breadcrumb-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            Content
          </li>
          <li class="breadcrumb-item">
          <a href="channel-tv.jsp">Radio</a>
          </li>
         
        </ol>
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
                <div class="col-sm-4 col-lg-2">
                    <div class="card">
                        <div class="card-header">
                        </i> Stations
                        </div>
                        <div class="card-body" style="height: 550px;">
                        
                                     <!--  Start All regions here ... -->
                             <select class="form-control" id="region" name="region" onChange="getChannel();">
							 	 	<%
								 		File errorLogs = null;
							            String errorLogFile = "";
							            errorLogs = new File(errorLogFile);
										try{
													                    
										java.util.List<Regions> contentList = Regions.getRegionList();
													
										for (int i = 0; i < contentList.size(); i++){
											
										%>
										<option value="<% out.print(contentList.get(i).getRegionID());%>"> <% out.print(contentList.get(i).getRegionName()); %> </option>								      
										 <%
										}
										}catch(Exception er){
											er.printStackTrace();
										ErrorLogsAppender.appendException("Search.jsp page", er, errorLogs);
										}
									%>
							 </select>
                        <!--  End All regions here ... -->
                                              
                        <br/>
                        
                        <input class="form-control" type="text" onkeyup="myFunction()"  id="myInput" placeholder="Search..." />
                            <div id="spy-example1" data-spy="scroll" data-target="#navbar-example1" data-offset="65" style="position: relative; height: 400px; overflow: auto; margin-top: .5rem; overflow-y: scroll;">
		                      
		                      <div id="result"></div>

                         	</div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-lg-10 mb-12">
                    <div class="row" id="clean">
                        <!-- Start the video insertion here.. -->
                      
                      
                      
                        <!-- End the video insertion here.. -->                   
                       
                    </div>
                </div>
            </div>
          </div>
        </div>
      </main>
      
   <!-- Start AsideMenu View -->
	<aside class="aside-menu">    
        <!-- Tab panes-->
        <div class="tab-content">
          <div class="tab-pane active" id="timeline" role="tabpanel">
            <div class="list-group list-group-accent">
      			 <div id="program">
              </div>
                          
        
          </div>
          </div>
        </div>
      </aside>
	  <!-- End AsideMenu View --> 
	  
    </div>
    </div>
    
<!-- Start Footer View -->
<jsp:include page="includes/footer.jsp" />
<!-- End Footer View -->

<!-- Search Channels start here ..-->
<script type="text/javascript">
function myFunction() {
  // Declare variables
  var input, filter, ul, li, a, i, txtValue;
  input = document.getElementById('myInput');
  filter = input.value.toUpperCase();
  ul = document.getElementById("myUL");
  li = ul.getElementsByTagName('li');

  // Loop through all list items, and hide those who don't match the search query
  for (i = 0; i < li.length; i++) {
    a = li[i].getElementsByTagName("a")[0];
    txtValue = a.textContent || a.innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      li[i].style.display = "";
    } else {
      li[i].style.display = "none";
    }
  }
}
</script>
<!-- Search channels end here ..-->

<!-- Insert channels by a single click start here -->
<script type="text/javascript">

//$(document).ready(function() {

// TO ADD A CHANNEL IN A DIV  
//$(".adddiv").on("click",function(){
//$(".adddiv").click(function(){
function getChannelID(val){	
	
	// Obtain the Channel 
	//var newVal = $(this).data("id");
	var channelID = val;
	var date =  document.getElementById("date").value;
	var time =  document.getElementById("time").value;
	var content_type_id = "2";

	getProgramLineUp(channelID);
	
	 $.ajax({
	     type: "post",
	      url: "actions/components/channelTVAction.jsp", //this is my servlet
	       data: {
	    	   channelID: channelID,
	    	   date: date,
	    	   time: time,
	    	   content_type_id: content_type_id
	           }, 
	          success: function(msg){  
	             
	              var array = msg.split('|');
	              var file_serial_no = array[0];
	              var videoUrl = array[1];
	              var channelName = array[2];
	              var videoSRCUrl = array[3];
	              //alert(videoUrl);
					//Check the video player should only be 4			
					if($('div #media-player').length <= 0){
						
						var html ='<div class="col-sm-10" style="border:1px solid black; width:1000px; border-radius: 20px 20px; display: block; padding:10px; margin:20px;">';
						
							html+='Channel:   <strong>' + channelName + '</strong>  <img src="img/livestream1.png" width="50" height="20" class="pull-right"/><i class="icon-close icon-3x pull-right" style="padding-right:10px;"></i>';
							html+='<div id="media-player">';
							//html+='<audio id="classic-video" class="media-video" width="480" height="340" controls>';
							html+='<audio id="classic-video" class="media-video" width="480" height="340" autoplay="" poster="">';
							html+='<source src="'+videoUrl+'" id="mp4Source" type="audio/mp3" />';
							html+='Your browser does not support the video element.';
							html+='</audio>';
							html+='</div>';
							
							html+='</div>';
						$('#clean').append(html);
						
						var count=file_serial_no;
						var player=document.getElementById('classic-video');
						var mp4Vid = document.getElementById('mp4Source');
						var URL = videoSRCUrl;
						//var URL = "/tcms_tv/itv/ITV_";
						
						player.addEventListener('ended',myHandler,false);
						function myHandler(e)
						{
							//Channelten_1001.mp4
						   if(!e) 
						   {
						      e = window.event; 
						   }
						   count++;
						   $(mp4Vid).attr('src', URL +count+".mp3");
						   player.load();
						   player.play();
						} 
					}	
	          }
	     });		
}
// });
// });


function getProgramLineUp(val){
	var channelID = val;
	var day = document.getElementById("day").value
	
	$.ajax({ 
	 type: "GET",
	  url: "actions/configuration/displayProgramLineUp.jsp", //this is my servlet
	  dataType: "json",
	   data: {
		   channelID: channelID,
		   day: day
	       }, 
	          success: function(programList){  
		          var s = '';          
		          	  s += '<div class="list-group-item list-group-item-accent-secondary bg-light text-center font-weight-bold text-muted text-uppercase small">'+ day +'</div>';           
	              	  
		          $.each(programList.data, function(index,programList) {        
		        	  s += '<div class="list-group-item list-group-item-accent-info list-group-item-divider">';
		        	  s += '<i class="icon-clock"></i> ' + programList.time; 
		              s += '<br>'; 
		              s += '<small><strong>' + programList.programeName + '</strong></small>'; 
		              s += '</div>';
		          });   
		          $('#program').html(s);
		        }
	});
}

	
	/* 
	TO REMOVE A CHANNEL IN A DIV  	
	*/
	$(document).on("click",".icon-close",function(){
			$(this).closest('div').remove();
			 location.reload();
	 });

	</script>
<!-- Insert channels by a single click end here -->
	
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