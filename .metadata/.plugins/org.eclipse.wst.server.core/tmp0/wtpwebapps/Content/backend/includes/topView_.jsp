<%
response.setHeader("Cache-control", "no-cache");
response.setHeader("Cache-control", "no-store");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expire",0);

%>


<h3><b>TCRA CONTENT MONITORING SYSTEM</b></h3>&nbsp;&nbsp;
      <a href="index.jsp"><img width="69" height="40" src="img/tz-animate.gif" border="0" alt="NATIONAL Logo"/></a>
  
      <ul class="nav navbar-nav ml-auto">
        <li class="nav-item d-md-down-none">
          <h5 style="padding-top:13px;">  Welcome, 
          <strong><em><% out.print(session.getAttribute("fullName")); %></em></strong>
			<input id="userID" name="userID" type="hidden" value ="<% out.print(session.getAttribute("userID")); %>">
			<input id="_username" name="_username" type="hidden" value ="<% out.print(session.getAttribute("fullName")); %>">
          
           </h5>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
            <img class="img-avatar" src="img/tcms-user.jpg" alt="tcms-user">
          </a>
          <div class="dropdown-menu dropdown-menu-right">
            <div class="dropdown-header text-center">
              <strong>Account</strong>
            </div>
            <a class="dropdown-item" href="change-password.jsp">
              <i class="fa fa-wrench"></i> Change Password
            </a>
            <a class="dropdown-item" href="logout.jsp">
              <i class="fa fa-lock"></i> Logout</a>          
          </div>
        </li>
      </ul>
      <button class="navbar-toggler aside-menu-toggler d-md-down-none" type="button" data-toggle="aside-menu-lg-show">
        <span class="navbar-toggler-icon"></span>
      </button>
      <button class="navbar-toggler aside-menu-toggler d-lg-none" type="button" data-toggle="aside-menu-show">
        <span class="navbar-toggler-icon"></span>
      </button>
    </header>
    
