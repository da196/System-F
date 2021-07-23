<%
response.setHeader("Cache-control", "no-cache");
response.setHeader("Cache-control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expire",1);


if (session.getAttribute("userID") != null && session.getAttribute("roleID").equals("3") ) {
%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.configuration.*" %> 
<%@ page import="tcms.presentation.*" %>
<%@ page import="tcms.errorLogs.*" %>  
<%@ page import= "java.io.File" %>

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
function getZoneChannelList(header_name,zone,content_type){

	$('#ZoneChannelModal').modal({show:false});
	var header = header_name;
	var zone_id = zone; 
	var content_type_id = content_type;
	$.ajax({
	    type: "GET",
	      url: "actions/components/dashboard.jsp", //this is my servlet
	      dataType: "json",
	       data: {
	    	   zone_id: zone_id,
	    	   content_type_id: content_type_id
	           }, 
	          success: function(ZoneTVList){  
	        	  $('#ZoneChannelModal').modal({show:true});
	        		        	  
	          var s = '';
	          s += '<div class="modal-header">';
	          s += '<h4 class="modal-title">' + header + '</h4>';
	          s += '<button class="close" type="button" data-dismiss="modal" aria-label="Close">';
	          s += '<span aria-hidden="true">X</span>';
	          s += '</button>';
	          s += '</div>';
	          
	          s += '<div class="modal-body">';
	          s += '<div class="fresh-datatables">';
	          s += '<table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">';
	          s += '<thead>';
	          s += '<tr>';
	          s += '<th>Channel Name</th>';
	          s += '<th>Region</th>';
	          s += '<th>License Type</th>';
	          //s += '<th>News Item Description</th>';
	          //s += '<th>Duration Of News Item</th>';
	          //s += '<th>Action</th>';
	          s += '</tr>';
	          s += '</thead>';
	          s += '<tfoot>';
	          s += '<tr>';
	          s += '<th>Channel Name</th>';
	          s += '<th>Region</th>';
	          s += '<th>License Type</th>';
	          //s += '<th>News Item Description</th>';
	          //s += '<th>Duration Of News Item</th>';
	          //s += '<th>Action</th>';
	          s += '</tr>';
	          s += '</tfoot>';
	          s += '<tbody >';
	          $.each(ZoneTVList.data, function(index,ZoneTVList) {        
	             // alert(newsIndexCardList.channel_name+" -- "+newsIndexCardList.news_type+" -- "+ newsIndexCardList.news_item_description+" -- "+newsIndexCardList.news_item_duration+" -- "+newsIndexCardList.cdate)
	                s += '<tr>';
				    s += '<td>' + ZoneTVList.channel_name + '</td>';
				    s += '<td>' + ZoneTVList.region_name + '</td>';
					s += '<td>' + ZoneTVList.license_category_name + '</td>';
					//s += '<td>' + ZoneTVList.news_item_duration + '</td>';
					//s += '<td>' + ZoneTVList.cdate + '</td>';
					//s += '<td> <a href="#addEmployeeModal" id="' + newsIndexCardList.id + '" onClick="getApplicationInfo(' + newsIndexCardList.id + ');" class="edit" data-toggle="modal"> <i class="fa fa-eye"></i> </a> </td>';
					s += '</tr>';
	          });	
	      	
	          s += '</tbody>';
	          s += '</table>';
	          s += '</div>';
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
</script>
<!-- Start Main Content -->
<main class="main">
       
        <!-- Breadcrumb-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            <a href="dashboard.jsp">Dashboard</a>
          </li>      
        </ol>        
        <!-- Breadcrumb-->
            
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-6 col-lg-6">
                <div class="card text-white bg-info">
                  <div class="card-body pb-0">                    
                    <br>                    
                    <div style="height:90px; font-weight:bolder; font-size:40px;">
                    <i class="nav-icon icon-screen-desktop"></i>
                    TV Channels
					<span class="badge badge-light pull-right"> 
					<%
					String errorLogFile = Utility.getPath();
				 	File errorLogs = new File(errorLogFile);
				 	try{
						java.util.List<Dashboard> tvList = Dashboard.getChannelList(1);
						out.print(tvList.size());
				 	}catch(Exception er){
						er.printStackTrace();
						 ErrorLogsAppender.appendException("dashboard page - Dashboard.getChannelList()",er, errorLogs);
					}
					%>
					 </span>
                    </div>
                  </div>
                 
                </div>
              </div>
              <!-- /.col-->
              <div class="col-sm-6 col-lg-6">
                  <div class="card text-white bg-warning">
                    <div class="card-body pb-0">                    
                      <br>
                      <div style="height:90px; font-weight:bolder; font-size:40px;">
                      <i class="nav-icon icon-playlist"></i>
                      Radio Stations
                      <span class="badge badge-light pull-right"> 
							<%
							try{
								java.util.List<Dashboard> radioList = Dashboard.getChannelList(2);
								out.print(radioList.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getChannelList()",er, errorLogs);
							}
							%>
					 </span>
                    </div>
                    </div>
                   
                  </div>
                </div>
            </div>
            <!-- /.row-->
            <div class="card">
              <div class="card-body">
                <div class="row">
                  <div class="col-sm-5">
                    <h4 class="card-title mb-0">TANZANIA BROADCASTING SERVICE PROVIDERS</h4>
                    <div class="small text-muted">JAN - DEC 2020</div>
                  </div>
                  <!-- /.col-->
                  
                  <!-- /.col-->
                </div>
                <!-- /.row-->
                <div class="chart-wrapper" style="height:300px;margin-top:40px;">
                  <canvas class="chart" id="main-chart" height="300"></canvas>
                </div>
              </div>
              <div class="card-footer">
                <div class="row text-center">
                  <div class="col-sm-6 col-md mb-sm-2 mb-0">
                    <div class="text-muted">Television</div>
                    <div class="progress progress-xs mt-2">
                      <div class="progress-bar bg-success" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                      Television
                    </div>
                  </div>
                  <div class="col-sm-6 col-md mb-sm-2 mb-0">
                    <div class="text-muted">Radio</div>
                    <div class="progress progress-xs mt-2">
                      <div class="progress-bar bg-info" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.card-->
            <div class="row">
              <div class="col-sm-6 col-lg-3">
                <div class="brand-card">
                  <div class="brand-card-header bg-facebook">
                  <div style="height:90px; font-weight:bolder; font-size:25px; padding-top:35px; color:white;">
                    NORTHERN ZONE
                    </div>

                  </div>
                  
                   <a class="nav-link" data-toggle="tab" href="#settings" role="tab">
              			<i class="icon-screen-desktop pull-left"  style="color:red;" data-toggle="modal" onClick="getZoneChannelList('Northern Zone - TV Channels', 4, 1);"></i>
              			<i class="icon-playlist pull-right" data-toggle="modal" onClick="getZoneChannelList('Northern Zone - Radio Station', 4, 2);" ></i>
            		</a>
                  
                  
                  <div class="brand-card-body">
                    <div>
                      <div class="text-value">
                     	<%
							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("4", "1");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
						%>
                      </div>
                      <div class="text-uppercase text-muted small">TV Channels</div>
                    </div>
                    <div>
                      <div class="text-value">
                      <%
							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("4", "2");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
					 %>
                      </div>
                      <div class="text-uppercase text-muted small">Radio Stations</div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.col-->
              <div class="col-sm-6 col-lg-3">
                <div class="brand-card">
                  <div class="brand-card-header bg-twitter">
                  <div style="height:90px; font-weight:bolder; font-size:25px; padding-top:35px; color:white;">
                    SOUTHERN ZONE
                    </div>
                  </div>
       			    
                   <a class="nav-link" data-toggle="tab" href="#settings" role="tab">
              			<i class="icon-screen-desktop pull-left"  style="color:red;" data-toggle="modal" onClick="getZoneChannelList('Southern Highlands Zone - TV Channels', 5, 1);"></i>
              			<i class="icon-playlist pull-right" data-toggle="modal" onClick="getZoneChannelList('Southern Highlands Zone - Radio Station', 5, 2);" ></i>
            		</a>
            	            		
                  <div class="brand-card-body">
                    <div>
                      <div class="text-value">
                      <%
							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("5", "1");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
					 %>
                      
                      </div>
                      <div class="text-uppercase text-muted small">TV Channels</div>
                    </div>
                    <div>
                      <div class="text-value">
                      <%
							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("5", "2");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
					 %>
                      </div>
                      <div class="text-uppercase text-muted small">Radio Stations</div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.col-->
              <div class="col-sm-6 col-lg-3">
                <div class="brand-card">
                  <div class="brand-card-header bg-linkedin">
                   <div style="height:90px; font-weight:bolder; font-size:25px; padding-top:35px; color:white;">
                    EASTERN ZONE
                    </div>
                  </div>
                  
                 <a class="nav-link" data-toggle="tab" href="#settings" role="tab">
              			<i class="icon-screen-desktop pull-left"  style="color:red;" data-toggle="modal" onClick="getZoneChannelList('Eastern Zone - TV Channels', 2, 1);"></i>
              			<i class="icon-playlist pull-right" data-toggle="modal" onClick="getZoneChannelList('Eastern Zone - Radio Station', 2, 2);" ></i>
            		</a>
            		
                  <div class="brand-card-body">
                    <div>
                      <div class="text-value">
                      <%
							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("2", "1");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
					 %>
                      
                      </div>
                      <div class="text-uppercase text-muted small">
                      TV Channels
                      </div>
                    </div>
                    <div>
                      <div class="text-value">
                      <%
							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("2", "2");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
					 %>
                      </div>
                      <div class="text-uppercase text-muted small">
                      Radio Stations
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.col-->
              <div class="col-sm-6 col-lg-3">
                <div class="brand-card">
                  <div class="brand-card-header bg-google-plus">
                   <div style="height:90px; font-weight:bolder; font-size:25px; padding-top:35px; color:white;">
                    LAKE ZONE
                    </div>
                  </div>
                   <a class="nav-link" data-toggle="tab" href="#settings" role="tab">
              			<i class="icon-screen-desktop pull-left"  style="color:red;" data-toggle="modal" onClick="getZoneChannelList('Lake Zone - TV Channels', 3, 1);"></i>
              			<i class="icon-playlist pull-right" data-toggle="modal" onClick="getZoneChannelList('Lake Zone - Radio Station', 3, 2);" ></i>
            		</a>
                  <div class="brand-card-body">
                    <div>
                      <div class="text-value">
                      <%
							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("3", "1");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
					 %>
                      </div>
                      <div class="text-uppercase text-muted small">TV Channels</div>
                    </div>
                    <div>
                      <div class="text-value">
                      <%
							try{
								java.util.List<Dashboard> list = Dashboard.getZoneChannelList("3", "2");
								out.print(list.size());
						 	}catch(Exception er){
								er.printStackTrace();
								 ErrorLogsAppender.appendException("dashboard page - Dashboard.getZoneChannelList()",er, errorLogs);
							}
					 %>
                      </div>
                      <div class="text-uppercase text-muted small">Radio Stations</div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.col-->
            </div>
            <!-- /.row-->
            <!-- /.row-->
          </div>
        </div>
      </main>
      
      	<!-- Start AsideMenu View -->

      
		<!-- End AsideMenu View -->
		
    </div>

    
<!-- Start footer View -->
<jsp:include page="includes/footer.jsp" />
<!-- End footer View -->

<!-- End ContentBody -->

<!-- Start Northern Television Modal-->

        <div class="modal fade" id="ZoneChannelModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-primary modal-lg" role="document">
            <div class="modal-content" style="width:1200px; margin-left:-150px;">

			<div  id="result"></div>		  
            </div>
            <!-- /.modal-content-->
          </div>
          <!-- /.modal-dialog-->
        </div>
        <!-- /.end-add-user-modal-->
      
       
<!-- End Northern Television Modal --> 

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
