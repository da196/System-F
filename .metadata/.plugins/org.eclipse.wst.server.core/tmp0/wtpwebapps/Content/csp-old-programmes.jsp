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

          <div class="card shadow mb-4">
            <div class="card-header py-3">
                <div class="row">
                    <h6 class="m-0 font-weight-bold text-primary col-9">2019 Q4, Monday Prgms</h6>
                </div>
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

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

    
    <!-- Info Programme Modal-->
   <div class="modal fade" id="infoProgrammeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Programme Info</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                      <label class="col-4" for="programme">Programme name:</label>
                      <div class="col-8">Burudani</div>
                    </div>

                    <div class="row">
                      <label class="col-4" for="start-time">Start time:</label>
                      <div class="col-8">00:00 - 04:00</div>
                    </div>

                    <div class="row">
                      <label class="col-4" for="end-time">Main Objective:</label>
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

  <!-- Start Footer -->
  <jsp:include page="csp-includes/footer.jsp" />
  <!-- End Footer -->
</body>

</html>
