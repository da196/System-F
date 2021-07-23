<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.csp.*" %> 
<%@ page import="org.apache.commons.codec.digest.*" %>

<%

try {

	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	if(!email.equals("") && !password.equals("")){
		
		if(email.contains(";")){
			 response.sendRedirect("index.jsp?id=1");
		}else{

			if (session.getAttribute("cn") == null && session.getAttribute("timer") == null){
				session.setAttribute("cn", "1");
				session.setAttribute("timer", "0");
			}
		
			long timerDifferent =  System.currentTimeMillis()/1000 - Long.parseLong(session.getAttribute("timer").toString());
			
			if (Integer.parseInt(session.getAttribute("cn").toString()) <= 3 && timerDifferent >= 60){

				List<String> loggedIn = Login.login(email, password);
				
				
				if (loggedIn.size() == 0){
					 out.print("username or password is incorrect!");
					 response.sendRedirect("index.jsp?id=1");
					 session.setAttribute("cn", Integer.toString(Integer.parseInt(session.getAttribute("cn").toString()) + 1));
					
				}else{
					session.setAttribute("cn", null);
			        session.setAttribute("timer", null);
			        
			        session.setAttribute("channelID", loggedIn.get(0));
					session.setAttribute("channel_name", loggedIn.get(1));
					session.setAttribute("company_name", loggedIn.get(2));
					session.setAttribute("user_id", loggedIn.get(3));
					session.setAttribute("company_address", loggedIn.get(4));
					session.setAttribute("contact_person", loggedIn.get(5));
					session.setAttribute("mobile_phone", loggedIn.get(6));
					session.setAttribute("email", loggedIn.get(7));
					response.sendRedirect("csp-dashboard.jsp");
	        
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
	
}
%>