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
            <a href="programLineup.jsp">Program Line up</a>
          </li>   
        </ol>        
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-xl-12">
                <div class="card">
                  <div class="card-header">
                    <i class="fa fa-align-justify"></i> Program Line up for all Channels             
                  </div>

                  <div class="card-body" style="padding-bottom:0px; margin-bottom:0px;">                  
                     <!-- Start Search for the content --> 
                                        
                    <form class="form-horizontal"  action="" method="post" style="padding:0px; margin:0px;">	
	      			  <div class="form-group row">
	      			  			      					      			  			      			  
			      			   <div class="form-group col-sm-12">
			      			   
				      			   <div class="form-group row">
				      			   
				      			    <div class="form-group col-sm-3">
				      			        <label for="content"><strong>Content Type</strong></label>
			      			  				<select class="form-control" id="content">
					                          <option value="">-- Content -- </option>
					                          <option value="Television">Television</option>
					                          <option value="Audio">Audio</option>
					                         
					                        </select>
			      			            </div>
				      			   
				      			        <div class="form-group col-sm-3">
				      			        <label for="source"><strong>Channel/Station</strong></label>
			      			  				<select class="form-control" id="source">
					                          <option value="">-- Channel -- </option>
					                          <option value="ITV">ITV</option>
					                          <option value="EFM">EFM</option>
					                          <option value="WASAFI TV">WASAFI TV</option>
					                        </select>
			      			            </div>
			      			            
			      			            <div class="form-group col-sm-3">
			      			  			<label for="date"><strong>Date</strong></label>
			      			  			<input class="form-control" id="inputDate" type="date" name="inputDate">  
			      			            </div>

			      			            <div class="form-group col-sm-3">
			      			            	<br>			      			         
				      			            <button class="btn btn-sm btn-primary" type="submit">
                      						<i class="fa fa-dot-circle-o"></i> Search 
                      						</button>
                      						<button class="btn btn-sm btn-success" type="submit">
                      						<i class="fa fa-file"></i> CSV </button>
			      			            </div>
			      			          
			      			         
				      			   
				      			   </div>
				      			   
				      			   </div>
			      			  			      			   
			      			   </div>
	      			  
	      			  </div>
                    </form>
                    
                    <div class="col-sm-12 col-xl-12">
                    <!-- Start Table -->
                    <h6> <strong><center>PROGRAM LINE UP SEARCH </center></strong></h6>
                    <table class="table table-responsive-sm table-bordered table-striped table-sm">
                      <thead>
                        <tr>
                          <th>CHANNEL/STATION</th>
                          <th>DATE</th>
                          <th>PROGRAM</th>
                          <th>DURATION</th>                       
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>ITV</td>
                          <td>2012/01/01</td>
                          <td>Habari</td>
                          <td>2:00 - 3:30</td>
                        </tr>
                                            
                        <tr>
                           <td>	EFM</td>
                          <td>2012/01/01</td>
                          <td>Sport</td>
                          <td>3:00 - 3:30</td>
                        </tr>
                      </tbody>
                    </table>
                    
                    </div>
                    
                    
                    <!-- End Table -->
                   
                    
                    </div> <!-- End Div card-body -->

                    <!-- Start DIV for video/audio player --> 
                        
                    <div id='search_player'>

                    
                    </div>


                    <!-- End DIV for video/audio player --> 


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

  </body>
</html>
