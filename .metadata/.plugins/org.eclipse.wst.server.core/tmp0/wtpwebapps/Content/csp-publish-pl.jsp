<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Vector" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="tcms.csp.*" %> 
<%@ page import="tcms.configuration.*" %> 
<%@ page import="org.apache.commons.codec.digest.*" %>
<%@ page import="java.io.PrintWriter" %>

<%
	String channelID = request.getParameter("channelID");
	String day = request.getParameter("day");
	String entryDate = request.getParameter("entryDate");
	String reason = request.getParameter("reason");
	 
	List<Program> program = ProgramManipulator.getProgramsImplementation(channelID, day, entryDate);
	
	String channelName = Channels.getChannelName(channelID);
	
	String msgSubject = "CSP Program Line Up waiting for Approval"; 
	String msgHeader= "Dear Sir/ Madam.";
	String msgBody = channelName + " Sucessfully publish the program line up for "+ day +" Waiting for Approval. Click below button to Login."; 
	String link = "http://10.200.221.15:8080/TCMS/backend";
	String msgBodyEnd ="Regards.<br>TCRA";
	
	 //Program program = new Program(1, programName, start, end, "", "", objective, audience, expectation, "1", day, Integer.parseInt(session.getAttribute("channelID").toString()));
	 int status = ProgramManipulator.setPublishProgramLineUp(program, day, channelID, reason, link, msgSubject, msgHeader, msgBody, msgBodyEnd);
			 //tcms.csp.Registration.registerProgram(program, "program_lineup_tmp");
	 
			 
	if(status > 0) {
		 PrintWriter printWriter = response.getWriter();
		 printWriter.print("{\"status\":1}");
		 
		 	
	}else{
		PrintWriter printWriter = response.getWriter();
		 printWriter.print("{\"status\":2}");
		 
	}
     

%>










