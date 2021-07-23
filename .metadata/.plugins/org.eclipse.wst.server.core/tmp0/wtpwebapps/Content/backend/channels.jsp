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

<script type="text/javascript">
<!--  -->

function addChannel(){
	var channelName = document.getElementById("channelName").value; 
	var contentTypeID = document.getElementById("contentType").value; 
	var regionID = document.getElementById("region").value; 
	var regionID = document.getElementById("region").value; 
	var licenseCategoryID = document.getElementById("licenseCategory").value; 
	var urlPath = document.getElementById("urlPath").value; 
	var identifier = document.getElementById("add_id").value; 

	
	
	if (channelName == "") {
		alert("Please enter Channel Name!");
		die("");
	}

	if (contentTypeID == "") {
		alert("Please enter Channel Type!");
		die("");
	}
	if (regionID == "") {
		alert("Please enter Region!");
		die("");
	}
	if (licenseCategoryID == "") {
		alert("Please enter License Category!");
		die("");
	}
	if (urlPath == "") {
		alert("Please enter URL Path!");
		die("");
	}
	else{
		var answer = confirm("Please confirm to Add Channel!")
		if (answer) {
	 $.ajax({
	     type: "post",
	      url: "actions/configuration/channelsAction.jsp", //this is my servlet
	       data: {
	    	   channelName: channelName,
	    	   contentTypeID: contentTypeID,
	    	   regionID: regionID,
	    	   licenseCategoryID: licenseCategoryID,
	    	   urlPath: urlPath,
	    	   identifier: identifier
	           }, 
	          success: function(msg){    
	          
        	  var response = JSON.parse(msg);
              var status = response.status;
              if(status == 1) { 
                    alert("Channel successfully Added!");
                    document.getElementById("channelName").value = ''; 
                	document.getElementById("contentType").value = ''; 
                	document.getElementById("region").value = ''; 
                	document.getElementById("licenseCategory").value = ''; 
                	document.getElementById("urlPath").value = ''; 
                	
                    location.reload();
                } 
              if(status == 2) { 
                    alert("Error, could not Add Channel!");
                }
              if(status == 3) { 
                  alert("Sorry!!!, Channel Name Already Exist");
              }
	          }
	     });
		}
	}
}

function editChannel(val){
	var channel_id = val; 
	document.getElementById("channel_id").value = channel_id;
	
	var identifier = document.getElementById("edit_id").value; 
	
	 $.ajax({
	     type: "post",
	      url: "actions/configuration/channelsAction.jsp", //this is my servlet
	       data: {
	    	   channel_id: channel_id,
	    	   identifier: identifier,
	           }, 
	          success: function(msg){
	          var array = msg.split('|');
	          
	          document.getElementById("channel_name").value = array[0].trim();
	          document.getElementById("content_type").selectedIndex = array[1];
	          document.getElementById("_region").selectedIndex = array[2];
	          document.getElementById("licence_category").selectedIndex = array[3];
	          document.getElementById("url_Path").value = array[4].trim();
	          document.getElementById("channel_id").value = array[5];
	          document.getElementById("licence_category").value = array[6];
	          }
	     });
}
function updateRole(){
	var channelName = document.getElementById("channel_name").value; 
	var contentTypeID = document.getElementById("content_type").selectedIndex; 
	var regionID = document.getElementById("_region").selectedIndex; 
	var licenseCategoryID = document.getElementById("licence_category").selectedIndex; 
	var urlPath = document.getElementById("url_Path").value; 
	var identifier = document.getElementById("update_id").value; 
	var channel_id = document.getElementById("channel_id").value; 

	
	if (channelName == "") {
		alert("Please enter Channel Name!");
		die("");
	}

	if (contentTypeID == "") {
		alert("Please enter Channel Type!");
		die("");
	}
	if (regionID == "") {
		alert("Please enter Region!");
		die("");
	}
	if (licenseCategoryID == "") {
		alert("Please enter License Category!");
		die("");
	}
	if (urlPath == "") {
		alert("Please enter URL Path!");
		die("");
	}
	else{
		var answer = confirm("Please confirm to Update Channel!")
		if (answer) {
	 $.ajax({
	     type: "post",
	      url: "actions/configuration/channelsAction.jsp", //this is my servlet
	       data: {
	    	   channelName: channelName,
	    	   contentTypeID: contentTypeID,
	    	   regionID: regionID,
	    	   licenseCategoryID: licenseCategoryID,
	    	   urlPath: urlPath,
	    	   identifier: identifier,
	    	   channel_id: channel_id,
	           }, 
	          success: function(msg){    
	          
        	  var response = JSON.parse(msg);
              var status = response.status;
              if (status == 1) { 
                    alert("Channel successfully Updated!");

                    location.reload();
                } 
              if (status == 2) { 
                    alert("Error, could not Update Channel!");
                }
              
	          }
	     });
		}
	}
}
</script>
<input id="add_id" type="hidden" value="1" >
<input id="edit_id" type="hidden"  value="2" >
<input id="update_id" type="hidden" value="3" >
<input id="channel_id" type="hidden" >

      <main class="main">
        <!-- Breadcrumb-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            Settings
          </li>
          <li class="breadcrumb-item active">
            <a href="channels.jsp">Channels</a>
          </li>
        </ol>

        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> List of Channels            
                    <div class="card-header-actions">
                      <button class="btn btn-pill btn-block btn-primary" type="button" data-toggle="modal" data-target="#addChannelModal">
                       <i class="fa fa-plus"></i>
                        <b>Add channel</b>
                      </button>
                      </a>
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="toolbar"></div>                   
                    <div class="fresh-datatables">
                    <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
										<thead>
											<tr>
												<th>Name</th>
												<th>Content</th>
                                                 <th>License Category</th>
                                                 <th>Region</th>
                                                 <th>URL Path</th>
												<th class="disabled-sorting">Actions</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
                        				<th>Name</th>
										<th>Content</th>
                        				<th>License Category</th>
                                        <th>Region</th>
                                        <th>URL Path</th>
												<th class="disabled-sorting">Actions</th>
											</tr>
										</tfoot>
										<tbody>		
								<!-- Start of the Table Body -->	
									  <%	
										java.util.List<Channels> channelsList = Channels.GetChannelList();
                                        
                                        for (int i = 0; i < channelsList.size(); i++) {
                                        %>									  
											<tr>										
												<td><% out.print(channelsList.get(i).getChannelName()); %></td>
												<td><% out.print(channelsList.get(i).getContentTypeID()); %></td>
												<td><% out.print(channelsList.get(i).getLicenseCategoryID()); %>  </td>
												<td><% out.print(channelsList.get(i).getRegionID()); %>  </td>
												<td><% out.print(channelsList.get(i).getUrlPath()); %>  </td>
												<td>          
                   <a class="btn btn-info" title="EDIT" data-toggle="modal" data-target="#editChannelModal" id="<% out.print(channelsList.get(i).getChannelID()); %>" onClick="editChannel(<% out.print(channelsList.get(i).getChannelID()); %>);"> <i class="fa fa-edit"></i></a>
												</td>
											</tr>	
											<%
										}
										%>																						
						        
							
                      
											<!-- End of the Table Body -->
										   </tbody>
									    </table>                     
                    

                    </div>
                  </div>
                </div>
                
              </div>
            </div>
            
          </div>
        </div>

        <!-- /.start-add-channel-modal-->
        <div class="modal fade" id="addChannelModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-primary" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">New channel </h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">

                  <span aria-hidden="true">X</span>
                </button>
              </div>
			        <!-- /.modal-header-->
			  
              <div class="modal-body">
                <div class="form-group col-sm-12 col-lg-12">
                <label for="channelName"><strong>Name:</strong></label>
                <input class="form-control" type="text" id="channelName" placeholder="Enter channel name" />
              </div>

              <div class="form-group col-sm-12 col-lg-12">
                <label for="channelType"><strong>Channel type:</strong></label>
                
                <select class="form-control" id="contentType" name="contentType">
	 			<option value="">-- Channel Type -- </option>
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
				ErrorLogsAppender.appendException("Channel.jsp page", er, errorLogs);
				}
 	 			%>
	 			</select>
                
              </div>
              
              
                <div class="form-group col-sm-12 col-lg-12">
                
	                <label for="zone"><strong>Zone:</strong></label>
	                
	                <select class="form-control" id="zone" name="zone">
		 			<option value="">-- Zone -- </option>
		 	 			<%
		 	 			
						try{
									                    
						java.util.List<Lookup> zoneList = Lookup.GetZoneList();
									
						for (int i = 0; i < zoneList.size(); i++){
						%>
						<option value="<% out.print(zoneList.get(i).getId());%>"> <% out.print(zoneList.get(i).getName()); %> </option>								      
						 <%
						}
						}catch(Exception er){
						ErrorLogsAppender.appendException("Channel.jsp page", er, errorLogs);
						}
		 	 			%>		
		 			</select>
                
                </div>

 				<div class="form-group col-sm-12 col-lg-12">
                <label  for="region"><strong>Region:</strong></label>
               <select class="form-control" id="region" name="region">
	 			<option value="">-- Region -- </option>
 	 			<%
 	 			
				try{
							                    
				java.util.List<Lookup> regionList = Lookup.GetRegionList();
							
				for (int i = 0; i < regionList.size(); i++){
				%>
				<option value="<% out.print(regionList.get(i).getId());%>"> <% out.print(regionList.get(i).getName()); %> </option>								      
				 <%
				}
				}catch(Exception er){
				ErrorLogsAppender.appendException("Channel.jsp page", er, errorLogs);
				}
 	 			%>
	 			</select>
                
              </div>
              <div class="form-group col-sm-12 col-lg-12">
                <label  for="licenseCategory"><strong>License Category:</strong></label>
               <select class="form-control" id="licenseCategory" name="licenseCategory">
	 			<option value="">-- License Category -- </option>
 	 			<%
 	 			
				try{
							                    
				java.util.List<Lookup> licenseCategoryList = Lookup.GetLicenseCategoryList();
							
				for (int i = 0; i < licenseCategoryList.size(); i++){
				%>
				<option value="<% out.print(licenseCategoryList.get(i).getId());%>"> <% out.print(licenseCategoryList.get(i).getName()); %> </option>								      
				 <%
				}
				}catch(Exception er){
				ErrorLogsAppender.appendException("Channel.jsp page", er, errorLogs);
				}
 	 			%>
	 			</select>
                
              </div>
              
              <div class="form-group col-sm-12 col-lg-12">
                <label for="urlPath"><strong>URL Path:</strong></label>
                <input class="form-control" type="text" id="urlPath" placeholder="Enter URL Path" />
              </div>
             
                
              </div>
			        <!-- /.modal-body -->
			  
              <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                <button class="btn btn-primary" type="submit" onClick="addChannel();">Save changes</button>
              </div>
			        <!-- /.modal-footer -->
			  
            </div>
            <!-- /.modal-content-->
          </div>
          <!-- /.modal-dialog-->
        </div>
        <!-- /.end-add-channel-modal-->

        <!-- /.start-edit-channel-modal-->
        <div class="modal fade" id="editChannelModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-primary" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Edit channel </h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">

                  <span aria-hidden="true">X</span>
                </button>
              </div>
			        <!-- /.modal-header-->
			  
              <div class="modal-body">
                <div class="form-group col-sm-12 col-lg-12">
                <label for="channelName"><strong>Name:</strong></label>
                <input class="form-control" type="text" id="channel_name" placeholder="Enter channel name"/>
              </div>

              <div class="form-group col-sm-12 col-lg-12">
                <label for="channelType"><strong>Channel type:</strong></label>
                <select class="form-control"  name="content_type" id="content_type">
				<% 
					java.util.List<String> list = Lookup.getContentType("All");
	                for (int i = 0; i < list.size(); i++) {
	                out.print("<option>"); out.print(list.get(i)); out.print("</option>");
	                }
                 %>
				</select>
              
                
              </div>
              
                <div class="form-group col-sm-12 col-lg-12">
                
	                <label for="zone"><strong>Zone:</strong></label>
	                
	                <select class="form-control" id="zone" name="zone">
		 			<option value="">-- Channel Type -- </option>
		 			<option value="Northern Zone">Northern Zone </option>
		 			<option value="Southern Zone">Southern Zone</option>
		 			<option value="Eastern Zone">Eastern Zone</option>
		 			<option value="Western Zone">Western Zone</option>	 			
		 			</select>
                
                </div>
                
               <div class="form-group col-sm-12 col-lg-12">
                <label for="_region"><strong>Region:</strong></label>
                <select class="form-control"  name="_region" id="_region">
				<% 
					java.util.List<String> regionlist = Lookup.getRegion("All");
	                for (int i = 0; i < regionlist.size(); i++) {
	                out.print("<option>"); out.print(regionlist.get(i)); out.print("</option>");
	                }
                 %>
				</select>
              
                
              </div>
 				<div class="form-group col-sm-12 col-lg-12">
                <label for="licence_category"><strong>License Category:</strong></label>
                <select class="form-control"  name="licence_category" id="licence_category">
				<% 
					java.util.List<String> categorylist = Lookup.getLicenseCategory("All");
	                for (int i = 0; i < categorylist.size(); i++) {
	                out.print("<option>"); out.print(categorylist.get(i)); out.print("</option>");
	                }
                 %>
				</select>
              
                
              </div>
              
               <div class="form-group col-sm-12 col-lg-12">
                <label for="urlPath"><strong>URL Path:</strong></label>
                <input class="form-control" type="text" id="url_Path" placeholder="Enter URL Path" />
              </div>
                
              </div>
			        <!-- /.modal-body -->
			  
              <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                <button class="btn btn-primary" type="submit" onClick="updateRole();">Save changes</button>
              </div>
			        <!-- /.modal-footer -->
			  
            </div>
            <!-- /.modal-content-->
          </div>
          <!-- /.modal-dialog-->
        </div>
        <!-- /.end-edit-channel-modal-->

        <div class="modal fade" id="deleteUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-danger" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Delete user</h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">X</span>
                </button>
              </div>
              <div class="modal-body">
                <p>Are you sure you want to <b>delete</b> this channel?</p>
              </div>
              <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                <button class="btn btn-danger" type="sumit">Delete</button>
              </div>
            </div>
            <!-- /.modal-content-->
          </div>
          <!-- /.modal-dialog-->
        </div>
        <!-- /.end-delete-modal-->
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
<script type="text/javascript">

$(document).ready(function() {

    $('#datatables').DataTable();

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