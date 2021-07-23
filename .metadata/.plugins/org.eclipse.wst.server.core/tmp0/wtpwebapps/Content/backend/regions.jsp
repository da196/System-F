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
            Settings
          </li>   
          <li class="breadcrumb-item">
            <a href="regions.jsp">Regions</a>
          </li>   
        </ol>        
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> List of Regions         
                    <div class="card-header-actions">
                    <button class="btn btn-pill btn-block btn-primary mb-1" type="button" data-toggle="modal" data-target="#addRegionsDetailsModal">
                    <i class="fa fa-plus"></i>
                    <b>Add Region</b>
                     </button>                    
                    </div>
                  </div>
                  <div class="card-body">
                   
                    <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
										<thead>
											<tr>
												<th>Region</th>
												<th>Zone</th>
												<th class="disabled-sorting">Actions</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
                        <th>Region</th>
												<th>Zone</th>
												<th class="disabled-sorting">Actions</th>
											</tr>
										</tfoot>
										<tbody>										
						          <!-- Start of the Table Body -->	
									  
											<tr>										
												<td>DAR-ES-SALAAM</td>
												<td>Eastern Zone</td>
												<td>                       
												<a class="btn btn-info" href="#editRegionsDetailsModal" data-toggle="modal" title="EDIT">
                          <i class="fa fa-edit"></i>
                        </a>
                        <a class="btn btn-danger"  href="#deleteRegionModal" data-toggle="modal"  title="DELETE">
                          <i class="fa fa-trash-o"></i>
                        </a>
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
    

   <!-- Start Add Region Form -->
 <div class="modal fade" id="addRegionsDetailsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-primary" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">New Region</h4>
                  <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">X</span>
                  </button>
                </div>
                <div class="modal-body">
                <div class="card-body">
                    <form action="" method="post">
                      <div class="form-group">
                        <label for="role-name"><b>Region</b></label>
                        <input class="form-control" id="region" type="text" name="region" placeholder="Enter Region..">                      
                      </div>
                      <div class="form-group">
                        <label for="path-name"><b>Zone Name</b></label>
                        <select class="form-control" id="zone-name">
                          <option  value="">-- Zones --</option>
                          <option  value="Eastern Zone">Eastern Zone</option>
                          <option  value="Northern Zone">Northern Zone</option>
                          <option  value="Central Zone">Central Zone</option>
                          <option  value="Southern Zone">Southern Zone</option>
                          <option  value="Western Zone">Western Zone</option>
                        </select> 
                      </div>
                    </form>
                    </div>
                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                  <button class="btn btn-primary" type="button">Save</button>
                </div>
              </div>
              <!-- /.modal-content-->
            </div>
            <!-- /.modal-dialog-->
          </div>
  <!-- End Add Region Form -->


   <!-- Start Edit Region Form -->
 <div class="modal fade" id="editRegionsDetailsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-primary" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Edit Region</h4>
                  <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">X</span>
                  </button>
                </div>
                <div class="modal-body">
                <div class="card-body">
                    <form action="" method="post">
                      <div class="form-group">
                        <label for="role-name"><b>Region</b></label>
                        <input class="form-control" id="region" type="text" name="region" placeholder="Enter Region..">                      
                      </div>
                      <div class="form-group">
                        <label for="path-name"><b>Zone Name</b></label>
                        <select class="form-control" id="zone-name">
                          <option  value="">-- Zones --</option>
                          <option  value="Eastern Zone">Eastern Zone</option>
                          <option  value="Northern Zone">Northern Zone</option>
                          <option  value="Central Zone">Central Zone</option>
                          <option  value="Southern Zone">Southern Zone</option>
                          <option  value="Western Zone">Western Zone</option>
                        </select> 
                      </div>
                    </form>
                    </div>
                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                  <button class="btn btn-primary" type="button">Save</button>
                </div>
              </div>
              <!-- /.modal-content-->
            </div>
            <!-- /.modal-dialog-->
          </div>
  <!-- End Edit Region Form -->

<!-- Start Delete Region Modal -->
  <div class="modal fade" id="deleteRegionModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-danger" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Delete Region</h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">X</span>
                </button>
              </div>
              <div class="modal-body">
                <p>Are you sure you want to <b>delete</b> this Region ?</p>
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
<!-- End Delete Region Modal -->

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
