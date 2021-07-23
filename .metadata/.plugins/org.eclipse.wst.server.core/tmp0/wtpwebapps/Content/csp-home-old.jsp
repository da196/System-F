<!-- Start Header -->
<jsp:include page="csp-includes/header.jsp" />
<!-- End Header -->

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Start Sidebar -->
    <jsp:include page="csp-includes/sidebar.jsp" />
    <!-- End Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Start Topbar -->
        <jsp:include page="csp-includes/csp-home-topbar.jsp" />
        <!-- End Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

		  <div class="d-flex justify-content-end">
            <button class="btn btn-sm btn-success rounded-pill" data-toggle="modal" data-target="#addGuideModal" style="position: fixed; bottom: 2em; z-index: 1;"><i class="fas fa-plus"></i> Publish</button>
          </div>
          
          <div class="card shadow mb-4">
            <div class="card-header py-3">
                <!--<div class="clearfix"> -->
                <div class="d-flex justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Monday Programmes</h6>
                    
                    <button class=" btn btn-sm btn-primary rounded-pill" data-toggle="modal" data-target="#addProgrammeModal"><i class="fas fa-plus"></i> Add programme</button>
                </div>
                <!--</div> -->
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable"  width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Time</th>
                                <th>Name</th>
                                <th>Main Objective</th>
                                <th class="disabled-sorting">Actions</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Time</th>
                                <th>Name</th>
                                <th>Main Objective</th>
                                <th class="disabled-sorting">Actions</th>
                            </tr>
                        </tfoot>
                            <tbody>										
                            <!-- Start of the Table Body -->	
                            
                                <tr>										
                                    <td>00:00 - 04:00</td>
                                    <td>Burudani</td>
                                    <td>Entertainment</td>
                                    <td>
                                        <a href="#infoProgrammeModal" class="btn btn-sm btn-circle btn-info" data-toggle="modal" title="INFO">
                                            <i class="fas fa-info"></i>
                                        </a>                                                                 
                                        <a class="btn btn-primary btn-circle btn-sm" href="#editProgrammeModal" data-toggle="modal" title="EDIT">
                                            <i class="fas fa-pencil-alt"></i>
                                        </a>
                                        <a class="btn btn-danger btn-circle btn-sm" href="#deleteProgrammeModal" data-toggle="modal"  title="DELETE">
                                            <i class="fas fa-times"></i>
                                        </a>
                                    </td>
                                </tr>	

                                <tr>										
                                    <td>04:00 - 06:00</td>
                                    <td>Kokoriko</td>
                                    <td>Briefings</td>
                                    <td>
                                        <a href="#infoProgrammeModal" class="btn btn-sm btn-circle btn-info" data-toggle="modal" title="INFO">
                                            <i class="fas fa-info"></i>
                                        </a>                                                                 
                                        <a class="btn btn-primary btn-circle btn-sm" href="#editProgrammeModal" data-toggle="modal" title="EDIT">
                                            <i class="fas fa-pencil-alt"></i>
                                        </a>
                                        <a class="btn btn-danger btn-circle btn-sm" href="#deleteProgrammeModal" data-toggle="modal"  title="DELETE">
                                            <i class="fas fa-times"></i>
                                        </a>
                                    </td>
                                </tr>	

                                <tr>										
                                    <td>06:00 - 08:00</td>
                                    <td>Morning break-fast</td>
                                    <td>News</td>
                                    <td>
                                        <a href="#infoProgrammeModal" class="btn btn-sm btn-circle btn-info" data-toggle="modal" title="INFO">
                                            <i class="fas fa-info"></i>
                                        </a>                                                                 
                                        <a class="btn btn-primary btn-circle btn-sm" href="#editProgrammeModal" data-toggle="modal" title="EDIT">
                                            <i class="fas fa-pencil-alt"></i>
                                        </a>
                                        <a class="btn btn-danger btn-circle btn-sm" href="#deleteProgrammeModal" data-toggle="modal"  title="DELETE">
                                            <i class="fas fa-times"></i>
                                        </a>
                                    </td>
                                </tr>	

                                <tr>										
                                    <td>08:00 - 10:00</td>
                                    <td>Kumekucha Africa</td>
                                    <td>Educating</td>
                                    <td>
                                        <a href="#infoProgrammeModal" class="btn btn-sm btn-circle btn-info" data-toggle="modal" title="INFO">
                                            <i class="fas fa-info"></i>
                                        </a>                                                                 
                                        <a class="btn btn-primary btn-circle btn-sm" href="#editProgrammeModal" data-toggle="modal" title="EDIT">
                                            <i class="fas fa-pencil-alt"></i>
                                        </a>
                                        <a class="btn btn-danger btn-circle btn-sm" href="#deleteProgrammeModal" data-toggle="modal"  title="DELETE">
                                            <i class="fas fa-times"></i>
                                        </a>
                                    </td>
                                </tr>	

                                <tr>										
                                    <td>10:00 - 12:00</td>
                                    <td>Muziki</td>
                                    <td>Entertainment</td>
                                    <td>
                                        <a href="#infoProgrammeModal" class="btn btn-sm btn-circle btn-info" data-toggle="modal" title="INFO">
                                            <i class="fas fa-info"></i>
                                        </a>                                                                 
                                        <a class="btn btn-primary btn-circle btn-sm" href="#editProgrammeModal" data-toggle="modal" title="EDIT">
                                            <i class="fas fa-pencil-alt"></i>
                                        </a>
                                        <a class="btn btn-danger btn-circle btn-sm" href="#deleteProgrammeModal" data-toggle="modal"  title="DELETE">
                                            <i class="fas fa-times"></i>
                                        </a>
                                    </td>
                                </tr>	

                                <tr>										
                                    <td>12:00 - 12:30</td>
                                    <td>Habari</td>
                                    <td>News</td>
                                    <td>
                                        <a href="#infoProgrammeModal" class="btn btn-sm btn-circle btn-info" data-toggle="modal" title="INFO">
                                            <i class="fas fa-info"></i>
                                        </a>                                                                 
                                        <a class="btn btn-primary btn-circle btn-sm" href="#editProgrammeModal" data-toggle="modal" title="EDIT">
                                            <i class="fas fa-pencil-alt"></i>
                                        </a>
                                        <a class="btn btn-danger btn-circle btn-sm" href="#deleteProgrammeModal" data-toggle="modal"  title="DELETE">
                                            <i class="fas fa-times"></i>
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
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

    <!-- Add Programme Modal-->
   <div class="modal fade" id="addProgrammeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Create new Programme?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">x</span>
                </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                      <label for="programme-name">Programme name</label>
                      <input type="text" class="form-control" id="programme-name" required>
                    </div>

                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="start-time">Start time</label>
                        <input type="time" class="form-control" id="start-time" required>
                      </div>

                      <div class="form-group col-md-6">
                        <label for="end-time">End time</label>
                        <input type="time" class="form-control" id="end-time" required>
                      </div>
                    </div>

                    <div class="form-row">
                      <div class="form-group col-6">
                        <label>Main Objective</label>
                        <select class="selectpicker" multiple>
                          <option>Burudani</option>
                          <option>Kuelimisha</option>
                          <option>Kuonya</option>
                        </select>
                      </div>

                      <div class="form-group col-6">
                        <label>Target Audience</label>
                        <select class="selectpicker" multiple>
                          <option>Adults</option>
                          <option>Children</option>
                          <option>Women</option>
                        </select>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="programme-name">Expectations</label>
                      <textarea class="form-control" id="programme-description" rows="2"></textarea>
                    </div>

                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                  <a class="btn btn-primary" href="login.html">Submit</a>
                </div>
            </div>
        </div>
    </div>
    <!-- End Add Programme Modal-->

    <!-- Add Programme Modal-->
   <div class="modal fade" id="addGuideModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Publish?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">x</span>
                </button>
                </div>
                <div class="modal-body">
                 <label>Choose Quarter to publish your Program Line-Up</label>
                <select class="form-control">
                  <option>Quarter 1 (July - September)</option>
                  <option>Quarter 2 (October - December)</option>
                  <option>Quarter 3 (January - March)</option>
                  <option>Quarter 4 (April - June)</option>
                </select>
                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                  <a class="btn btn-success" href="#">Yes</a>
                </div>
            </div>
        </div>
    </div>
    <!-- End Add Programme Modal-->

    <!-- Edit Programme Modal-->
   <div class="modal fade" id="editProgrammeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Programme?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">x</span>
                </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                      <label for="programme-name">Programme name</label>
                      <input type="text" class="form-control" id="programme-name" value="Burudani" required>
                    </div>

                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="start-time">Start time</label>
                        <input type="time" class="form-control" id="start-time" value="00:00" required>
                      </div>

                      <div class="form-group col-md-6">
                        <label for="end-time">End time</label>
                        <input type="time" class="form-control" id="end-time" value="04:00" required>
                      </div>
                    </div>
                    
                    <div class="form-row">
                      <div class="form-group col-6">
                        <label>Main Objective</label>
                        <select class="selectpicker" multiple>
                          <option>Burudani</option>
                          <option>Kuelimisha</option>
                          <option>Kuonya</option>
                        </select>
                      </div>

                      <div class="form-group col-6">
                        <label>Target Audience</label>
                        <select class="selectpicker" multiple>
                          <option>Adults</option>
                          <option>Children</option>
                          <option>Women</option>
                        </select>
                      </div>
                    </div>

                    <div class="form-group">
                      <label for="programme-name">Expectations</label>
                      <textarea class="form-control" id="programme-description" rows="2"></textarea>
                    </div>

                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                  <a class="btn btn-primary" href="login.html">Submit</a>
                </div>
            </div>
        </div>
    </div>
    <!-- End Edit Programme Modal-->
    
    <!-- Info Programme Modal-->
   <div class="modal fade" id="infoProgrammeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Programme Info</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">x</span>
                </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                      <label class="col-4">Programme name:</label>
                      <div class="col-8" style="text-decoration: none;">Burudani</div>
                    </div>

                    <div class="row">
                      <label class="col-4">Start time:</label>
                      <div class="col-8">00:00</div>
                    </div>

                    <div class="row">
                      <label class="col-4" for="end-time">End time:</label>
                      <div class="col-8">04:00</div>
                    </div>

                    <div class="row">
                      <label class="col-4" for="end-time">Main objective:</label>
                      <div class="col-8 mb-0">Kuelimisha, Kuburudisha, Kuonya</div>
                    </div>

                    <div class="row">
                      <label class="col-4" for="end-time">Target Audience:</label>
                      <div class="col-8 mb-0">Adults, Children, Women</div>
                    </div>

                    <div class="row">
                      <label class="col-4" for="programme">Expectations:</label>
                      <div class="col-8">It has a 6-inch screen size (with 1080p+ resolution), the Snapdragon 630 chipset at the helm, 3GB of RAM, 64GB of expandable storage, a dual rear camera system (13 MP wide + 5 MP depth sensor), an 8 MP selfie cam, and a 2,870 mAh battery with 18W fast charging. It runs Android 9 Pie.</div>
                    </div>

                </div>
                <div class="modal-footer">
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Info Programme Modal-->

    <!-- Delete Programme Modal-->
   <div class="modal fade" id="deleteProgrammeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-danger" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Delete?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">x</span>
                </button>
                </div>
                <div class="modal-body">Are you sure you want to <strong>delete</strong> "Burudani" ?</div>
                <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-danger" href="login.html">Delete</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Delete Programme Modal-->

    <!-- Logout Modal-->
   <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">x</span>
                </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Logout Modal-->

	<!-- Start Footer -->
	<jsp:include page="csp-includes/footer.jsp" />
	<!-- End Footer -->

</body>

</html>
