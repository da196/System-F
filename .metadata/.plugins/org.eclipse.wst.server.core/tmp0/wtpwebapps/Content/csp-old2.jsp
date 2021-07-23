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

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-2 static-top shadow">

        <!-- Sidebar Toggle (Topbar) -->
        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
        	<i class="fa fa-bars"></i>
        </button>

        <!-- Topbar Navbar -->
        <ul class="navbar-nav ml-auto">

        <!-- Nav Item - User Information -->
        <li class="nav-item dropdown no-arrow">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="mr-2 d-none d-lg-inline text-gray-600 small">user@mail.com</span>
            <span class="rounded-circle my-5 text-gray-400"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i></span>
            </a>
            <!-- Dropdown - User Information -->
            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
            <a class="dropdown-item" href="#">
                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                Profile
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                Logout
            </a>
            </div>
        </li>

        </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

			<!-- <div class="row"> -->
			
				<div class="card col-2 my-5 ml-0 px-0" style="position: fixed; z-index: 1">
					
						<div class="card-header">
							<!--<div class="clearfix"> -->
							<div class="d-flex justify-content-between">
								<h6 class="m-0 font-weight-bold text-primary">Search</h6>
							</div>
							<!--</div> -->
						</div>
						
						<div class="card-body">
						
							<form>
							
								<div class="form-group">
									<label for="programmeQuarter">
										Programme quarter
									</label>
									<select class="form-control">
										<option value="">Choose quarter...</option>
										<option>2019 Quarter 1 (July - September)</option>
						                <option>2019 Quarter 2 (October - December)</option>
						                <option>2019 Quarter 3 (January - March)</option>
						                <option>2019 Quarter 4 (April - June)</option>
									</select>
								</div>

								<div class="form-group">
									<label for="day">
										Day
									</label>
									<select class="form-control">
										<option class="dropdown-item" >Select day...</option>
										<option class="dropdown-item" value="">Monday</option>
										<option class="dropdown-item" value="">Tuesday</option>
										<option class="dropdown-item" value="">Wednesday</option>
										<option class="dropdown-item" value="">Thursday</option>
										<option class="dropdown-item" value="">Friday</option>
										<option class="dropdown-item" value="">Saturday</option>
										<option class="dropdown-item" value="">Sunday</option>
									</select>
								</div>
								
								<div>
									<button class="btn btn-primary btn-user btn-block" type="submit">Search</button>
								</div>
							
							</form>
						</div>
					</div>
					
				<div class="d-flex justify-content-end"> 
			
			
					<div class="card shadow mb-2 mr-0 px-0 col-9">
						<div class="card-header py-3">
							<!--<div class="clearfix"> -->
							<div class="d-flex justify-content-between">
								<h6 class="m-0 font-weight-bold text-primary">Monday Programmes</h6>
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
											<th>Target Audience</th>
											<th>Expectations</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th>Time</th>
											<th>Name</th>
											<th>Main Objective</th>
											<th>Target Audience</th>
											<th>Expectations</th>
										</tr>
									</tfoot>
										<tbody>										
										<!-- Start of the Table Body -->	
										
											<tr>										
												<td>00:00 - 04:00</td>
												<td>Burudani</td>
												<td>Entertainment</td>
												<td>Adults, Children</td>
												<td>Kuburudisha na kufurahisha Jamii</td>
											</tr>	

											<tr>										
												<td>04:00 - 06:00</td>
												<td>Kokoriko</td>
												<td>Briefings</td>
												<td>Adults, Children, Elders</td>
												<td>Kujuza wananchi juu ya matukio mbalimbali ya ndani ya nchi</td>
											</tr>	

											<tr>										
												<td>06:00 - 08:00</td>
												<td>Morning break-fast</td>
												<td>News</td>
												<td>Adults, Children, Elders</td>
												<td>Kujuza wananchi juu ya matukio mbalimbali ya ndani ya nchi</td>
											</tr>	

											<tr>										
												<td>08:00 - 10:00</td>
												<td>Kumekucha Africa</td>
												<td>Educating</td>
												<td>Adults, Children, Elders</td>
												<td>Kujuza wananchi juu ya matukio mbalimbali ya ndani ya nchi</td>
											</tr>	

											<tr>										
												<td>10:00 - 12:00</td>
												<td>Muziki</td>
												<td>Entertainment</td>
												<td>Adults, Children, Elders</td>
												<td>Kujuza wananchi juu ya matukio mbalimbali ya ndani ya nchi</td>
											</tr>	

											<tr>										
												<td>12:00 - 12:30</td>
												<td>Habari</td>
												<td>News</td>
												<td>Adults, Children, Elders</td>
												<td>Kujuza wananchi juu ya matukio mbalimbali ya ndani ya nchi</td>
											</tr>	

																								
											<!-- End of the Table Body -->
										</tbody>
								</table>
							</div>
						</div>
					</div>
				</div> 
			<!--</div> -->
        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->



  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>



    <!-- Logout Modal-->
   <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
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