
<%@ page import="tcms.presentation.*" %>
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
            Report
          </li>
          <li class="breadcrumb-item">
          <a href="reportHighChart.jsp">Graphical</a>
          </li>       
        </ol>
        
        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="card-columns cols-2">
              <div class="card">
                <div class="card-header"><strong>Local Index Card</strong>
                  <div class="card-header-actions">
                  

                                                  
                    
                  </div>
                </div>
                <div class="card-body">
                <form class="form-inline">
                <div class="form-group">
                 <label for="source"><strong>Event National Interest</strong></label> &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
	                          <select class="form-control" id="eventNationalInterest">
							     <option value="Sports">Sports</option>
						         <option value="Political">Political</option>
						         <option value="Government">Government</option>
						         <option value="Social">Social</option>
						       </select>
                </div>
               &nbsp; &nbsp;
                 <div class="form-group">
                 <label for="source"><strong>Producer Status</strong></label>&nbsp; &nbsp;
	                          <select class="form-control" id="producerStatus">
							    <option value="In-house">In-house</option>
						        <option value="Independent">Independent</option>					                
						      </select>
                 </div>
</form>

                  <div class="chart-wrapper">
                    <div id="canvas-1">
  
                    </div>
                   
                  </div>
                </div>
              </div>
              <div class="card">
                <div class="card-header"><strong>News Index Card</strong> - <em>NEWS STANDARD</em>
                  <div class="card-header-actions">
                  
                     <div class="form-group row" style="margin-left:-300px; margin-top:-5px;"> 
					                  		                       
	                        <div class="col-md-8">
	                          <select class="form-control" id="eventNationalInterest">
							      <option value="Political">Political</option>
					              <option value="Social">Social</option>
					              <option value="Economic">Economic</option>
					              <option value="Technology">Technology</option>
					              <option value="Development">Development</option>
						       </select>
	                        </div>
	                        
	                       <!--        <div class="col-md-2">
	                           <button class="btn btn-sm btn-primary" type="submit">
                      			 Search</button>
                            </div>
                            --> 
                        
                      </div>
                  </div>
                </div>
                <div class="card-body">
                  <div class="chart-wrapper">
                    <div id="canvas-2"></div>
                  </div>
                </div>
              </div>
          
              <div class="card">
                <div class="card-header"><strong>Election Index Card</strong>
                  <div class="card-header-actions">
                     	 <div class="form-group row" style="margin-left:-450px;  margin-top:-5px;">
                  	 
	                       
	                        <div class="col-md-4">
	                          <select class="form-control" id="eventNationalInterest">
							      <option value="CCM">CCM</option>
						          <option value="CHADEMA">CHADEMA</option>
						          <option value="CUF">CUF</option>
						          <option value="ACT">ACT</option>
						          <option value="TLP">TLP</option>
						          <option value="TADEA">TADEA</option>
						       </select>
	                        </div>
	                        
	                         <!--        <div class="col-md-2">
	                           <button class="btn btn-sm btn-primary" type="submit">
                      			 Search</button>
                            </div>
                            --> 
                                              
                      </div>
                  </div>
                </div>
                <div class="card-body">
                  <div class="chart-wrapper">
                    <div id="canvas-4"></div>
                  </div>
                </div>
              </div>
              <div class="card">
                 <div class="card-header"><strong>News Index Card</strong> - <em>SPONSORSHIP</em>
                  <div class="card-header-actions">
                     <div class="form-group row" style="margin-left:-300px; margin-top:-5px;"> 
					                  		                       
	                        <div class="col-md-8">
	                          <select class="form-control" id="eventNationalInterest">
							      <option value="Political">Political</option>
					              <option value="Social">Social</option>
					              <option value="Economic">Economic</option>
					              <option value="Technology">Technology</option>
					              <option value="Development">Development</option>
						       </select>
	                        </div>
	                        
	                       <!--        <div class="col-md-2">
	                           <button class="btn btn-sm btn-primary" type="submit">
                      			 Search</button>
                            </div>
                            --> 
                        
                      </div>
                  </div>
                </div>
                <div class="card-body">
                  <div class="chart-wrapper">
                    <div id="canvas-5"></div>
                  </div>
                </div>
              </div>
             
            </div>
          </div>
        </div>
      </main>
           
    </div>
 
<!-- Start Aside View -->
<jsp:include page="includes/asideMenuView.jsp" />
<!-- End Aside View --> 
    
<!-- Start Footer View -->
<jsp:include page="includes/footer.jsp" />
<!-- End Footer View -->


	
</body>
</html>
