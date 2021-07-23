<%
response.setHeader("Cache-control", "no-cache");
response.setHeader("Cache-control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expire",0);

if (session.getAttribute("userID") != null && session.getAttribute("roleID").equals("3") ) {
%>
<%@ page import="tcms.configuration.*" %>

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

function getContentInfo(val){
	
	var id = val;
	 $.ajax({
	     type: "post",
	      url: "actions/components/libraryAction.jsp", //this is my servlet
	       data: {
	    	   id: id,
	    	   
	           }, 
	          success: function(msg){  
	        	  
	        	  var array = msg.split('|');
	        	 
				  var values = {
						    date: array[0],
						    description: array[1],
					
						  };
				
				
				  var table = document.getElementById("content_description");
				 
				  
				  Object.keys(values).forEach(function (key) {
				    table.getElementsByClassName(key + "Row")[0]
				      .getElementsByClassName("value")[0]
				      .textContent = values[key];
				  });
	          }
	     });
}
</script>

<main class="main">
         <!-- Breadcrumb-->
         <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            Components
          </li>   
          <li class="breadcrumb-item">
            <a href="library.jsp">Library</a>
          </li>   
        </ol>        
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
				<div class="col-sm-12 col-xl-12">
                
					<div class="card">
					  <div class="card-header">
						<i class="fa fa-align-justify"></i> Saved files
					  </div>
					  <div class="card-body">
						<div id="exampleAccordion" data-children=".item">
						  <div class="item">
							<a data-toggle="collapse" data-parent="#exampleAccordion" href="#exampleAccordion2019" aria-expanded="true" aria-controls="exampleAccordion2">Television Files</a>
							
							<div class="collapse show" id="exampleAccordion2019" role="tabpanel">
							<div class="row mt-3">
							
				<!-- Get the video files from the library table -->
                             <%
                                String userID = session.getAttribute("userID").toString();
								java.util.List<Library> list = Library.GetTVLibrarylList(userID);
	                           
	                            for(int i=0; i<list.size(); i++) { 
	                          	 
                            %>

                                    <div class="col-sm-12 col-lg-4"> 
                                        <div class="card">
                                            <div class="card-body text-center">
                                 
                                                <video controls > 
                                                
                                                <source src="../../<% out.print(list.get(i).getFileName()); %>" type="video/mp4">
                                                </video>
                                            </div>
                                            <div class="card-footer">
                                                <div class="row">
                                                    <div class="col-10"><strong>Content: </strong> <% out.print(list.get(i).getChannelName()); %></div>
                                                    <div class="col-2"><a class="icon-arrow-down-circle icons" href="../../<% out.print(list.get(i).getFileName()); %>" title="download" download="<% out.print(list.get(i).getFileName()); %>"></a></div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-10"><strong>Title: </strong> <% out.print(list.get(i).getClipName()); %></div>
                                                 <!--   <div class="col-2"><a class="fa fa-remove fa-lg" href="#removeFileModal" data-toggle="modal" title="REMOVE"></a></div> -->
                                                </div>
                                                <div class="row">
                                                    <div class="col-10"><strong>Duration: </strong><% out.print(list.get(i).getClipDuration()); %></div>
                                                    <div class="col-2">
                                                    <a class="icon-info icons" href="#infoModal" id="<% out.print(list.get(i).getId()); %>" onClick="getContentInfo(<% out.print(list.get(i).getId()); %>);" data-toggle="modal" title="INFO">
                                                    
                                                    </a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                  

                                
  <% } %>
  </div>
							</div>
						  </div>
						  
						  <div class="item">
							<a data-toggle="collapse" data-parent="#exampleAccordion" href="#exampleAccordion2018" aria-expanded="false" aria-controls="exampleAccordion2">Radio Files</a>
							<div class="collapse" id="exampleAccordion2018" role="tabpanel">
							  
							  <div class="row mt-3">
								
								
						<!-- Get The audio file from the library table -->		
						
						 <%
								java.util.List<Library> audiolist = Library.GetAudioLibrarylList(userID); 
	                           
	                            for(int i=0; i<audiolist.size(); i++) { 
	                          	 
                            %>
								<div class="col-sm-12 col-lg-4">
								
									<div class="card">
										<div class="card-body text-center">
											<audio controls> <source src="../../<% out.print(audiolist.get(i).getFileName()); %>" type="audio/mp3" preload="auto"></audio>
										</div>
										<div class="card-footer">
											<div class="row">
												<div class="col-10"><strong>Content:</strong> <% out.print(audiolist.get(i).getChannelName()); %></div>
												<div class="col-2"><a class="icon-arrow-down-circle icons" href="../../<% out.print(audiolist.get(i).getFileName()); %>" title="download" download="<% out.print(audiolist.get(i).getFileName()); %>"></a></div>
											</div>
											<div class="row">
												<div class="col-10"><strong>Title:</strong> <% out.print(audiolist.get(i).getClipName()); %></div>
										<!-- 		<div class="col-2"><a class="fa fa-remove fa-lg" href="#removeFileModal" data-toggle="modal" title="REMOVE"></a></div>  -->
											</div>
											<div class="row">
												<div class="col-10"><strong>Duration:</strong> <% out.print(audiolist.get(i).getClipDuration()); %></div>
												   <div class="col-2">
                                                    <a class="icon-info icons" href="#infoModal" id="<% out.print(audiolist.get(i).getId()); %>" onClick="getContentInfo(<% out.print(audiolist.get(i).getId()); %>);" data-toggle="modal" title="INFO">
                                                    
                                                    </a></div>
											</div>
										</div>
									</div>
								
								</div>

	  <% } %>							

								
							  </div>
							  
							</div>
						  </div>

						  
						</div>
					  </div>
					</div>
             
				</div>
          </div>
        </div>
      </main>
      
      <!-- Start AsideMenu View -->

	
	  <!-- End AsideMenu View --> 
    </div>
    

 <!-- Start Remove Modal -->
 	<div class="modal fade" id="removeFileModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-danger" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Video title</h4>
                  <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">X</span>
                  </button>
                </div>
                <div class="modal-body">
                    <p>Are you sure you want to <strong>remove</strong> this file?</p>
                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                  <button class="btn btn-danger" type="submit">Remove</button>
                </div>
              </div>
              <!-- /.modal-content-->
            </div>
            <!-- /.modal-dialog-->
          </div>
 <!-- End Remove Modal -->
 
  <!-- Start Info Modal -->
 	<div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-primary" role="document">
            <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Info</h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">X</span>
                </button>
            </div>
            <div class="modal-body">
                
              <table id="content_description" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
									
										<tbody>
										
											 <tr class="dateRow">
												<td><strong> Date</strong></td>			
												<td colspan='2' class="value">
													
												</td>
											</tr>
											<tr class="descriptionRow">
												<td><strong> Content Description</strong></td>			
												<td colspan='2' class="value">
													
												</td>
											</tr>


											
										</tbody>
			                    </table>  
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
            </div>
            </div>
            <!-- /.modal-content-->
        </div>
        <!-- /.modal-dialog-->
    </div>
 <!-- End Info Modal -->

<!-- Start Footer View -->
<jsp:include page="includes/footer.jsp" />
<!-- End Footer View -->

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
