<!-- Start header -->

<jsp:include page="includes/header.jsp" />
<!-- End header -->

<!-- Start Top header View -->
<jsp:include page="includes/topView.jsp" />
<!-- End Top Header View -->

<!-- Start SideBar View -->

<jsp:include page="includes/sideView.jsp" />
<!-- End SideBar View -->

      <main class="main">
         <!-- Breadcrumb-->
         <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            Components
          </li>   
          <li class="breadcrumb-item">
            <a href="alert.php">Alert</a>
          </li>   
        </ol>        
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> Live Status of Channels/Stations            
                  </div>
                  <div class="card-body">                  
                    <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
										<thead>
											<tr>
                                                <th>Source</th>
                                                <th>Status</th>
												<th>Description</th>
												
											</tr>
										</thead>
										<tfoot>
											<tr>
                                                <th>Source</th>
                                                <th>Status</th>
												<th>Description</th>
											</tr>
										</tfoot>
										<tbody>										
						          <!-- Start of the Table Body -->	
									  
											<tr>										
												<td>ITV</td>
												<td> <span class="badge badge-success" style="width:15px; height:17px;">  </span></td>
												<td>                       
                                                Video and Audio OK
												</td>
                                            </tr>	
                                            
                                            <tr>										
												<td>EFM</td>
												<td><span class="badge badge-danger" style="width:15px; height:17px;">  </span></td>
												<td>                       
                                                Video and Audio not OK
												</td>
                                            </tr>
                                            
                                            <tr>										
												<td>WASAFI TV</td>
												<td><span class="badge badge-warning" style="width:15px; height:17px;"> </span></td>
												<td>                       
                                                Video OK but Audio is not OK
												</td>
                                            </tr>
                                            
                                            <tr>										
												<td>RADIO ONE</td>
												<td><span class="badge badge-danger" style="width:15px; height:17px;"> </span></td>
												<td>                       
                                                Audio is not OK
												</td>
											</tr>
											<!-- End of the Table Body -->
										   </tbody>
									    </table>                     
                    

                    
                </div>
                
              </div>
             
            </div>
          </div>
        </div>
      </main>
<!-- Start AsideMenu View -->
<jsp:include page="includes/asideMenuView.jsp" />
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
