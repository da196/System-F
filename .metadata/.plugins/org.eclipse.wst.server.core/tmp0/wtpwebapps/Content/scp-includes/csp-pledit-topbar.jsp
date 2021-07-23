<script type="text/javascript" src="js/registration-js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
function getDay(){
	
	var day = document.getElementById('day').value;
	document.getElementById('dayText').value = day;
	document.getElementById("overlay").style.display = "block";
	
	$.ajax({ 
	     type: "post",
	      url: "get-programs-edit.jsp", //this is my servlet
	       data: {
			  day: day
	           }, 
	          success: function(msg){ 
	          document.getElementById("overlay").style.display = "none";
	          $('#outputProgram').html("");		  
	          $('#outputProgram').append(msg);
	        }
	   });
}
</script>

<style>
#overlay {
    position: fixed;
    display: none;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    
    z-index: 2;
    cursor: pointer;
	background: url('images/loading.gif') 50% 50% no-repeat rgb(0,0,0,0.5);
}
</style>

<!-- Topbar -->
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

<!-- Sidebar Toggle (Topbar) -->
<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
  <i class="fa fa-bars"></i>
</button>

<div class="dropdown">
    
    <select class="form-control rounded-pill" id="day" onChange="getDay();">
		<option class="dropdown-item" >Select day...</option>
		<option class="dropdown-item" value="Monday">Monday</option>
		<option class="dropdown-item" value="Tuesday">Tuesday</option>
		<option class="dropdown-item" value="Wednesday">Wednesday</option>
		<option class="dropdown-item" value="Thursday">Thursday</option>
		<option class="dropdown-item" value="Friday">Friday</option>
		<option class="dropdown-item" value="Saturday">Saturday</option>
		<option class="dropdown-item" value="Sunday">Sunday</option>
	</select>
</div>
<!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div>2019 Q2, New PL</div> -->

<!-- Topbar Navbar -->
<ul class="navbar-nav ml-auto">

  <!-- Nav Item - User Information -->
  <li class="nav-item dropdown no-arrow">
    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <span class="mr-2 d-none d-lg-inline text-gray-600 small">user@mail.com</span>
      <span class="rounded-circle my-5 text-gray-400"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i></span>
    </a>
    <!-- Dropdown - User Information -->
    <div id="overlay" class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
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
<input type="hidden" id="dayText" />
</nav>
<!-- End of Topbar -->