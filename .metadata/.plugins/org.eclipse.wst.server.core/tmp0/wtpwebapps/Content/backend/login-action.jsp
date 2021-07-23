<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.configuration.*" %> 
<%@ page import="org.apache.commons.codec.digest.*" %>

<%

/*
		role id description
		1. TAU
		2. ADMIN
		3. ACCOUNT
		4. SIGNATORY
		5. TAU MANAGER
		6. TAU SIGNATORY MANAGER

*/


try{

	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
if(!username.equals("") && !password.equals("")){
	
	if(username.contains(";")){
		 response.sendRedirect("index.jsp?id=1");
	}else{

		if (session.getAttribute("cn") == null && session.getAttribute("timer") == null){
			session.setAttribute("cn", "1");
			session.setAttribute("timer", "0");
		}
	
		long timerDifferent =  System.currentTimeMillis()/1000 - Long.parseLong(session.getAttribute("timer").toString());
		
			
		if (Integer.parseInt(session.getAttribute("cn").toString()) <= 3 && timerDifferent >= 60){

			List<String> staffList = StaffAccount.login(username, password);
			boolean isAuthentication = LDAPAuthentication.isAdAuthenticated(username, password);
			
			if (isAuthentication == true){
				if (staffList.size() == 0){
					 out.print("username or password is incorrect!");
					 response.sendRedirect("index.jsp?id=1");
					 session.setAttribute("cn", Integer.toString(Integer.parseInt(session.getAttribute("cn").toString()) + 1));
					
				}else{
					session.setAttribute("cn", null);
			        session.setAttribute("timer", null);
			        System.out.println(staffList.get(4));
			        session.setAttribute("userID", staffList.get(0));
					session.setAttribute("fullName", staffList.get(1).toUpperCase() + " " +staffList.get(2).toUpperCase()  + " " +staffList.get(3).toUpperCase());
					session.setAttribute("roleID", staffList.get(4));
					session.setAttribute("roleDescription", staffList.get(5));
					session.setAttribute("email", staffList.get(6));
					session.setAttribute("username", username);
					
					if(staffList.get(4).equals("3")){
						response.sendRedirect("dashboard.jsp");
					}else {
						System.out.println("TEST");
						response.sendRedirect("index.jsp");
					}  
			        
				}
		 }else{
			 out.print("username or password is incorrect!");
			 response.sendRedirect("index.jsp?id=1");
			 session.setAttribute("cn", Integer.toString(Integer.parseInt(session.getAttribute("cn").toString()) + 1));
		 }
	
		}else{
			response.sendRedirect("index.jsp?id=2");
			out.print("You have attempt 3 times, please wait after 1 hour system will resume again!!");
			session.setAttribute("timer", Long.toString(System.currentTimeMillis()/1000));
			session.setAttribute("cn", "1");
		
		}
	}
}else{
	 response.sendRedirect("index.jsp");

}
}
catch(Exception er){
	er.printStackTrace();
	 response.sendRedirect("index.jsp");
}
%>