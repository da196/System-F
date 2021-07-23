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
          <a href="roles.jsp">Roles</a>
          </li>  
          <li class="breadcrumb-item">
            Permissions
          </li>   
        </ol>        
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> Assign Permissions To Role [Administrator]
                  </div>
                  <div class="card-body">

                <div class="row">
					<div class="col-sm-12 col-lg-4">
					  <div class="card">
						<div class="card-header form-group">
                            <input id="jsCheckAll" class="jsCheckAll" type="checkbox" value="">
							<strong> User permissions</strong>
						</div>
						  <div class="card-body">
							<div class="form-group row">
								<div class="col-md-9 col-form-label">
									<div class="form-check checkbox">
									<input class="checkitem form-check-input" id="check1" type="checkbox" value="">
									<label class="form-check-label" for="check1">Can view user</label>
									</div>
									<div class="form-check checkbox">
									<input class="checkitem form-check-input" id="check3" type="checkbox" value="">
									<label class="form-check-label" for="check3">Can create user</label>
									</div>
									<div class="form-check checkbox">
									<input class="checkitem form-check-input" id="check2" type="checkbox" value="">
									<label class="form-check-label" for="check2">Can edit user</label>
									</div>
									<div class="form-check checkbox">
									<input class="checkitem form-check-input" id="check3" type="checkbox" value="">
									<label class="form-check-label" for="check3">Can delete user</label>
									</div>
								</div>
							</div>
							</div>
						
					  </div>

					</div>         
                    
					<div class="col-sm-12 col-lg-4">
						  <div class="card">
							<div class="card-header form-group">
                                <input id="jsCheckAll" class="jsCheckAll" type="checkbox" value="">
								<strong> Channel permissions</strong>
							</div>
							  <div class="card-body">
								<div class="form-group row">
									<div class="col-md-9 col-form-label">
										<div class="form-check checkbox">
										<input class="checkitem form-check-input" id="check1" type="checkbox" value="">
										<label class="form-check-label" for="check1">Can view channel</label>
										</div>
										<div class="form-check checkbox">
										<input class="checkitem form-check-input" id="check3" type="checkbox" value="">
										<label class="form-check-label" for="check3">Can create channel</label>
										</div>
										<div class="form-check checkbox">
										<input class="checkitem form-check-input" id="check2" type="checkbox" value="">
										<label class="form-check-label" for="check2">Can edit channel</label>
										</div>
										<div class="form-check checkbox">
										<input class="checkitem form-check-input" id="check3" type="checkbox" value="">
										<label class="form-check-label" for="check3">Can delete channel</label>
										</div>
									</div>
								</div>
								</div>
							
						  </div>

					  </div>
					  
					  <div class="col-sm-12 col-lg-4">
						  <div class="card">
							<div class="card-header form-group">
                                <input id="jsCheckAll" class="jsCheckAll" type="checkbox" value="">
								<strong> Region permissions</strong>
							</div>
							  <div class="card-body">
								<div class="form-group row">
									<div class="col-md-9 col-form-label">
										<div class="form-check checkbox">
										<input class="form-check-input" id="check1" type="checkbox" value="">
										<label class="form-check-label" for="check1">Can view region</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check3" type="checkbox" value="">
										<label class="form-check-label" for="check3">Can create region</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check2" type="checkbox" value="">
										<label class="form-check-label" for="check2">Can edit region</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check3" type="checkbox" value="">
										<label class="form-check-label" for="check3">Can delete region</label>
										</div>
									</div>
								</div>
								</div>
							
						  </div>

					  </div>

                  </div>

				<div class="row">
					<div class="col-sm-12 col-lg-4">
					  <div class="card">
						<div class="card-header form-group">
                            <input id="jsCheckAll" class="jsCheckAll" type="checkbox" value="">
							<strong> User permissions</strong>
						</div>
						  <div class="card-body">
							<div class="form-group row">
								<div class="col-md-9 col-form-label">
									<div class="form-check checkbox">
									<input class="form-check-input" id="check1" type="checkbox" value="">
									<label class="form-check-label" for="check1">Can view user</label>
									</div>
									<div class="form-check checkbox">
									<input class="form-check-input" id="check3" type="checkbox" value="">
									<label class="form-check-label" for="check3">Can create user</label>
									</div>
									<div class="form-check checkbox">
									<input class="form-check-input" id="check2" type="checkbox" value="">
									<label class="form-check-label" for="check2">Can edit user</label>
									</div>
									<div class="form-check checkbox">
									<input class="form-check-input" id="check3" type="checkbox" value="">
									<label class="form-check-label" for="check3">Can delete user</label>
									</div>
								</div>
							</div>
							</div>
						
					  </div>

					</div>         
                    
					<div class="col-sm-12 col-lg-4">
						  <div class="card">
							<div class="card-header form-group">
                                <input id="jsCheckAll" class="jsCheckAll" type="checkbox" value="">
								<strong> Channel permissions</strong>
							</div>
							  <div class="card-body">
								<div class="form-group row">
									<div class="col-md-9 col-form-label">
										<div class="form-check checkbox">
										<input class="form-check-input" id="check1" type="checkbox" value="">
										<label class="form-check-label" for="check1">Can view channel</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check3" type="checkbox" value="">
										<label class="form-check-label" for="check3">Can create channel</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check2" type="checkbox" value="">
										<label class="form-check-label" for="check2">Can edit channel</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check3" type="checkbox" value="">
										<label class="form-check-label" for="check3">Can delete channel</label>
										</div>
									</div>
								</div>
								</div>
							
						  </div>

					  </div>
					  
					  <div class="col-sm-12 col-lg-4">
						  <div class="card">
							<div class="card-header form-group">
                                <input id="jsCheckAll" class="jsCheckAll" type="checkbox" value="">
								<strong> Region permissions</strong>
							</div>
							  <div class="card-body">
								<div class="form-group row">
									<div class="col-md-9 col-form-label">
										<div class="form-check checkbox">
										<input class="form-check-input" id="check1" type="checkbox" value="">
										<label class="form-check-label" for="check1">Can view region</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check3" type="checkbox" value="">
										<label class="form-check-label" for="check3">Can create region</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check2" type="checkbox" value="">
										<label class="form-check-label" for="check2">Can edit region</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check3" type="checkbox" value="">
										<label class="form-check-label" for="check3">Can delete region</label>
										</div>
									</div>
								</div>
								</div>
							
						  </div>

					  </div>

                  </div>
				  
				  <div class="row">
					<div class="col-sm-12 col-lg-4">
					  <div class="card">
						<div class="card-header form-group">
                            <input id="jsCheckAll" class="jsCheckAll" type="checkbox" value="">
							<strong> User permissions</strong>
						</div>
						  <div class="card-body">
							<div class="form-group row">
								<div class="col-md-9 col-form-label">
									<div class="form-check checkbox">
									<input class="form-check-input" id="check1" type="checkbox" value="">
									<label class="form-check-label" for="check1">Can view user</label>
									</div>
									<div class="form-check checkbox">
									<input class="form-check-input" id="check3" type="checkbox" value="">
									<label class="form-check-label" for="check3">Can create user</label>
									</div>
									<div class="form-check checkbox">
									<input class="form-check-input" id="check2" type="checkbox" value="">
									<label class="form-check-label" for="check2">Can edit user</label>
									</div>
									<div class="form-check checkbox">
									<input class="form-check-input" id="check3" type="checkbox" value="">
									<label class="form-check-label" for="check3">Can delete user</label>
									</div>
								</div>
							</div>
							</div>
						
					  </div>

					</div>         
                    
					<div class="col-sm-12 col-lg-4">
						  <div class="card">
							<div class="card-header form-group">
                                <input id="jsCheckAll" class="jsCheckAll" type="checkbox" value="">
								<strong> Channel permissions</strong>
							</div>
							  <div class="card-body">
								<div class="form-group row">
									<div class="col-md-9 col-form-label">
										<div class="form-check checkbox">
										<input class="form-check-input" id="check1" type="checkbox" value="">
										<label class="form-check-label" for="check1">Can view channel</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check3" type="checkbox" value="">
										<label class="form-check-label" for="check3">Can create channel</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check2" type="checkbox" value="">
										<label class="form-check-label" for="check2">Can edit channel</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check3" type="checkbox" value="">
										<label class="form-check-label" for="check3">Can delete channel</label>
										</div>
									</div>
								</div>
								</div>
							
						  </div>

					  </div>
					  
					  <div class="col-sm-12 col-lg-4">
						  <div class="card">
							<div class="card-header form-group">
                                <input id="jsCheckAll" class="jsCheckAll" type="checkbox" value="">
								<strong> Region permissions</strong>
							</div>
							  <div class="card-body">
								<div class="form-group row">
									<div class="col-md-9 col-form-label">
										<div class="form-check checkbox">
										<input class="form-check-input" id="check1" type="checkbox" value="">
										<label class="form-check-label" for="check1">Can view region</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check3" type="checkbox" value="">
										<label class="form-check-label" for="check3">Can create region</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check2" type="checkbox" value="">
										<label class="form-check-label" for="check2">Can edit region</label>
										</div>
										<div class="form-check checkbox">
										<input class="form-check-input" id="check3" type="checkbox" value="">
										<label class="form-check-label" for="check3">Can delete region</label>
										</div>
									</div>
								</div>
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
      <aside class="aside-menu">
        <ul class="nav nav-tabs" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#timeline" role="tab">
              <i class="icon-list"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#messages" role="tab">
              <i class="icon-speech"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#settings" role="tab">
              <i class="icon-settings"></i>
            </a>
          </li>
        </ul>
        <!-- Tab panes-->
        <div class="tab-content">
          <div class="tab-pane active" id="timeline" role="tabpanel">
            <div class="list-group list-group-accent">
              <div class="list-group-item list-group-item-accent-secondary bg-light text-center font-weight-bold text-muted text-uppercase small">Today</div>
              <div class="list-group-item list-group-item-accent-warning list-group-item-divider">
                <div class="avatar float-right">
                  <img class="img-avatar" src="img/avatars/7.jpg" alt="admin@bootstrapmaster.com">
                </div>
                <div>Meeting with
                  <strong>Lucas</strong>
                </div>
                <small class="text-muted mr-3">
                  <i class="icon-calendar"></i>  1 - 3pm</small>
                <small class="text-muted">
                  <i class="icon-location-pin"></i>  Palo Alto, CA</small>
              </div>
              <div class="list-group-item list-group-item-accent-info">
                <div class="avatar float-right">
                  <img class="img-avatar" src="img/avatars/4.jpg" alt="admin@bootstrapmaster.com">
                </div>
                <div>Skype with
                  <strong>Megan</strong>
                </div>
                <small class="text-muted mr-3">
                  <i class="icon-calendar"></i>  4 - 5pm</small>
                <small class="text-muted">
                  <i class="icon-social-skype"></i>  On-line</small>
              </div>
              <div class="list-group-item list-group-item-accent-secondary bg-light text-center font-weight-bold text-muted text-uppercase small">Tomorrow</div>
              <div class="list-group-item list-group-item-accent-danger list-group-item-divider">
                <div>New UI Project -
                  <strong>deadline</strong>
                </div>
                <small class="text-muted mr-3">
                  <i class="icon-calendar"></i>  10 - 11pm</small>
                <small class="text-muted">
                  <i class="icon-home"></i>  creativeLabs HQ</small>
                <div class="avatars-stack mt-2">
                  <div class="avatar avatar-xs">
                    <img class="img-avatar" src="img/avatars/2.jpg" alt="admin@bootstrapmaster.com">
                  </div>
                  <div class="avatar avatar-xs">
                    <img class="img-avatar" src="img/avatars/3.jpg" alt="admin@bootstrapmaster.com">
                  </div>
                  <div class="avatar avatar-xs">
                    <img class="img-avatar" src="img/avatars/4.jpg" alt="admin@bootstrapmaster.com">
                  </div>
                  <div class="avatar avatar-xs">
                    <img class="img-avatar" src="img/avatars/5.jpg" alt="admin@bootstrapmaster.com">
                  </div>
                  <div class="avatar avatar-xs">
                    <img class="img-avatar" src="img/avatars/6.jpg" alt="admin@bootstrapmaster.com">
                  </div>
                </div>
              </div>
              <div class="list-group-item list-group-item-accent-success list-group-item-divider">
                <div>
                  <strong>#10 Startups.Garden</strong> Meetup</div>
                <small class="text-muted mr-3">
                  <i class="icon-calendar"></i>  1 - 3pm</small>
                <small class="text-muted">
                  <i class="icon-location-pin"></i>  Palo Alto, CA</small>
              </div>
              <div class="list-group-item list-group-item-accent-primary list-group-item-divider">
                <div>
                  <strong>Team meeting</strong>
                </div>
                <small class="text-muted mr-3">
                  <i class="icon-calendar"></i>  4 - 6pm</small>
                <small class="text-muted">
                  <i class="icon-home"></i>  creativeLabs HQ</small>
                <div class="avatars-stack mt-2">
                  <div class="avatar avatar-xs">
                    <img class="img-avatar" src="img/avatars/2.jpg" alt="admin@bootstrapmaster.com">
                  </div>
                  <div class="avatar avatar-xs">
                    <img class="img-avatar" src="img/avatars/3.jpg" alt="admin@bootstrapmaster.com">
                  </div>
                  <div class="avatar avatar-xs">
                    <img class="img-avatar" src="img/avatars/4.jpg" alt="admin@bootstrapmaster.com">
                  </div>
                  <div class="avatar avatar-xs">
                    <img class="img-avatar" src="img/avatars/5.jpg" alt="admin@bootstrapmaster.com">
                  </div>
                  <div class="avatar avatar-xs">
                    <img class="img-avatar" src="img/avatars/6.jpg" alt="admin@bootstrapmaster.com">
                  </div>
                  <div class="avatar avatar-xs">
                    <img class="img-avatar" src="img/avatars/7.jpg" alt="admin@bootstrapmaster.com">
                  </div>
                  <div class="avatar avatar-xs">
                    <img class="img-avatar" src="img/avatars/8.jpg" alt="admin@bootstrapmaster.com">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="tab-pane p-3" id="messages" role="tabpanel">
            <div class="message">
              <div class="py-3 pb-5 mr-3 float-left">
                <div class="avatar">
                  <img class="img-avatar" src="img/avatars/7.jpg" alt="admin@bootstrapmaster.com">
                  <span class="avatar-status badge-success"></span>
                </div>
              </div>
              <div>
                <small class="text-muted">Lukasz Holeczek</small>
                <small class="text-muted float-right mt-1">1:52 PM</small>
              </div>
              <div class="text-truncate font-weight-bold">Lorem ipsum dolor sit amet</div>
              <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
            </div>
            <hr>
            <div class="message">
              <div class="py-3 pb-5 mr-3 float-left">
                <div class="avatar">
                  <img class="img-avatar" src="img/avatars/7.jpg" alt="admin@bootstrapmaster.com">
                  <span class="avatar-status badge-success"></span>
                </div>
              </div>
              <div>
                <small class="text-muted">Lukasz Holeczek</small>
                <small class="text-muted float-right mt-1">1:52 PM</small>
              </div>
              <div class="text-truncate font-weight-bold">Lorem ipsum dolor sit amet</div>
              <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
            </div>
            <hr>
            <div class="message">
              <div class="py-3 pb-5 mr-3 float-left">
                <div class="avatar">
                  <img class="img-avatar" src="img/avatars/7.jpg" alt="admin@bootstrapmaster.com">
                  <span class="avatar-status badge-success"></span>
                </div>
              </div>
              <div>
                <small class="text-muted">Lukasz Holeczek</small>
                <small class="text-muted float-right mt-1">1:52 PM</small>
              </div>
              <div class="text-truncate font-weight-bold">Lorem ipsum dolor sit amet</div>
              <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
            </div>
            <hr>
            <div class="message">
              <div class="py-3 pb-5 mr-3 float-left">
                <div class="avatar">
                  <img class="img-avatar" src="img/avatars/7.jpg" alt="admin@bootstrapmaster.com">
                  <span class="avatar-status badge-success"></span>
                </div>
              </div>
              <div>
                <small class="text-muted">Lukasz Holeczek</small>
                <small class="text-muted float-right mt-1">1:52 PM</small>
              </div>
              <div class="text-truncate font-weight-bold">Lorem ipsum dolor sit amet</div>
              <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
            </div>
            <hr>
            <div class="message">
              <div class="py-3 pb-5 mr-3 float-left">
                <div class="avatar">
                  <img class="img-avatar" src="img/avatars/7.jpg" alt="admin@bootstrapmaster.com">
                  <span class="avatar-status badge-success"></span>
                </div>
              </div>
              <div>
                <small class="text-muted">Lukasz Holeczek</small>
                <small class="text-muted float-right mt-1">1:52 PM</small>
              </div>
              <div class="text-truncate font-weight-bold">Lorem ipsum dolor sit amet</div>
              <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</small>
            </div>
          </div>
          <div class="tab-pane p-3" id="settings" role="tabpanel">
            <h6>Settings</h6>
            <div class="aside-options">
              <div class="clearfix mt-4">
                <small>
                  <b>Option 1</b>
                </small>
                <label class="switch switch-label switch-pill switch-success switch-sm float-right">
                  <input class="switch-input" type="checkbox" checked="">
                  <span class="switch-slider" data-checked="On" data-unchecked="Off"></span>
                </label>
              </div>
              <div>
                <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</small>
              </div>
            </div>
            <div class="aside-options">
              <div class="clearfix mt-3">
                <small>
                  <b>Option 2</b>
                </small>
                <label class="switch switch-label switch-pill switch-success switch-sm float-right">
                  <input class="switch-input" type="checkbox">
                  <span class="switch-slider" data-checked="On" data-unchecked="Off"></span>
                </label>
              </div>
              <div>
                <small class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</small>
              </div>
            </div>
            <div class="aside-options">
              <div class="clearfix mt-3">
                <small>
                  <b>Option 3</b>
                </small>
                <label class="switch switch-label switch-pill switch-success switch-sm float-right">
                  <input class="switch-input" type="checkbox">
                  <span class="switch-slider" data-checked="On" data-unchecked="Off"></span>
                </label>
              </div>
            </div>
            <div class="aside-options">
              <div class="clearfix mt-3">
                <small>
                  <b>Option 4</b>
                </small>
                <label class="switch switch-label switch-pill switch-success switch-sm float-right">
                  <input class="switch-input" type="checkbox" checked="">
                  <span class="switch-slider" data-checked="On" data-unchecked="Off"></span>
                </label>
              </div>
            </div>
            <hr>
            <h6>System Utilization</h6>
            <div class="text-uppercase mb-1 mt-4">
              <small>
                <b>CPU Usage</b>
              </small>
            </div>
            <div class="progress progress-xs">
              <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <small class="text-muted">348 Processes. 1/4 Cores.</small>
            <div class="text-uppercase mb-1 mt-2">
              <small>
                <b>Memory Usage</b>
              </small>
            </div>
            <div class="progress progress-xs">
              <div class="progress-bar bg-warning" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <small class="text-muted">11444GB/16384MB</small>
            <div class="text-uppercase mb-1 mt-2">
              <small>
                <b>SSD 1 Usage</b>
              </small>
            </div>
            <div class="progress progress-xs">
              <div class="progress-bar bg-danger" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <small class="text-muted">243GB/256GB</small>
            <div class="text-uppercase mb-1 mt-2">
              <small>
                <b>SSD 2 Usage</b>
              </small>
            </div>
            <div class="progress progress-xs">
              <div class="progress-bar bg-success" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
            <small class="text-muted">25GB/256GB</small>
          </div>
        </div>
      </aside>
    </div>
    

 <!-- Start Add Roles Form -->
 	<div class="modal fade" id="addRoleDetailsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-primary" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Add Role</h4>
                  <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                  </button>
                </div>
                <div class="modal-body">
                <div class="card-body">
                    <form action="" method="post">
                      <div class="form-group">
                        <label for="role-name">Role Name</label>
                        <input class="form-control" id="role-name" type="text" name="role-name" placeholder="Enter Role Name..">
                       
                      </div>
                      <div class="form-group">
                        <label for="role-description">Role Description</label>
                        <input class="form-control" id="role-description" type="text" name="role-description" placeholder="Enter Role Description..">
                       
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
 <!-- End Add Roles Form -->


  <!-- Edit Add Roles Form -->
 <div class="modal fade" id="editRoleDetailsModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-primary" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h4 class="modal-title">Edit Role</h4>
                  <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                  </button>
                </div>
                <div class="modal-body">
                <div class="card-body">
                    <form action="" method="post">
                      <div class="form-group">
                        <label for="role-name">Role Name</label>
                        <input class="form-control" id="role-name" type="text" name="role-name" placeholder="Enter Role Name..">
                      </div>
                      <div class="form-group">
                        <label for="role-description">Role Description</label>
                        <input class="form-control" id="role-description" type="text" name="role-description" placeholder="Enter Role Description..">
                       
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
  <!-- End Edit Roles Form -->

<!-- Start Top header View -->
<jsp:include page="includes/footer.jsp" />
<!-- End Top Header View -->
<script type="text/javascript">

$(document).ready(function() {

    $('#datatables').DataTable();

    });

</script>

<script>
	$(document).ready(function () {
		$('input[type="checkbox"].jsCheckAll').change(function () {
			let child_checkbox = $(this).parents('.form-group').siblings().find('input[type="checkbox"]');
			if ($(this).is(":checked")) {
				child_checkbox.prop('checked', true);
				child_checkbox.on('change', function () {
					let child_checkbox_checked = child_checkbox.is(":checked");
					if (child_checkbox_checked !== false) {
						$(this).parents('.form-group').siblings().find('input[type="checkbox"].jsCheckAll').prop('checked', false);
					}
				})
			} else {
				child_checkbox.prop('checked', false);
			}
		});
	});
</script>

  </body>
</html>
