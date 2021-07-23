<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.csp.*" %> 
<%@ page import="org.apache.commons.codec.digest.*" %>
<%@ page import="java.io.PrintWriter" %>

<%
		String applicationID = request.getParameter("applicationID");
	    String reason = request.getParameter("reason");
		String userID = request.getParameter("userID");
		String day = request.getParameter("day");
		
		String msgSubject = "CSP Program Line Up Rejected"; 
		String msgHeader= "Dear Sir/ Madam.";
		String msgBody = "Your Program Line Up for " + day + " is Rejected. <br> Reason: "+ reason +"<br> Click below button to Login."; 
		String link = "http://10.200.221.15:8080/TCMS/";
		String msgBodyEnd ="Regards.<br>TCRA";
		
		long status  = ProgramManipulator.rejectProgramLineUp(applicationID, reason, userID, link, msgSubject, msgHeader, msgBody, msgBodyEnd);
		 System.out.println(status);
		if(status > 0) {
			 PrintWriter printWriter = response.getWriter();
			 printWriter.print("{\"status\":1}");
		}else{
			PrintWriter printWriter = response.getWriter();
			 printWriter.print("{\"status\":2}");
		}

%>










