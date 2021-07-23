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
            <a href="pathFiles.jsp">PathFiles</a>
          </li>   
        </ol>        
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> List of Path Files          
                    <div class="card-header-actions">
                    <button class="btn btn-pill btn-block btn-primary mb-1" type="button" data-toggle="modal" data-target="#addPathFilesDetailsModal"><i class="fa fa-plus"></i> <b>Add Path File</b></button>                    
                    </div>
                  </div>
                  <div class="card-body">
                   
                    <table id="datatables" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%">
										<thead>
											<tr>
												<th>Channel/Station</th>
												<th>Path to the Files</th>
												<th class="disabled-sorting">Actions</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
                      <th>Channel/Station</th>
												<th>Path to the Files</th>
												<th class="disabled-sorting">Actions</th>
											</tr>
										</tfoot>
										<tbody>										
						          <!-- Start of the Table Body -->	
									  
											<tr>										
												<td>ITV Media</td>
												<td>E:/TCMS/Channels/Dar/ITV/</td>
												<td>                       
												<a class="btn btn-info" href="#editPathFilesDetailsModal" data-toggle="modal" title="EDIT">
                          <i class="fa fa-edit"></i>
                        </a>
                        <a class="btn btn-danger" href="#deletePathFilesModal" data-toggle="modal" title="DELETE">
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
<<jsp:include page="includes/asideMenuView.jsp" />
<!-- End AsideMenu View -->     
    </div>
    

   <!-- Start Add Path Files Form -->
 <div class="modal fade" id="addPathFilesDetailsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-primary" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">New Path File</h4>
                  <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">X</span>
                  </button>
                </div>
                <div class="modal-body">
                <div class="card-body">
                    <form action="" method="post">
                      <div class="form-group">
                        <label for="role-name"><strong>Channels / Stations</strong></label>
                        <select class="form-control" id="channels">
                          <option  value="">-- Channels/Stations</option>
                          <option  value="ITV">ITV</option>
                          <option  value="WASAFI">WASAFI</option>
                          <option  value="CLOUDS">CLOUDS</option>
                          <option  value="EFM">EFM</option> 
                        </select>                       
                      </div>
                      <div class="form-group">
                        <label for="path-name"><strong>Path Name</strong></label>
                        <input class="form-control" id="path-name" type="text" name="path-name" placeholder="Enter Path Name..">
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
  <!-- End Add Path Files Form -->


  <!-- Start Edit Path Files Form -->
  <div class="modal fade" id="editPathFilesDetailsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-primary" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Edit Path File</h4>
                  <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">X</span>
                  </button>
                </div>
                <div class="modal-body">
                <div class="card-body">
                    <form action="" method="post">
                      <div class="form-group">
                        <label for="role-name"><strong>Channels / Stations</strong></label>
                        <select class="form-control" id="channels">
                          <option  value="">-- Channels/Stations</option>
                          <option  value="ITV">ITV</option>
                          <option  value="WASAFI">WASAFI</option>
                          <option  value="CLOUDS">CLOUDS</option>
                          <option  value="EFM">EFM</option> 
                        </select>                       
                      </div>
                      <div class="form-group">
                        <label for="path-name"><strong>Path Name</strong></label>
                        <input class="form-control" id="path-name" type="text" name="path-name" placeholder="Enter Path Name..">
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
  <!-- End Edit Path Files Form -->


  <!-- Start Delete Path Files Modal -->
  <div class="modal fade" id="deletePathFilesModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-danger" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Delete Path File</h4>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">X</span>
                </button>
              </div>
              <div class="modal-body">
                <p>Are you sure you want to <b>delete</b> this Path File ?</p>
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
<!-- End Delete Path Files Modal -->

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
